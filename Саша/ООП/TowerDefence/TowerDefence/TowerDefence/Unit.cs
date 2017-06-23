using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    abstract class Unit
    {
        protected Vector2 _position;
        protected Texture2D _texture;
        protected Direction _direction;
        protected float _angle;

        public Unit()
        {
            _position = new Vector2(0, 0);
            _direction = 0;
        }
        public Unit(Vector2 position, Texture2D texture, Direction direction)
        {
            _texture = texture;
            _direction = direction;
            _position = position;
        }

        public void Update()
        {
            if (_position.X < _texture.Width / 2)
            {
                _position.X = _texture.Width / 2;
            }
            if (_position.Y < _texture.Height / 2)
            {
                _position.Y = _texture.Height / 2;
            }
            if (_position.X > Game1._graphics.PreferredBackBufferWidth - _texture.Width / 2)
            {
                _position.X = Game1._graphics.PreferredBackBufferWidth - _texture.Width / 2;
            }
            if (_position.Y > Game1._graphics.PreferredBackBufferHeight - _texture.Height / 2)
            {
                _position.Y = Game1._graphics.PreferredBackBufferHeight - _texture.Height / 2;
            }
        }

        public virtual void Drav(SpriteBatch spritebatch)
        {
            spritebatch.Draw(_texture, _position, null, Color.White, _angle, new Vector2(_texture.Width / 2, _texture.Height / 2), 1.0f, SpriteEffects.None, 0);
        }

        public float GetAngle()
        {
            switch (_direction)
            {
                case Direction.Down: return (float)Math.PI / 2;
                case Direction.Up: return 3 * (float)Math.PI / 2;
                case Direction.Left: return (float)Math.PI;
                case Direction.Right: return 0;
                default: return 0;
            }
        }

        public void ChangeTexture(Texture2D texture)
        {
            _texture = texture;
        }

        public int GetHalfTextureWidth()
        {
            return _texture.Width / 2;
        }

        public int GetHalfTextureHeight()
        {
            return _texture.Height / 2;
        }

        public int GetTextureWidth()
        {
            return _texture.Width;
        }

        public int GetTextureHeight()
        {
            return _texture.Height;
        }

        public Vector2 GetPosition()
        {
            return _position;
        }

        public void SetDirection(Direction direction)
        {
            _direction = direction;
        }

        public void SetAngle(float angle)
        {
            _angle = angle;
        }
    }
}
