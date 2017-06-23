using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    class MoneyInterfaceElement : InterfaceElement
    {
        private int _value;

        public MoneyInterfaceElement(Texture2D texture, Vector2 position, int value)
            : base(texture, position)
        {
            _value = value;
        }

        public int GetValue()
        {
            return _value;
        }

        public void SetValue(int value)
        {
            _value = value;
        }
    }
}
