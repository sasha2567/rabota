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
        
        private Modificator _modificator;
        private int _modificatorTime;
        private bool _hit = false;

        public Weapon(Vector2 position, Texture2D texture, Direction rotation, int velosity, int damage)
            : base(position, texture, rotation)
        {
            _damage = damage;
            _velosity = velosity;
            _state = State.Live;
        }

        public void Update()
        {
            GetAngleForArrow();
            if (ChechHit())
            {
                _enemy.Hitting(_damage);
                _enemy.SetModificator(_modificator, _modificatorTime);
                _enemy.SetTempVelosity(_enemy.GetVelosity());
                _hit = true;
                _state = State.Dead;
            }
            base.Update();
        }

        private bool ChechHit()
        {
            if (_position.X >= _enemy.GetScreenPosition().X &&
                _position.Y >= _enemy.GetScreenPosition().Y &&
                _position.X <= _enemy.GetScreenPosition().X + _enemy.GetTextureWidth() &&
                _position.Y <= _enemy.GetScreenPosition().Y + _enemy.GetTextureHeight()
            )
            {
                return true;
            }
            else
            {
                return false;
            }

        }

        public bool GetHit()
        {
            return _hit;
        }

        public void SetEnemy(Enemy enemy)
        {
            _enemy = enemy;
        }

        public void SetModificator(Modificator modificator, int modificatorTime)
        {
            _modificator = modificator;
            _modificatorTime = modificatorTime;
        }

        public void GetAngleForArrow()
        {
            var distanceX = (int)Math.Abs(_position.X - _enemy.GetPosition().X);
            var distanceY = (int)Math.Abs(_position.Y - _enemy.GetPosition().Y);
            var distance = Math.Sqrt(distanceX * distanceX + distanceY * distanceY);
            var angle = (float)Math.Acos(Math.Cos(distanceX / distance));
            if (_position.X > _enemy.GetPosition().X)
            {
                if (_position.Y > _enemy.GetPosition().Y)
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
                if (_position.Y > _enemy.GetPosition().Y)
                {
                    _angle = 2 * (float)Math.PI - angle;
                }
                else
                {
                    _angle = angle;
                }
            }
        }
    }
}
