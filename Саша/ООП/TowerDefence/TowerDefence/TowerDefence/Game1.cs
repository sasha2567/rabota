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

        List<Texture2D> _enemiesTexture;
        Texture2D[] _towersTexture;
        Texture2D[] _weaponTexture;

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
            _towersTexture = new Texture2D[6];
            _weaponTexture = new Texture2D[6];
            _player = new Player(1000000);

            base.Initialize();
        }

        //-------------------------------------------------------------------LoadContent--------------------------------------//
        protected override void LoadContent()
        {
            _spriteBatch = new SpriteBatch(GraphicsDevice);
            _sprite =  Content.Load<SpriteFont>("SpriteFont1");
            for (var i = 0; i < 15; i++)
            {
                _enemiesTexture.Add(Content.Load<Texture2D>("Enemies/TypeOne/image" + (i + 1)));
            }
            _towersTexture[0] = Content.Load<Texture2D>("Tower/castle-second-level");
            _weaponTexture[0] = Content.Load<Texture2D>("Weapon/arrow");

            _player.BuyTower(1000, 10000, new Vector2(150, 100), _towersTexture[0], Direction.Right, 100, 250, _weaponTexture[0], Modificator.Poison);
            _map = new Map(new Vector2(1000, 600), Content.Load<Texture2D>("Tower/castle-first-level"), _enemiesTexture);
            _map.AddEnemy(new Vector2(450, 250), _enemiesTexture[0], Direction.Right, 100, State.Live, 100);
            _map.AddEnemy(new Vector2(450, 200), _enemiesTexture[0], Direction.Right, 100, State.Live, 100);
            _map.AddEnemy(new Vector2(400, 250), _enemiesTexture[0], Direction.Right, 100, State.Live, 100);
            _map.AddEnemy(new Vector2(400, 200), _enemiesTexture[0], Direction.Right, 100, State.Live, 100);
            _map.SetVelosity(1);
            _map.SetModificator(Modificator.None, 0);
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
            _player.Update();
            base.Update(gameTime);
        }

        //-------------------------------------------------------------------Draw---------------------------------------------//
        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.Green);
            _spriteBatch.Begin();
            _player.Draw(_spriteBatch);
            _map.DrawEnemies(_spriteBatch);
            //_spriteBatch.DrawString(_sprite, _map.GetEnemies()[0].GetPosition().Y + " ", new Vector2(20, 100), Color.White);
            _spriteBatch.End();
            base.Draw(gameTime);
        }
    }
}
