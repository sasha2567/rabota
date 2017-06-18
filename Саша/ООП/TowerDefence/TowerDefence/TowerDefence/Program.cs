using System;

namespace TowerDefence
{
    public enum State { Live, Dead };
    public enum Direction { Up, Down, Left, Right };
    public enum Level { One, Two, Three};

#if WINDOWS || XBOX
    static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        static void Main(string[] args)
        {
            using (Game1 game = new Game1())
            {
                game.Run();
            }
        }
    }
#endif
}

