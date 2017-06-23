using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace TowerDefence
{
    class Interface
    {
        private List<InterfaceElement> _interfaceElement;
        private List<MoneyInterfaceElement> _moneyInterfaceElement;
        private List<TowerInterfaceElement> _towersInterfaceElement;

        public Interface(List<int> costTowers, List<Texture2D> towersTexture, List<Texture2D> moneyTexture)
        {
            
        }

        public void DrawMoney(SpriteBatch spriteBatch)
        {
            foreach (var elem in _moneyInterfaceElement)
            {
                elem.Draw(spriteBatch);
            }
        }

        public void DrawElement(SpriteBatch spriteBatch)
        {
            foreach (var elem in _interfaceElement)
            {
                elem.Draw(spriteBatch);
            }
        }

        public void DrawTowers(SpriteBatch spriteBatch)
        {
            foreach (var elem in _towersInterfaceElement)
            {
                elem.Draw(spriteBatch);
            }
        }
    }
}
