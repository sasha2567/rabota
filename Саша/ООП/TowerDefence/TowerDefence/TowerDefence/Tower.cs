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
        private int _hitPoint;
        public List<Weapon> _weapons;
        public int _attacRange;
        public int _cost;
        public int _upgrateCost;
        public Level _level;

        private Texture2D _arrowTexture;
        private Modificator _modificator;
        private int _modificatorTime;

        public Tower(Vector2 position, Texture2D texture, Direction rotation, int hitPoint, int distance, int cost, int upgrateCost)
            : base(position, texture, rotation)
        {
            _hitPoint = hitPoint;
            _attacRange = distance;
            _cost = cost;
            _upgrateCost = upgrateCost;
            _level = Level.One;
            _weapons = new List<Weapon>();
        }

        public void Update()
        {
            base.Update();
            foreach (var weapon in _weapons.ToList())
            {
                weapon.Update();
                if (weapon.GetHit())
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


        public void Shoot(int damage, Enemy enemy, int velosity)
        {
            if (CheckRange(enemy))
            {
                _weapons.Add(new Weapon(_position, _arrowTexture, _direction, velosity, damage));
                _weapons[_weapons.Count - 1].SetEnemy(enemy);
                _weapons[_weapons.Count - 1].SetModificator(_modificator, _modificatorTime);
            }
        }

        public List<Enemy> GetTargets(List<Enemy> enemys)
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
                arrow._damage += arrow._damage / 2;
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
