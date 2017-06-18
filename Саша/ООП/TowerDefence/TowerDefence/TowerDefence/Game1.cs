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
        GraphicsDeviceManager _graphics;
        SpriteBatch _spriteBatch;
        SpriteFont _sprite;
        Camera _camera;
        KeyboardState _keyboardState;
        MouseState _mouseStatePreview, _mouseStateNow;

        List<Enemy> _enemies;
        Player _player;

        Texture2D[] _enemiesTexture;
        Texture2D[] _towersTexture;

        int temp = 0;
        int counter = 0;

        private void AddEnemy(Vector2 position, Texture2D texture, Direction rotation, int hitPoints, State state, int cost)
        {
            _enemies.Add(
                new Enemy(
                    position,
                    texture,
                    rotation,
                    hitPoints,
                    state,
                    cost
                )
            );
        }
        
        public Game1()
        {
            _graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
            _graphics.PreferredBackBufferWidth = 1280;
            _graphics.PreferredBackBufferHeight = 720;
        }

        protected override void Initialize()
        {
            _camera = new Camera(GraphicsDevice.Viewport);
            _rectangle = new Rectangle(0, 0, GraphicsDevice.Viewport.Width, GraphicsDevice.Viewport.Height);
            _position = new Vector2(GraphicsDevice.Viewport.Width / 2, GraphicsDevice.Viewport.Height / 2);

            _enemiesTexture = new Texture2D[15];
            _towersTexture = new Texture2D[6];
            _enemies = new List<Enemy>();
            _player = new Player(1000000);

            //arrow = new Arrow(,,,,,,);

            base.Initialize();
        }

        protected override void LoadContent()
        {
            _spriteBatch = new SpriteBatch(GraphicsDevice);
            _sprite =  Content.Load<SpriteFont>("SpriteFont1");
            for (var i = 0; i < 15; i++)
            {
                _enemiesTexture[i] = Content.Load<Texture2D>("Enemies/TypeOne/image" + (i + 1));
            }
            Texture2D texture = Content.Load<Texture2D>("Tower/castle-first-level");

            _player.BuyTower(Level.One, 1000, new Vector2(150, 100), texture, Direction.Right, 100, 150);
            
            AddEnemy(new Vector2(150, 100), _enemiesTexture[0], Direction.Right, 100, State.Live, 100);

            _enemies[0].SetVelosityVector(new Vector2(5, 0));

        }

        protected override void UnloadContent()
        {

        }

        protected override void Update(GameTime gameTime)
        {
            _camera.Update(gameTime, this);
            if (temp % 5 == 0)
            {
                _enemies[0].Update();
                _enemies[0].ChangeTexture(_enemiesTexture[counter]);
                counter++;
                if (counter > 14) counter = 0;
            }
            temp++;
            foreach (var tower in _player._towers)
            {
                tower.Update();
                var index = tower.GetAtackTarget(_enemies);
            }
            base.Update(gameTime);
        }

        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.Green);
            _spriteBatch.Begin();
            foreach (var tower in _player._towers)
            {
                tower.Drav(_spriteBatch);
            }
            _enemies[0].Drav(_spriteBatch);
            _spriteBatch.DrawString(_sprite, _enemies[0]._screenPosition.X + " " + _enemies[0]._screenPosition.Y, new Vector2(400, 100), Color.White);
            //_spriteBatch.DrawString(_sprite, _position.X + " " + _position.Y, new Vector2(400, 300), Color.White);
            _spriteBatch.End();

            base.Draw(gameTime);
        }
    }
}
