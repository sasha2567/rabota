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
        public Vector2 _originalposition;
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

        public virtual void Update(GameTime gameTime)
        {
            _rectangle = new Rectangle((int)_screenPosition.X, (int)_screenPosition.Y, _texture.Height, _texture.Width);
            _originalposition = new Vector2(_rectangle.Width / 2, _rectangle.Height / 2);
        }
    }
}
