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
        private Texture2D _selectTexture;

        public TowerInterfaceElement(Texture2D texture, Vector2 position, int cost, Texture2D selectTexture)
            : base(texture, position)
        {
            _cost = cost;
            _selectTexture = selectTexture;
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
                spriteBatch.Draw(_selectTexture, GetPosition(), Color.White);
            }
        }


    }
}
