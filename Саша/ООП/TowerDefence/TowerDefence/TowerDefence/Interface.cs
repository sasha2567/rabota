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
        private List<InterfaceElement> _menuElements;
        private TowerInterfaceElement _selectElement;
        private bool _inMenu;

        public Interface()
        {
            _interfaceElement = new List<InterfaceElement>();
            _moneyInterfaceElement = new List<MoneyInterfaceElement>();
            _towersInterfaceElement = new List<TowerInterfaceElement>();
            _menuElements = new List<InterfaceElement>();
            _inMenu = true;
        }

        public void AddElement(Texture2D texture, Vector2 position)
        {
            _interfaceElement.Add(new InterfaceElement(texture, position));
        }

        public void AddMoneyElement(Texture2D texture, Vector2 position, int value)
        {
            _moneyInterfaceElement.Add(new MoneyInterfaceElement(texture, position, value));
        }

        public void AddTowerElement(Texture2D texture, Vector2 position, int cost, Texture2D selectTexture)
        {
            _towersInterfaceElement.Add(new TowerInterfaceElement(texture, position, cost, selectTexture));
        }

        public void SetSelectElement(Texture2D texture, Vector2 position, Texture2D selectTexture, int value = 0)
        {
            _selectElement = new TowerInterfaceElement(texture, position, value, selectTexture);
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

        public void DrawSelectElement(SpriteBatch spriteBatch)
        {
            _selectElement.Draw(spriteBatch);
        }

        public void DravMenu(SpriteBatch spriteBatch)
        {
            foreach (var elem in _menuElements)
            {
                elem.Draw(spriteBatch);
            }
        }

        public bool GetMenu()
        {
            return _inMenu;
        }

        public void SetMenu(bool menu)
        {
            _inMenu = menu;
        }
    }
}
