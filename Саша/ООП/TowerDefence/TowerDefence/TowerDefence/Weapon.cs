using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    class Weapon : MoveUnit
    {
        public int _damage;
        public Enemy _enemy;

        public Weapon(Vector2 position, Texture2D texture, Direction rotation, int damage)
            : base(position, texture, rotation)
        {
            _damage = damage;
        }

        public void SetEnemy(Enemy enemy)
        {
            _enemy = enemy;
        }

        public void GetAngleForArrow()
        {
            var distanceX = (int)Math.Abs(_position.X - _enemy._position.X);
            var distanceY = (int)Math.Abs(_position.Y - _enemy._position.Y);
            var distance = Math.Sqrt(distanceX * distanceX + distanceY * distanceY);
            var angle = (float)Math.Acos(Math.Cos(distanceX / distance));
            if (_position.X > _enemy._position.X)
            {
                if (_position.Y > _enemy._position.Y)
                {
                    _angle = (float)Math.PI - angle;
                }
                else 
                {
                    _angle = (float)Math.PI + angle;
                }
            }
            else
            {
                if (_position.Y > _enemy._position.Y)
                {
                    _angle = angle;
                }
                else
                {
                    _angle = -angle;
                }
            }
        }
    }
}
