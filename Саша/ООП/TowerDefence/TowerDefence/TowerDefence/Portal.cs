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
        public int _countEnemies;
        public State _state;

        public Portal(Vector2 position, Texture2D texture, Direction rotation, int countEnemies, State state)
            : base(position, texture, rotation)
        {
            _countEnemies = countEnemies;
            _state = state;
        }

        public void Update()
        {
            base.Update();
        }

        public void ComeEnemy()
        {
            _countEnemies--;
            if (_countEnemies <= 0) _state = State.Dead;
        }
    }
}
