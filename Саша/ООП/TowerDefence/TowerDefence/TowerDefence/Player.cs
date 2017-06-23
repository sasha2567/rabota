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

        public void Update()
        {
            foreach (var tower in _towers)
            {
                //if (temp % 50 == 0)
                //{
                //    var enemies = _map.GetEnemies();
                //    var index = tower.GetAtackTarget(enemies);
                //    if (index >= 0)
                //    {
                //        tower.Shoot(10, enemies[index], 10);
                //    }
                //}
                tower.Update();
            }
        }

        public void BuyTower(int cost, int upgradeCost, Vector2 position, Texture2D texture, Direction rotation, int hitPoint, int distance, Texture2D arrowTexture, Modificator modificator)
        {
            if (_gold - cost >= 0)
            {
                _gold -= cost;
                AddTower(position, texture, rotation, hitPoint, distance, cost, upgradeCost);
                _towers[_towers.Count - 1].SetArrowTexture(arrowTexture, modificator);
            }
        }

        public void UpgradeTower(int cost, Texture2D newTexture, int index)
        {
            if (_gold - cost >= 0)
            {
                _towers[index].UpgradeTower();
                _towers[index].ChangeTexture(newTexture);
            }
        }

        private void AddTower(Vector2 position, Texture2D texture, Direction rotation, int hitPoint, int distance, int cost, int upgradeCost)
        {
            _towers.Add(new Tower(position, texture, rotation, hitPoint, distance, cost, upgradeCost));
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            foreach (var tower in _towers)
            {
                tower.Drav(spriteBatch);
                tower.DrawWeapons(spriteBatch);
            }
        }
    }
}
