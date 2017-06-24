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
        private int _cost;
        private Modificator _modificator;

        public TowerInterfaceElement(Texture2D texture, Vector2 position, int cost, Modificator modificator)
            : base(texture, position)
        {
            _cost = cost;
            _modificator = modificator;
        }

        public void SetCost(int cost)
        {
            _cost = cost;
        }

        public int GetCost()
        {
            return _cost;
        }

        public void DravSelect(SpriteBatch spriteBatch, MouseState mouseState)
        {
            if (MouseOnElement(mouseState))
            {
                spriteBatch.Draw(_texture, GetPosition(), Color.White);
            }
        }


    }
}
