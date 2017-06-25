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
        protected int _damage;
        protected Enemy _enemy;
        
        protected Modificator _modificator;
        protected int _modificatorTime;
        protected bool _hit = false;

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
            if (_position.X >= _enemy.GetPosition().X - _enemy.GetHalfTextureWidth() &&
                _position.Y >= _enemy.GetPosition().Y - _enemy.GetHalfTextureHeight()&&
                _position.X <= _enemy.GetPosition().X + _enemy.GetHalfTextureWidth() &&
                _position.Y <= _enemy.GetPosition().Y + _enemy.GetHalfTextureHeight()
            )
            {
                return true;
            }
            else
            {
                return false;
            }

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
            var angle = (float)Math.Acos(distanceX / distance);
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
                    _angle = angle;
                }
                else
                {
                    _angle = - angle;
                }
            }
        }

        public void SetDamage(int damage)
        {
            _damage = damage;
        }

        public int GetDamage()
        {
            return _damage;
        }

        public Enemy GetEnemy()
        {
            return _enemy;
        }

        public bool GetHit()
        {
            return _hit;
        }
    }
}
