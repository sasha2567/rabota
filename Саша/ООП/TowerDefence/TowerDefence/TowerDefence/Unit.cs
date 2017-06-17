using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    public enum Direction { Up, Down, Left, Right };
    abstract class Unit
    {
        public Vector2 _position;
        public Texture2D _texture;
        public Rectangle _rectangle;
        public Vector2 _screenPosition;
        public Direction _rotation;

        public Unit()
        {
            _position = new Vector2(0, 0);
            _rotation = 0;
            _rectangle = new Rectangle(0, 0, 0, 0);
        }
        public Unit(Vector2 position, Vector2 screenPosition, Texture2D texture, Direction rotation)
        {
            _position = screenPosition;
            _screenPosition = position;
            _texture = texture;
            _rotation = rotation;
        }

        public float GetAngle()
        {
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
            return 0;
        }

        public virtual void Update(GameTime gameTime)
        {
           
        }

        public void Drav(SpriteBatch spritebatch)
        {
            spritebatch.Draw(_texture, _screenPosition, _rectangle, Color.White, GetAngle(), _position, 1.0f, SpriteEffects.None, 0);
        }
    }
}
