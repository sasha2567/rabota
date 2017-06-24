using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Audio;
using Microsoft.Xna.Framework.Content;
using Microsoft.Xna.Framework.GamerServices;
using Microsoft.Xna.Framework.Graphics;
using Microsoft.Xna.Framework.Input;
using Microsoft.Xna.Framework.Media;

namespace TowerDefence
{
    /// <summary>
    /// This is the main type for your game
    /// </summary>
    public class Game1 : Microsoft.Xna.Framework.Game
    {
        public Rectangle _rectangle;
        public Vector2 _position;
        public static GraphicsDeviceManager _graphics;
        SpriteBatch _spriteBatch;
        SpriteFont _sprite;
        Camera _camera;
        KeyboardState _keyboardStateNow, _keyboardStatePreview;   
        MouseState _mouseState;

        Map _map;
        Player _player;
        GameInterface _gameInterface;

        List<Texture2D> _enemiesTexture;
        List<Vector2> _moneyPosition;
        List<Texture2D> _moneyTexture;
        List<Vector2> _towersPosition;
        Texture2D _backGround;
        Texture2D _gameTitle;
        Texture2D _portal;
        Texture2D _gbTexture, _ebTexture, _rbTexture;
        Texture2D _mouseTexture;
        Texture2D _selectTexture;

        public static List<Texture2D> towersTexture;
        public static List<Texture2D> weaponTexture;

        public static int poisonTowerCost;
        public static int poisonTowerUpgrateCost;
        public static int poisonTowerRange;
        public static int poisonTowerAtackSpeed;
        public static int poisonTowerShellSpeed;
        public static int poisonTowerDamage;

        public static int standartTowerCost;
        public static int standartTowerUpgrateCost;
        public static int standartTowerRange;
        public static int standartTowerAtackSpeed;
        public static int standartTowerShellSpeed;
        public static int standartTowerDamage;

        //-------------------------------------------------------------------Constructor--------------------------------------//
        public Game1()
        {
            _graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
            _graphics.PreferredBackBufferWidth = 1280;
            _graphics.PreferredBackBufferHeight = 640;
        }

        //-------------------------------------------------------------------Initialize---------------------------------------//
        protected override void Initialize()
        {
            _camera = new Camera(GraphicsDevice.Viewport);
            _rectangle = new Rectangle(0, 0, GraphicsDevice.Viewport.Width, GraphicsDevice.Viewport.Height);
            _position = new Vector2(GraphicsDevice.Viewport.Width / 2, GraphicsDevice.Viewport.Height / 2);

            _enemiesTexture = new List<Texture2D>(15);
            towersTexture = new List<Texture2D>(2);
            weaponTexture = new List<Texture2D>(3);

            _moneyTexture = new List<Texture2D>(3);
            _moneyPosition = new List<Vector2>(3);
            _towersPosition = new List<Vector2>(2);

            _player = new Player(800);

            poisonTowerCost = 100;
            poisonTowerUpgrateCost = 120;
            poisonTowerRange = 250;
            poisonTowerAtackSpeed = 2;
            poisonTowerShellSpeed = 8;
            poisonTowerDamage = 15;

            standartTowerCost = 80;
            standartTowerUpgrateCost = 100;
            standartTowerRange = 300;
            standartTowerAtackSpeed = 5;
            standartTowerShellSpeed = 12;
            standartTowerDamage = 5;

            base.Initialize();
        }

        //-------------------------------------------------------------------LoadContent--------------------------------------//
        protected override void LoadContent()
        {
            _spriteBatch = new SpriteBatch(GraphicsDevice);
            _sprite =  Content.Load<SpriteFont>("SpriteFont1");

            _gbTexture = Content.Load<Texture2D>("Buttons/b_main_new_h");
            _ebTexture = Content.Load<Texture2D>("Buttons/b_main_quit_h");
            _rbTexture = Content.Load<Texture2D>("Buttons/b_main_continue_h");

            _enemiesTexture.Add(Content.Load<Texture2D>("Enemies/TypeOne/ship-one"));
            _enemiesTexture.Add(Content.Load<Texture2D>("Enemies/TypeTwo/ship-two"));

            towersTexture.Add(Content.Load<Texture2D>("Tower/tower-one"));
            towersTexture.Add(Content.Load<Texture2D>("Tower/tower-two"));

            weaponTexture.Add(Content.Load<Texture2D>("Weapon/arrow"));
            weaponTexture.Add(Content.Load<Texture2D>("Weapon/poison"));
            weaponTexture.Add(Content.Load<Texture2D>("Weapon/stun"));

            _moneyTexture.Add(Content.Load<Texture2D>("Other/bronze"));
            _moneyTexture.Add(Content.Load<Texture2D>("Other/silver"));
            _moneyTexture.Add(Content.Load<Texture2D>("Other/gold"));

            _backGround = Content.Load<Texture2D>("Other/background");
            _portal = Content.Load<Texture2D>("Tower/portal");
            _mouseTexture = Content.Load<Texture2D>("Other/mouse");
            _selectTexture = Content.Load<Texture2D>("Other/select");
            _gameTitle = Content.Load<Texture2D>("Other/template");

            //_player.BuyTower(1000, 10000, new Vector2(150, 100), _towersTexture[0], Direction.Right, 100, 500, _weaponTexture[0], Modificator.Poison);

            var portalPosition = new Vector2(_graphics.PreferredBackBufferWidth - _portal.Width / 2, _graphics.PreferredBackBufferHeight / 2);
            
            _map = new Map(portalPosition, _portal, _enemiesTexture);
            
            _gameInterface = new GameInterface(_gbTexture, _ebTexture, _rbTexture, _selectTexture);
            _gameInterface.AddTowerElement(towersTexture[0], new Vector2(480, 535), poisonTowerCost, Modificator.Poison);
            _gameInterface.AddTowerElement(towersTexture[1], new Vector2(270, 540), standartTowerCost, Modificator.None);
        }

        //-------------------------------------------------------------------UnloadContent------------------------------------//
        protected override void UnloadContent()
        {

        }

        //-------------------------------------------------------------------Update-------------------------------------------//
        protected override void Update(GameTime gameTime)
        {
            _mouseState = Mouse.GetState();
            _keyboardStateNow = Keyboard.GetState();
            _camera.Update(gameTime, this);
            if (_keyboardStateNow.IsKeyDown(Keys.Escape) && _keyboardStatePreview.IsKeyUp(Keys.Escape))
            {
                if (_gameInterface.GetGameState() == GameState.Game)
                {
                    _gameInterface.SetGameState(GameState.Menu);
                }
                else
                {
                    _gameInterface.SetGameState(GameState.Close);
                }
            }
            switch (_gameInterface.GetGameState())
            {
                case GameState.Menu:
                    _gameInterface.Update(_mouseState);
                    break;
                case GameState.Game:
                    _gameInterface.Update(_mouseState);
                    _map.Update(gameTime);
                    _player.Update(_map, gameTime);
                    if (_map.IsDeadPortal())
                    {
                        _gameInterface.SetGameState(GameState.Lose);
                    }
                    //if (_map.IsNothingEnemy())
                    {
                        //_gameInterface.SetGameState(GameState.Win);
                    }
                    break;
                case GameState.Win:
                    break;
                case GameState.Lose:       
                    break;
                case GameState.Close:
                    this.Exit();
                    break;
            }
            _keyboardStatePreview = _keyboardStateNow;
            base.Update(gameTime);
        }

        //-------------------------------------------------------------------Draw---------------------------------------------//
        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.Green);
            _spriteBatch.Begin();
            _spriteBatch.Draw(_backGround, new Rectangle(0, 0, _graphics.PreferredBackBufferWidth, _graphics.PreferredBackBufferHeight), Color.White);
            if (_gameInterface.GetGameState() == GameState.Menu)
            {
                _gameInterface.DravMenu(_spriteBatch);
            }
            if (_gameInterface.GetGameState() == GameState.Game)
            {
                _map.DrawPortal(_spriteBatch);
                _player.Draw(_spriteBatch);
                _map.DrawEnemies(_spriteBatch);
                _spriteBatch.Draw(_gameTitle, new Vector2(0, 0), Color.White);
                _gameInterface.DrawTowers(_spriteBatch);
            }
            //var enemies = _map.GetEnemies();
            //var i = 0;
            //foreach (var enemy in enemies)
            //{
            //    _spriteBatch.DrawString(_sprite, enemy.GetPosition().X + " " + enemy.GetPosition().Y, enemy.GetPosition() + new Vector2(10, 10 + i * 10), Color.White);
            //    i++;
            //}
            _spriteBatch.Draw(_mouseTexture, new Vector2(_mouseState.X, _mouseState.Y), Color.White);
            _spriteBatch.End();
            base.Draw(gameTime);
        }
    }
}
