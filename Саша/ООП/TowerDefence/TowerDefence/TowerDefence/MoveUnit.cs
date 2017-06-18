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
        
        public Vector2 _velosity;
        
        public MoveUnit(Vector2 position, Texture2D texture, Direction rotation)
            : base(position, texture, rotation)
        {

        }

        public void Rotate(Direction direction)
        {
            _rotation = direction;
        }

        public void SetVelosityVector(Vector2 velosity)
        {
            _velosity = velosity;
        }
        
        public void Move()
        {
            _position += _velosity;
        }

        public void Update()
        {
            base.Update();
            Move();
        }
    }
}
