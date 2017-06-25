using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace TowerDefence
{
    class TowerInterfaceElement : InterfaceElement
    {
        private Modificator _modificator;

        public TowerInterfaceElement(Texture2D texture, Vector2 position, Modificator modificator)
            : base(texture, position)
        {
            _modificator = modificator;
        }

        public void DravSelect(SpriteBatch spriteBatch, MouseState mouseState)
        {
            if (MouseOnElement(mouseState))
            {
                spriteBatch.Draw(_texture, GetPosition(), Color.White);
            }
        }

        public Modificator GetModificator()
        {
            return _modificator;
        }
    }
}
