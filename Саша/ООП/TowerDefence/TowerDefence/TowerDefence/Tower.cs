using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    class Tower : Unit
    {
        private List<Weapon> _weapons;
        private int _weaponDamage;
        private int _weaponSpeed;
        private int _weaponAtackSpeed;
        private int _attacRange;
        private int _upgrateCost;
        private Level _level;

        private Texture2D _arrowTexture;
        private Modificator _modificator;
        private int _modificatorTime;
        private TowerState _towerState;

        public Tower(Vector2 position, Texture2D texture, Direction direction, Modificator modificator)
            : base(position, texture, direction)
        {
            _modificator = modificator;
            switch (_modificator)
            {
                case Modificator.Poison:
                    _attacRange = Game1.poisonTowerRange;
                    _upgrateCost = Game1.poisonTowerCost;
                    _weaponDamage = Game1.poisonTowerDamage;
                    _weaponSpeed = Game1.poisonTowerShellSpeed;
                    _weaponAtackSpeed = Game1.poisonTowerShellSpeed;
                    _arrowTexture = Game1.weaponTexture[1];
                    break;
                case Modificator.None:
                    _attacRange = Game1.standartTowerRange;
                    _upgrateCost = Game1.standartTowerCost;
                    _weaponDamage = Game1.standartTowerDamage;
                    _weaponSpeed = Game1.standartTowerShellSpeed;
                    _weaponAtackSpeed = Game1.standartTowerShellSpeed;
                    _arrowTexture = Game1.weaponTexture[0];
                    break;
            }
            _level = Level.One;
            _weapons = new List<Weapon>();
            _towerState = TowerState.Buy;
        }

        public Tower(Vector2 position, Texture2D texture, Direction direction)
            : base(position, texture, direction)
        {
            SetAngle(GetAngle());
        }
        

        public void Update()
        {
            base.Update();
            foreach (var weapon in _weapons.ToList())
            {
                weapon.Update();
                if (weapon.GetHit() || weapon.GetEnemy().GetState() == State.Dead)
                {
                    _weapons.Remove(weapon);
                }
            }

        }

        private bool CheckRange(Enemy enemy)
        {
            var distanceX = (int)Math.Abs(_position.X - enemy.GetPosition().X);
            var distanceY = (int)Math.Abs(_position.Y - enemy.GetPosition().Y);
            var distance = Math.Sqrt(distanceX * distanceX + distanceY * distanceY);
            if (distance <= _attacRange)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public void SetArrowTexture(Texture2D arrowTexture, Modificator modificator)
        {
            _arrowTexture = arrowTexture;
            _modificator = modificator;
            _modificatorTime = 10;
        }


        public void Shoot(Enemy enemy)
        {
            if (CheckRange(enemy))
            {
                _weapons.Add(new Weapon(_position, _arrowTexture, Direction.Right, _weaponSpeed, _weaponDamage));
                _weapons[_weapons.Count - 1].SetEnemy(enemy);
                _weapons[_weapons.Count - 1].SetModificator(_modificator, _modificatorTime);
            }
        }

        private List<Enemy> GetTargets(List<Enemy> enemys)
        {
            var result = new List<Enemy>();
            foreach (var enemy in enemys.ToList())
            {
                var point = (int)Math.Sqrt(enemy.GetPosition().X * enemy.GetPosition().X + enemy.GetPosition().Y * enemy.GetPosition().Y);
                if (point <= _attacRange)
                {
                    result.Add(enemy);   
                }
            }
            return result;
        }

        public int GetAtackTarget(List<Enemy> enemys)
        {
            if (enemys.Count > 0)
            {
                var enemysList = GetTargets(enemys);
                Random rnd = new Random();
                var index = rnd.Next(enemysList.Count);
                return index;
            }
            else
            {
                return -1;
            }
        }

        public void UpgradeTower()
        {
            _attacRange += _attacRange / 2;
            foreach (var arrow in _weapons.ToList())
            {
                arrow.SetDamage(arrow.GetDamage() + arrow.GetDamage() / 2);
            }
        }

        public void DrawWeapons(SpriteBatch spriteBatch)
        {
            foreach (var arrow in _weapons)
            {
                arrow.Drav(spriteBatch);
            }
        }
    }
}
