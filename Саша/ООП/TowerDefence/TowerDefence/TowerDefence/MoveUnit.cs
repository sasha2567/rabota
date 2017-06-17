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
        
        public MoveUnit(Vector2 position, Vector2 screenposition, Texture2D texture, Direction rotation, Vector2 velosity)
            : base(position, screenposition, texture, rotation)
        {
            _velosity = velosity;
        }

        public void Rotate(Direction direction)
        {
            _rotation = direction;
        }
        
        public void Move()
        {
            _position += _velosity;
        }

        public override void Update(GameTime gametime)
        {
            _screenPosition.X = _position.X - _texture.Width / 2;
            _screenPosition.Y = _position.Y - _texture.Height / 2;
            _rectangle = new Rectangle((int)_screenPosition.X, (int)_screenPosition.Y, _texture.Height, _texture.Width);
        }
    }
}
