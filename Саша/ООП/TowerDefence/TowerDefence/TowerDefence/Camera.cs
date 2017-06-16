using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    class Camera
    {
        public Vector2 _screenCenter;
        public Matrix _matrixScreen;
        Viewport _viev;

        public Camera(Viewport newviev)
        {
            _viev = newviev;
        }

        public void Update(GameTime time, Game1 Knights)
        {
            _screenCenter = new Vector2(Knights._position.X + (Knights._rectangle.Width / 2) - 640, Knights._position.Y + (Knights._rectangle.Height / 2) - 360);
            _matrixScreen = Matrix.CreateScale(new Vector3(1, 1, 1)) * Matrix.CreateTranslation(new Vector3(-_screenCenter.X, -_screenCenter.Y, 1));
        }
    }
}
