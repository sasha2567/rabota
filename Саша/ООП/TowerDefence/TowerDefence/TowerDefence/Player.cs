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
        private List<Tower> _towers;
        private int _gold;
        private int _updateInterval;

        public Player(int gold)
        {
            _towers = new List<Tower>();
            _gold = gold;
        }

        public void Update(Map map, GameTime gameTime)
        {
            foreach (var tower in _towers)
            {
                if (gameTime.TotalGameTime.Ticks % tower.GetAtackSpeed() == 0)
                {
                    var enemies = map.GetEnemies();
                    var index = tower.GetAtackTarget(enemies);
                    if (index >= 0)
                    {
                        tower.Shoot(enemies[index]);
                    }
                }
                tower.Update();
            }
        }

        public void BuyTower(Vector2 position, Texture2D texture, Direction rotation, Modificator modificator)
        {
            var cost = 100000;
            var arrowTexture = Game1.weaponTexture[0];
            switch (modificator)
            {
                case Modificator.Poison:
                    cost = Game1.poisonTowerCost;
                    arrowTexture = Game1.weaponTexture[1];
                    break;
                case Modificator.None:
                    cost = Game1.standartTowerCost;
                    arrowTexture = Game1.weaponTexture[0];
                    break;
            }
            if (_gold - cost >= 0)
            {
                _gold -= cost;
                AddTower(position, texture, rotation, modificator);
                _towers[_towers.Count - 1].SetArrowTexture(arrowTexture, modificator);
            }
        }

        public void MoveToverFromMouse(Vector2 position)
        {
            _towers[_towers.Count - 1].SetPosition(position);
        }

        public void StandTower()
        {
            _towers[_towers.Count - 1].StandTower();
        }

        public void UpgradeTower(int cost, Texture2D newTexture, int index)
        {
            if (_gold - cost >= 0)
            {
                _towers[index].UpgradeTower();
                _towers[index].ChangeTexture(newTexture);
            }
        }

        private void AddTower(Vector2 position, Texture2D texture, Direction rotation, Modificator modificator)
        {
            _towers.Add(new Tower(position, texture, rotation, modificator));
        }

        public void Draw(SpriteBatch spriteBatch)
        {
            foreach (var tower in _towers)
            {
                tower.Drav(spriteBatch);
                tower.DrawWeapons(spriteBatch);
            }
        }

        public int CountTower()
        {
            return _towers.Count;
        }
    }
}
