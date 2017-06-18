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
        public int _hitPoint;
        private Texture2D _arrowTexture;
        public List<Weapon> _arrows;
        public int _distance;
        public int _cost;
        public int _upgrateCost;
        public Level _level;

        public Tower(Vector2 position, Texture2D texture, Direction rotation, int hitPoint, int distance, int cost, int upgrateCost)
            : base(position, texture, rotation)
        {
            _hitPoint = hitPoint;
            _distance = distance;
            _cost = cost;
            _upgrateCost = upgrateCost;
            _level = Level.One;
            _arrows = new List<Weapon>();
        }

        public void Update()
        {
            base.Update();
            foreach (var arrow in _arrows)
            {
                arrow.Update();
            }
        }

        public void SetArrowTexture(Texture2D arrowTexture)
        {
            _arrowTexture = arrowTexture;
        }


        public void Shoot(int damage, Enemy enemy)
        {
            _arrows.Add(new Weapon(_position, _arrowTexture, _rotation, damage));
            _arrows[_arrows.Count - 1].SetEnemy(enemy);
        }

        public List<Enemy> GetTargets(List<Enemy> enemys)
        {
            var result = new List<Enemy>();
            foreach (var enemy in enemys)
            {
                var point = (int)Math.Sqrt(enemy._position.X * enemy._position.X + enemy._position.Y * enemy._position.Y);
                if (point <= _distance)
                {
                    result.Add(enemy);   
                }
            }
            return result;
        }

        public int GetAtackTarget(List<Enemy> enemys)
        {
            var enemysList = GetTargets(enemys);
            Random rnd = new Random();
            var index = rnd.Next(enemysList.Count);
            return index;
        }

        public void UpgradeTower()
        {
            _distance += _distance / 2;
            foreach (var arrow in _arrows)
            {
                arrow._damage += arrow._damage / 2;
            }
        }
    }
}
