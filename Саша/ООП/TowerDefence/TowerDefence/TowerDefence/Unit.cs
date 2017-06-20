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
        protected Vector2 _screenPosition;
        protected Direction _rotation;
        protected float _angle;

        public Unit()
        {
            _position = new Vector2(0, 0);
            _rotation = 0;
        }
        public Unit(Vector2 position, Texture2D texture, Direction rotation)
        {
            _texture = texture;
            _rotation = rotation;
            _position = position;
        }

        public void Update()
        {
            //_angle = GetAngle();
            _screenPosition.X = _position.X - _texture.Width / 2;
            _screenPosition.Y = _position.Y - _texture.Height / 2;
        }

        public virtual void Drav(SpriteBatch spritebatch)
        {
            spritebatch.Draw(_texture, _screenPosition, null, Color.White, _angle, new Vector2(0, 0), 1.0f, SpriteEffects.None, 0);
        }

        public float GetAngle()
        {
            switch (_rotation)
            {
                case Direction.Down : return -(float)Math.PI / 2; 
                case Direction.Up : return (float)Math.PI / 2; 
                case Direction.Left : return (float)Math.PI;
                case Direction.Right : return 0;
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

        public Vector2 GetScreenPosition()
        {
            return _screenPosition;
        }

        public void SetDirection(Direction direction)
        {
            _rotation = direction;
        }
    }
}
