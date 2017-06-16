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
        
        public float GetAngle()
        {
            return 0;
            if (_rotation == Direction.Down)
            {
                return -(float)Math.PI / 2;
            }

            if (_rotation == Direction.Up)
            {
                return (float)Math.PI / 2;
            }

            if (_rotation == Direction.Left)
            {
                return (float)Math.PI;
            }

            if (_rotation == Direction.Right)
            {
                return 0;
            }
        }

        public void Move()
        {
            _position += _velosity;
        }

        public void Drav(SpriteBatch spritebatch)
        {
            spritebatch.Draw(_texture, _screenPosition, null, Color.White, GetAngle(), _originalposition, 1.0f, SpriteEffects.None, 0);
        }

        public override void Update(GameTime gametime)
        {
            _screenPosition.X = _position.X - _texture.Width / 2;
            _screenPosition.Y = _position.Y - _texture.Height / 2;
            _rectangle = new Rectangle((int)_screenPosition.X, (int)_screenPosition.Y, _texture.Height, _texture.Width);
            _originalposition = new Vector2(_rectangle.Width / 2, _rectangle.Height / 2);
        }
    }
}
