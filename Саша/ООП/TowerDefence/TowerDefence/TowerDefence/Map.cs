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

        public Map(Vector2 portalPosition, Texture2D portalTexture, List<Texture2D> enemiesTexture)
        {
            _portal = new Portal(portalPosition, portalTexture, Direction.Left, 100, State.Live);
            _enemiesTexture = enemiesTexture;
            _enemies = new List<Enemy>();
            _towersPosition = new List<Vector2>();
            AddEnemy(new Vector2(450, 250), enemiesTexture[0], Direction.Right, 100, State.Live, 100);
            AddEnemy(new Vector2(450, 200), enemiesTexture[0], Direction.Right, 100, State.Live, 100);
            AddEnemy(new Vector2(400, 250), enemiesTexture[1], Direction.Right, 150, State.Live, 100);
            AddEnemy(new Vector2(400, 200), enemiesTexture[1], Direction.Right, 150, State.Live, 100);
        }

        public void Update(GameTime gameTime)
        {
            UpdateEnemies(gameTime);
            CheckEnemies();
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
                if (!enemy.IsLive())
                {
                    _enemies.Remove(enemy);
                }
            }
        }

        private bool CheckPositionX(Unit one, Unit two)
        {
            if (Math.Abs(one.GetPosition().X - two.GetPosition().X) <= one.GetHalfTextureWidth() + two.GetHalfTextureWidth()) return false;
            return true;
        }

        private bool CheckTextureX(Unit one, Unit two)
        {
            if (Math.Abs(one.GetPosition().X - two.GetPosition().X) <= Math.Max(one.GetHalfTextureWidth(), two.GetHalfTextureWidth())) return false;
            return true;
        }

        private bool CheckPositionY(Unit one, Unit two)
        {
            if (Math.Abs(one.GetPosition().Y - two.GetPosition().Y) <= one.GetHalfTextureHeight() + two.GetHalfTextureHeight()) return false;
            return true;
        }

        private bool CheckTextureY(Unit one, Unit two)
        {
            if (Math.Abs(one.GetPosition().Y - two.GetPosition().Y) <= Math.Max(one.GetHalfTextureHeight(), two.GetHalfTextureHeight())) return false;
            return true;
        }

        private bool Check2Position(Enemy one, Enemy two)
        {
            if (!CheckPositionX(one, two))
            {
                if (!CheckPositionY(one, two))
                {
                    if (one.GetPosition().X < two.GetPosition().X)
                    {
                        if (one.GetPosition().Y < two.GetPosition().Y)
                        {
                            if (!one.GetRotationFlag() && !two.GetRotationFlag())
                            {
                                one.SetDirection(Direction.Up);
                                one.SetAngle(one.GetAngle());
                                one.SetRotationFlag(true);
                                return true;
                            }
                        }
                        else
                        {
                            if (!one.GetRotationFlag() && !two.GetRotationFlag())
                            {
                                one.SetDirection(Direction.Down);
                                one.SetAngle(one.GetAngle());
                                one.SetRotationFlag(true);
                                return true;
                            }
                        }
                    }
                    else
                    {
                        if (one.GetPosition().Y < two.GetPosition().Y)
                        {
                            if (!two.GetRotationFlag() && !one.GetRotationFlag())
                            {
                                two.SetDirection(Direction.Down);
                                two.SetAngle(two.GetAngle());
                                two.SetRotationFlag(true);
                                return true;
                            }
                        }
                        else
                        {
                            if (!two.GetRotationFlag() && !one.GetRotationFlag())
                            {
                                two.SetDirection(Direction.Up);
                                two.SetAngle(two.GetAngle());
                                two.SetRotationFlag(true);
                                return true;
                            }
                        }
                    }
                }
            }
            return false;
        }

        private void CheckEnemies()
        {
            for (var i = 0; i < _enemies.Count - 1; i++)
            {
                for (var j = i + 1; j < _enemies.Count; j++)
                {
                    if (!Check2Position(_enemies[i], _enemies[j]) && !Check2Position(_enemies[j], _enemies[i]))
                    {
                        _enemies[i].SetDirection(Direction.Right);
                        _enemies[i].SetAngle(_enemies[i].GetAngle());
                        _enemies[j].SetDirection(Direction.Right);
                        _enemies[j].SetAngle(_enemies[j].GetAngle());
                    }
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
