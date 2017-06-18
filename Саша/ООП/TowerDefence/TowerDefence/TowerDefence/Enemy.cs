using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    class Enemy : MoveUnit
    {
        public int _hitPoints;
        public State _state;
        public int _cost;

        public Enemy(Vector2 position, Texture2D texture, Direction rotation, int hitPoints, State state, int cost)
            : base(position, texture, rotation)
        {
            _hitPoints = hitPoints;
            _state = state;
            _cost = cost;
        }

        public void Hitting(int damage)
        {
            _hitPoints -= damage;
            if (_hitPoints < 0)
            {
                _state = State.Dead;
            }
        }

        public bool IsLive()
        {
            return _state ==State.Live ? true : false;
        }

        public void Update()
        {
            base.Update();
        }
    }
}
