using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    class Player
    {
        public List<Tower> _towers;
        public int _gold;

        public Player(int gold)
        {
            _towers = new List<Tower>();
            _gold = gold;
        }

        public void BuyTower(Level level, int cost, Vector2 position, Texture2D texture, Direction rotation, int hitPoint, int distance)
        {
            if (_gold - cost >= 0)
            {
                _gold -= cost;
                AddTower(position, texture, rotation, hitPoint, distance);
            }
        }

        private void AddTower(Vector2 position, Texture2D texture, Direction rotation, int hitPoint, int distance)
        {
            _towers.Add(
                new Tower(
                    position,
                    texture,
                    rotation,
                    hitPoint,
                    distance
                )
            );
        }
    }
}
