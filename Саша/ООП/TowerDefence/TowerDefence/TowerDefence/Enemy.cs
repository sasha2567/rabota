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
        public int _hitPoints;
        public int _cost;
        
        private Modificator _modificator;
        private int _modificatorTime;
        private int _velosityBeforeModificators;
        private int _counter;
        private bool _rotationFlag;

        public Enemy(Vector2 position, Texture2D texture, Direction rotation, int hitPoints, State state, int cost)
            : base(position, texture, rotation)
        {
            _hitPoints = hitPoints;
            _state = state;
            _cost = cost;
        }

        public void Update()
        {
            switch (_modificator)
            {
                case Modificator.Poison:
                    _velosity = (int)(_velosityBeforeModificators * 0.7);
                    if (_counter % 5 == 0 && _modificatorTime > 0)
                    {
                        this.Hitting(5);
                        _modificatorTime--;
                    }
                    base.Update();
                    break;
                case Modificator.Frozen:
                    if (_counter % 5 == 0 && _modificatorTime > 0)
                    {
                        _velosity = (int)(_velosityBeforeModificators * 0.5);
                    }
                    base.Update();
                    break;
                case Modificator.Stun:
                    _velosity = 0;
                    break;
                default:
                    _velosity = _velosityBeforeModificators;
                    base.Update();
                    break;
            }
            _counter++;
            if (_modificatorTime == 0)
            { 
                _modificator = Modificator.None; 
            }
        }

        public void Hitting(int damage)
        {
            _hitPoints -= damage;
            if (_hitPoints < 0)
            {
                _state = State.Dead;
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
