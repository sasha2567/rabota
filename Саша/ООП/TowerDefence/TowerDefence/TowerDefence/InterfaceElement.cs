using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace TowerDefence
{
    class InterfaceElement
    {
        protected Texture2D _texture;
        protected Vector2 _position;

        public InterfaceElement(Texture2D texture, Vector2 position)
        {
            _texture = texture;
            _position = position;
        }

        public void SetPosition(Vector2 position)
        {
            _position = position;
        }

        public Vector2 GetPosition()
        {
            return _position;
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            spriteBatch.Draw(_texture, _position, Color.White);
        }

        public Vector2 GetTexture()
        {
            return new Vector2(_texture.Width, _texture.Height);
        }

        public bool MouseOnElement(MouseState mouseState)
        {
            var mousePosition = new Vector2(mouseState.X, mouseState.Y);
            if (
                mousePosition.X >= _position.X &&
                mousePosition.Y >= _position.Y &&
                mousePosition.X <= _position.X + _texture.Width &&
                mousePosition.Y <= _position.Y + _texture.Height
            )
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}
