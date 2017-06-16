using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    class Tower : Unit
    {
        public int _hitPoint;
        public List<Arrow> _arrow;

        public Tower(Vector2 position, Vector2 screenposition, Texture2D texture, Direction rotation, int hitPoint)
            : base(position, screenposition, texture, rotation)
        {
            _hitPoint = hitPoint;
        }

        public void Shoot(Vector2 position, Vector2 screenposition, Texture2D texture, Direction rotation, Vector2 velosity, int damage, Enemy enemy)
        {
            _arrow.Add(new Arrow(position,screenposition,texture,rotation,velosity,damage,enemy));
        }
    }
}
