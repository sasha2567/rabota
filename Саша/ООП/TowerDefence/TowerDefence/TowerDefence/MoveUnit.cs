using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    class MoveUnit : Unit
    {
        
        protected int _velosity;
        protected State _state;
        
        public MoveUnit(Vector2 position, Texture2D texture, Direction rotation)
            : base(position, texture, rotation)
        {

        }

        public void Update()
        {
            base.Update();
            Move();
        }

        public void Rotate(Direction direction)
        {
            _direction = direction;
        }

        public void SetVelosityVector(int velosity)
        {
            _velosity = velosity;
        }
        
        public void Move()
        {
            float x = _velosity * (float)Math.Cos((double)_angle);
            float y = _velosity * (float)Math.Sin((double)_angle);
            Vector2 velosity = new Vector2(x,y);
            _position += velosity;
        }

        public State GetState()
        {
            return _state;
        }

        public override void Drav(SpriteBatch spritebatch)
        {
            if (_state == State.Live)
            {
                base.Drav(spritebatch);
            }
        }
    }
}
