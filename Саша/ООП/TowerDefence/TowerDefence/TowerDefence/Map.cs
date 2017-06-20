using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    class Map
    {
        private List<Enemy> _enemies;
        private List<Texture2D> _enemiesTexture;
        private List<Vector2> _towersPosition;
        private Portal _portal;
        private int _enemiesTextureIndex;

        public Map(Vector2 portalPosition, Texture2D portalTexture, List<Texture2D> enemiesTexture)
        {
            _portal = new Portal(portalPosition, portalTexture, Direction.Left, 100, State.Live);
            _enemiesTexture = enemiesTexture;
            _enemiesTextureIndex = 0;
            _enemies = new List<Enemy>();
            _towersPosition = new List<Vector2>();
        }

        public void Update(GameTime gameTime)
        {
            UpdateEnemies(gameTime);
        }

        public void AddEnemy(Vector2 position, Texture2D texture, Direction rotation, int hitPoints, State state, int cost)
        {
            _enemies.Add(new Enemy(position, texture, rotation, hitPoints, state, cost));
        }

        private void UpdateEnemies(GameTime gameTime)
        {
            foreach (var enemy in _enemies.ToList())
            {
                enemy.Update();
                enemy.ChangeTexture(_enemiesTexture[_enemiesTextureIndex]);
                _enemiesTextureIndex++;
                if (_enemiesTextureIndex >= _enemiesTexture.Count)
                {
                    _enemiesTextureIndex = 0;
                }
                if (!enemy.IsLive())
                {
                    _enemies.Remove(enemy);
                }
            }
        }

        private bool Check2Enemy(Enemy one, Enemy two)
        {
            
            return false;
        }

        private void CheckEnemies()
        {
            for (var i = 0; i < _enemies.Count-1; i++)
            { 
                for (var j = i + 1; j < _enemies.Count; j++) 
                {
                    
                } 
            }
        }

        public List<Enemy> GetEnemies()
        {
            return _enemies;
        }

        public void SetVelosity(int velosity)
        {
            foreach (var enemy in _enemies.ToList())
            {
                enemy.SetVelosityVector(velosity);
            }
        }

        public void SetModificator(Modificator modificator, int modificatorTime)
        {
            foreach (var enemy in _enemies.ToList())
            {
                enemy.SetModificator(modificator, modificatorTime);
            }
        }

        public void DrawEnemies(SpriteBatch spriteBatch)
        {
            foreach (var enemy in _enemies)
            {
                enemy.Drav(spriteBatch);
            }
        }

        public void AddTowerPosition(Vector2 position)
        {
            _towersPosition.Add(position);
        }
    }
}
