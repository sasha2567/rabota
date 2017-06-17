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
        public List<Arrow> _arrows;
        public int _distance;

        public Tower(Vector2 position, Vector2 screenposition, Texture2D texture, Direction rotation, int hitPoint, int distance)
            : base(position, screenposition, texture, rotation)
        {
            _hitPoint = hitPoint;
            _distance = distance;
        }

        public void Shoot(Vector2 position, Vector2 screenposition, Texture2D texture, Direction rotation, Vector2 velosity, int damage, Enemy enemy)
        {
            _arrows.Add(new Arrow(position,screenposition,texture,rotation,velosity,damage,enemy));
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

        public Enemy GetAtackTarget(List<Enemy> enemys)
        {
            var enemysList = GetTargets(enemys);
            Random rnd = new Random();
            var index = rnd.Next(enemysList.Count);
            return enemysList[index];
        }
    }
}
