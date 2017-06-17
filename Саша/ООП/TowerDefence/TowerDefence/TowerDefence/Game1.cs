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
        GraphicsDeviceManager _graphics;
        SpriteBatch _spriteBatch;
        SpriteFont _sprite;

        KeyboardState _keyboardState;
        MouseState _mouseStatePreview, _mouseStateNow;

        Camera _camera;
        public Rectangle _rectangle;
        public Vector2 _position;

        List<Enemy> _enemies;
        List<Tower> _towers;

        public Game1()
        {
            _graphics = new GraphicsDeviceManager(this);
            Content.RootDirectory = "Content";
            _graphics.PreferredBackBufferWidth = 1280;
            _graphics.PreferredBackBufferHeight = 720;
        }

        private void AddTower(Vector2 position, Vector2 screenposition, Texture2D texture, Direction rotation, int hitPoint, int distance)
        {
            _towers.Add(
                new Tower(
                    position,
                    screenposition,
                    texture,
                    rotation,
                    hitPoint,
                    distance
                )
            );
        }

        private void AddEnemy(Vector2 position, Vector2 screenposition, Texture2D texture, Direction rotation, Vector2 velosity, int hitPoints, State state)
        {
            _enemies.Add(
                new Enemy(
                    position,
                    screenposition,
                    texture,
                    rotation,
                    velosity,
                    hitPoints,
                    state
                )
            );
        }

        /// <summary>
        /// Allows the game to perform any initialization it needs to before starting to run.
        /// This is where it can query for any required services and load any non-graphic
        /// related content.  Calling base.Initialize will enumerate through any components
        /// and initialize them as well.
        /// </summary>
        protected override void Initialize()
        {
            // TODO: Add your initialization logic here
            _camera = new Camera(GraphicsDevice.Viewport);

            _towers = new List<Tower>();
            _enemies = new List<Enemy>();

            base.Initialize();
        }

        /// <summary>
        /// LoadContent will be called once per game and is the place to load
        /// all of your content.
        /// </summary>
        protected override void LoadContent()
        {
            // Create a new SpriteBatch, which can be used to draw textures.
            _spriteBatch = new SpriteBatch(GraphicsDevice);

            // TODO: use this.Content to load your game content here
        }

        /// <summary>
        /// UnloadContent will be called once per game and is the place to unload
        /// all content.
        /// </summary>
        protected override void UnloadContent()
        {
            // TODO: Unload any non ContentManager content here
        }

        /// <summary>
        /// Allows the game to run logic such as updating the world,
        /// checking for collisions, gathering input, and playing audio.
        /// </summary>
        /// <param name="gameTime">Provides a snapshot of timing values.</param>
        protected override void Update(GameTime gameTime)
        {
            // Allows the game to exit
            if (GamePad.GetState(PlayerIndex.One).Buttons.Back == ButtonState.Pressed)
                this.Exit();

            AddTower(new Vector2(0, 0), new Vector2(0, 0), new Texture2D(_graphics.GraphicsDevice, 10, 10), Direction.Left, 100, 150);

            AddEnemy(new Vector2(0, 0), new Vector2(0, 0), new Texture2D(_graphics.GraphicsDevice, 10, 10), Direction.Left, new Vector2(0, 0), 100, State.Live);

            // TODO: Add your update logic here

            base.Update(gameTime);
        }

        /// <summary>
        /// This is called when the game should draw itself.
        /// </summary>
        /// <param name="gameTime">Provides a snapshot of timing values.</param>
        protected override void Draw(GameTime gameTime)
        {
            GraphicsDevice.Clear(Color.Green);

            // TODO: Add your drawing code here

            _spriteBatch.Begin();
            _enemies[0].Drav(_spriteBatch);
            _spriteBatch.End();

            base.Draw(gameTime);
        }
    }
}
