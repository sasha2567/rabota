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
        KeyboardState _keyboardState;
        MouseState _mouseStatePreview, _mouseStateNow;

        Map _map;
        Player _player;
        Interface _gameInterface;

        List<Texture2D> _enemiesTexture;
        List<Texture2D> _towersTexture;
        List<Texture2D> _weaponTexture;
        List<Texture2D> _moneyTexture;
        Texture2D _backGround;
        Texture2D _portal;

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
            _towersTexture = new List<Texture2D>(6);
            _weaponTexture = new List<Texture2D>(6);
            _moneyTexture = new List<Texture2D>(3);

            _player = new Player(1000000);
            _gameInterface = new Interface();

            base.Initialize();
        }

        //-------------------------------------------------------------------LoadContent--------------------------------------//
        protected override void LoadContent()
        {
            _spriteBatch = new SpriteBatch(GraphicsDevice);
            _sprite =  Content.Load<SpriteFont>("SpriteFont1");

            _enemiesTexture.Add(Content.Load<Texture2D>("Enemies/TypeOne/ship-one"));
            _enemiesTexture.Add(Content.Load<Texture2D>("Enemies/TypeTwo/ship-two"));

            _towersTexture.Add(Content.Load<Texture2D>("Tower/tower-one"));
            _towersTexture.Add(Content.Load<Texture2D>("Tower/tower-two"));

            _weaponTexture.Add(Content.Load<Texture2D>("Weapon/arrow"));

            _moneyTexture.Add(Content.Load<Texture2D>("Other/bronze"));
            _moneyTexture.Add(Content.Load<Texture2D>("Other/silver"));
            _moneyTexture.Add(Content.Load<Texture2D>("Other/gold"));

            _backGround = Content.Load<Texture2D>("Other/background");

            _portal = Content.Load<Texture2D>("Tower/tower-two");

            _player.BuyTower(1000, 10000, new Vector2(150, 100), _towersTexture[0], Direction.Right, 100, 500, _weaponTexture[0], Modificator.Poison);

            _map = new Map(new Vector2(1000, 600), _portal, _enemiesTexture);
            _map.SetVelosity(1);
            _map.SetModificator(Modificator.None, 0);
            
            var costList = new List<int>();
            costList.Add(1000);
            costList.Add(10000);
            costList.Add(100000);
        }

        //-------------------------------------------------------------------UnloadContent------------------------------------//
        protected override void UnloadContent()
        {

        }

        //-------------------------------------------------------------------Update-------------------------------------------//
        protected override void Update(GameTime gameTime)
        {
            _camera.Update(gameTime, this);
            _map.Update(gameTime);
            _player.Update(_map, (int)gameTime.TotalGameTime.TotalMilliseconds);
            base.Update(gameTime);
        }

        //-------------------------------------------------------------------Draw---------------------------------------------//
        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.Green);
            _spriteBatch.Begin();
            _spriteBatch.Draw(_backGround, new Rectangle(0, 0, _graphics.PreferredBackBufferWidth, _graphics.PreferredBackBufferHeight), Color.White);
            _player.Draw(_spriteBatch);
            _map.DrawEnemies(_spriteBatch);
            //_spriteBatch.DrawString(_sprite, _map.GetEnemies()[0].GetPosition().Y + " ", new Vector2(20, 100), Color.White);
            _spriteBatch.End();
            base.Draw(gameTime);
        }
    }
}
