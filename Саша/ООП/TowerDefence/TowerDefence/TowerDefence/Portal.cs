using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    class Portal : Unit
    {
        public int _health;
        public State _state;

        public Portal(Vector2 position, Vector2 screenposition, Texture2D texture, Direction rotation, int health, State state)
            : base(position, screenposition, texture, rotation)
        {
            _health = health;
            _state = state;
        }

        public void ComeEnemy()
        {
            _health--;
            if (_health <= 0) _state = State.Dead;
        }
    }
}
