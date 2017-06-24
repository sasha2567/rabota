using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Microsoft.Xna.Framework;
using Microsoft.Xna.Framework.Graphics;

namespace TowerDefence
{
    class Enemy : MoveUnit
    {
        private int _hitPoints;
        private int _cost;
        
        private Modificator _modificator;
        private int _modificatorTime;
        private int _velosityBeforeModificators;
        private int _counter;
        private bool _rotationFlag;
        private int _updateInterval;

        public Enemy(Vector2 position, Texture2D texture, Direction rotation, int hitPoints, State state, int cost)
            : base(position, texture, rotation)
        {
            _hitPoints = hitPoints;
            _state = state;
            _cost = cost;
            SetAngle(GetAngle());
            _updateInterval = 20;
        }

        public void Update(GameTime gameTime)
        {
            if (gameTime.TotalGameTime.Milliseconds % _updateInterval == 0)
            {
                base.Update();
            }
            if (_modificatorTime == 0)
            { 
                _modificator = Modificator.None;
                _velosity = _velosityBeforeModificators;
            }
        }

        public void Hitting(int damage, Modificator modificaor = Modificator.None, int modificatorTime = 0)
        {
            _hitPoints -= damage;
            if (_hitPoints < 0)
            {
                _state = State.Dead;
            }
            if (modificaor != Modificator.None)
            {
                _velosityBeforeModificators = _velosity;
                _modificator = modificaor;
                _modificatorTime = modificatorTime;
                SetModificatorType();
            }
        }

        public void SetModificatorType()
        {
            switch (_modificator)
            {
                case Modificator.Poison:
                    _velosity = (int)(_velosityBeforeModificators * 0.7);
                    this.Hitting(5);
                    break;
                case Modificator.Frozen:
                    _velosity = (int)(_velosityBeforeModificators * 0.5);
                    break;
                case Modificator.Stun:
                    _velosity = 0;
                    break;
            }
        }

        public void SetVelosityVector(int velosity)
        {
            base.SetVelosityVector(velosity);
            _velosityBeforeModificators = _velosity;
        }

        public void SetModificator(Modificator modificator, int modificatorTime)
        {
            _modificator = modificator;
            _modificatorTime = modificatorTime;
        }

        public void SetTempVelosity(int velosity)
        {
            _velosityBeforeModificators = velosity;
        }

        public bool IsLive()
        {
            return _state == State.Live ? true : false;
        }

        public int GetVelosity()
        { 
            return _velosity;
        }

        public void SetRotationFlag(bool flag)
        {
            _rotationFlag = flag;
        }

        public bool GetRotationFlag()
        {
            return _rotationFlag;
        }
    }
}
