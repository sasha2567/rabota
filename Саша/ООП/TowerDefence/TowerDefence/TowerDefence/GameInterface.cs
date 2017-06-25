using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;

namespace TowerDefence
{
    class GameInterface
    {
        private bool _startGame;
        private InterfaceElement _gameButton;
        private InterfaceElement _exitButton;
        private InterfaceElement _resumeButton;
        private InterfaceElement _selectElement;
        private MoneyInterfaceElement _moneyInterfaceElement;
        private List<TowerInterfaceElement> _towersInterfaceElement;
        private GameState _gameState;
        private Texture2D _selectTexture;
        private TowerState _towerState;

        public GameInterface(Texture2D gbTexture, Texture2D ebTexture, Texture2D rbTexture, Texture2D selectTexture)
        {
            _gameButton = new InterfaceElement(gbTexture, new Vector2(720, 250));
            _exitButton = new InterfaceElement(ebTexture, new Vector2(720, 300));
            _resumeButton = new InterfaceElement(rbTexture, new Vector2(720, 250));
            _towersInterfaceElement = new List<TowerInterfaceElement>();
            _gameState = GameState.Menu;
            _startGame = true;
            _selectTexture = selectTexture;
        }

        public void Update(MouseState mouseState)
        {
            if (_gameButton.MouseOnElement(mouseState) && mouseState.LeftButton == ButtonState.Pressed && _startGame)
            {
                SetGameState(GameState.Game);
            }
            if (_resumeButton.MouseOnElement(mouseState) && mouseState.LeftButton == ButtonState.Pressed && !_startGame)
            {
                SetGameState(GameState.Game);
            }
            if (_exitButton.MouseOnElement(mouseState) && mouseState.LeftButton == ButtonState.Pressed)
            {
                SetGameState(GameState.Close);
            }
            if (mouseState.RightButton == ButtonState.Pressed)
            {
                switch (_gameState)
                {
                    case GameState.Game:
                        SetGameState(GameState.Menu);
                        break;
                    case GameState.Win: case GameState.Lose:
                        SetGameState(GameState.Close);
                        break;
                    default:
                        break;
                }
            }
        }

        public void DrawMoney(SpriteBatch spriteBatch)
        {
            _moneyInterfaceElement.Draw(spriteBatch);
        }

        public void DrawTowers(SpriteBatch spriteBatch)
        {
            foreach (var elem in _towersInterfaceElement)
            {
                elem.Draw(spriteBatch);
            }
        }

        public void DrawSelectElement(SpriteBatch spriteBatch)
        {
            _selectElement.Draw(spriteBatch);
        }

        public void DravMenu(SpriteBatch spriteBatch)
        {
            if (_gameState == GameState.Menu)
            {
                if (_startGame)
                {
                    _gameButton.Draw(spriteBatch);
                }
                else
                {
                    _resumeButton.Draw(spriteBatch);
                }
                _exitButton.Draw(spriteBatch);
            }
        }

        public void SetMoneyElement(Texture2D texture, Vector2 position, int value)
        {
            _moneyInterfaceElement = new MoneyInterfaceElement(texture, position, value);
        }

        public void ChangeMoneyValue(int value)
        {
            _moneyInterfaceElement.SetValue(value);
        }

        public void AddTowerElement(Texture2D texture, Vector2 position, Modificator modificator)
        {
            _towersInterfaceElement.Add(new TowerInterfaceElement(texture, position, modificator));
        }

        public void UpdateTowerElement(Player player, MouseState mouseState)
        {
            foreach (var tower in _towersInterfaceElement)
            {
                if (tower.MouseOnElement(mouseState) && mouseState.LeftButton == ButtonState.Pressed)
                {
                    player.BuyTower(tower.GetPosition(), tower.GetTexture(), Direction.Right, tower.GetModificator());
                    player.MoveToverFromMouse(new Vector2(mouseState.X, mouseState.Y));
                    break;
                }
            }
        }

        public void SetSelectElement(Vector2 position, int value = 0)
        {
            _selectElement = new InterfaceElement(_selectTexture, position);
        }

        public void ChangeSelectElementPosition(Vector2 position)
        {
            _selectElement.SetPosition(position);
        }

        public GameState GetGameState()
        {
            return _gameState;
        }

        public void SetGameState(GameState state)
        {
            if (_gameState == GameState.Game && state == GameState.Menu && _startGame)
            {
                _startGame = false;
            }
            _gameState = state;
        }
    }
}
