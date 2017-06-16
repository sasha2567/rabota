using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    class Arrow : MoveUnit
    {
        public int _damage;
        public Enemy _enemy;

        public Arrow(Vector2 position, Vector2 screenposition, Texture2D texture, Direction rotation, Vector2 velosity, int damage, Enemy enemy)
            : base(position, screenposition, texture, rotation, velosity)
        {
            _damage = damage;
            _enemy = enemy; 
        }
    }
}
