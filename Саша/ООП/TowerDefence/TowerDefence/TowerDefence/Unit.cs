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
        public Vector2 _position;
        public Texture2D _texture;
        public Vector2 _screenPosition;
        public Direction _rotation;
        public float _angle;

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
            _angle = GetAngle();
            _screenPosition.X = _position.X - _texture.Width / 2;
            _screenPosition.Y = _position.Y - _texture.Height / 2;
        }

        public void Drav(SpriteBatch spritebatch)
        {
            spritebatch.Draw(_texture, _screenPosition, null, Color.White, _angle, new Vector2(0, 0), 1.0f, SpriteEffects.None, 0);
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

        public void ChangeTexture(Texture2D texture)
        {
            _texture = texture;
        }
    }
}
