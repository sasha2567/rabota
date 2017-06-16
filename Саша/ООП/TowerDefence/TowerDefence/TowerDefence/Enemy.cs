using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    public enum State { Live, Dead }
    class Enemy : MoveUnit
    {
        public int _hitPoints;
        public State _state;

        public Enemy(Vector2 position, Vector2 screenposition, Texture2D texture, Direction rotation, Vector2 velosity, int hitPoints, State state)
            : base(position, screenposition, texture, rotation, velosity)
        {
            _hitPoints = hitPoints;
            _state = state; 
        }

        public void Hitting(int damage)
        {
            _hitPoints -= damage;
            if (_hitPoints < 0)
            {
                _state = State.Dead;
            }
        }
    }
}
