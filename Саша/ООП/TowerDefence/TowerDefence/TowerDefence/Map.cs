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
        private List<Vector2> _enemyRotatePosition;
        private Portal _portal;
        private int _outCome;
        private bool _outComeFlag;
        private int _spawnInterval;
        private int _updateInterval;
        private int _upPositionLine;
        private int _downPositionLine;
        private int _leftPositionLine;

        public Map(Vector2 portalPosition, Texture2D portalTexture, List<Texture2D> enemiesTexture)
        {
            _portal = new Portal(portalPosition, portalTexture, Direction.Right, 100, State.Live);
            _enemiesTexture = enemiesTexture;
            _enemies = new List<Enemy>();
            _towersPosition = new List<Vector2>();
            _outCome = 20;
            _outComeFlag = true;
            _spawnInterval = 100;
            _updateInterval = 2;
            _upPositionLine = 280;
            _downPositionLine = 360;
            _leftPositionLine = 50;
            _enemyRotatePosition = new List<Vector2>();
            _enemyRotatePosition.Add(new Vector2(_leftPositionLine, _upPositionLine));
            _enemyRotatePosition.Add(new Vector2(_leftPositionLine, _downPositionLine));            
        }

        public void Update(GameTime gameTime)
        {
            UpdateEnemies(gameTime);
            CheckRotationEnemies();
            CheckPortalEnemies();
            OutComeEnemy(gameTime);
        }

        public void OutComeEnemy(GameTime gameTime)
        {
            if (_outComeFlag && (gameTime.TotalGameTime.Ticks % _spawnInterval == 0 || gameTime.TotalGameTime.Ticks < _spawnInterval))
            {
                AddEnemy(new Vector2(50, 0), _enemiesTexture[0], Direction.Down, 100, State.Live, 100);
                _outCome--;
                _enemies[_enemies.Count - 1].SetVelosityVector(1);
                _enemies[_enemies.Count - 1].SetModificator(Modificator.None, 0);
                AddEnemy(new Vector2(50, 640), _enemiesTexture[1], Direction.Up, 150, State.Live, 100);
                _outCome--;
                _enemies[_enemies.Count - 1].SetVelosityVector(1);
                _enemies[_enemies.Count - 1].SetModificator(Modificator.None, 0);
                if (_outCome <= 0)
                {
                    _outComeFlag = false;
                }
            }
        }

        public void AddEnemy(Vector2 position, Texture2D texture, Direction rotation, int hitPoints, State state, int cost)
        {
            _enemies.Add(new Enemy(position, texture, rotation, hitPoints, state, cost));
        }

        private void UpdateEnemies(GameTime gameTime)
        {
            if (gameTime.TotalGameTime.Ticks % _updateInterval == 0)
            {
                foreach (var enemy in _enemies.ToList())
                {
                    enemy.Update();
                    if (!enemy.IsLive())
                    {
                        _enemies.Remove(enemy);
                    }
                }
            }
        }

        private void CheckRotationEnemies()
        {
            foreach (var enemy in _enemies.ToList())
            {
                foreach (var position in _enemyRotatePosition)
                {
                    if (enemy.GetPosition() == position)
                    {
                        enemy.SetDirection(Direction.Right);
                        enemy.SetAngle(enemy.GetAngle());
                    }
                }
            }
        }

        private void CheckPortalEnemies()
        {
            foreach (var enemy in _enemies.ToList())
            {
                if (enemy.GetPosition().X == _portal.GetPosition().X && Math.Abs(enemy.GetPosition().Y - _portal.GetPosition().Y) <= _portal.GetHalfTextureHeight())
                {
                    enemy.Due();
                    _portal.InComeEnemy();
                }
                
            }
        }

        public bool IsNothingEnemy()
        {
            if (_enemies.Count == 0)
            {
                return true;
            }
            return false;
        }

        public bool IsDeadPortal()
        {
            if (_portal.GetState() == State.Dead)
            {
                return true;
            }
            return false;
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

        public void DrawPortal(SpriteBatch spriteBatch)
        {
            _portal.Drav(spriteBatch);
        }

        public void AddTowerPosition(Vector2 position)
        {
            _towersPosition.Add(position);
        }

        public int GetPositoinLeftLine()
        {
            return _leftPositionLine;
        }

        public int GetPositoinUpLine()
        {
            return _upPositionLine;
        }

        public int GetPositoinDownLine()
        {
            return _downPositionLine;
        }
    }
}
