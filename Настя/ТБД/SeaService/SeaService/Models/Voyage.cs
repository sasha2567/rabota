﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService
{
    public class Voyage : Model
    {
        public Location from { get; set; }

        public Location to { get; set; }
        
        public DateTime date { get; set; }

        public DateTime time { get; set; }

        public int duration { get; set; }

        public Vessel vessel { get; set; }

        public Voyage(Location _from, Location _to, DateTime _date, DateTime _time, int _duration, Vessel _vessel)
        {
            this.from = _from;
            this.to = _to;
            this.date = _date;
            this.time = _time;
            this.duration = _duration;
            this.vessel = _vessel;
        }

        public string toSting()
        {
            return this.from.name + " - " + this.to.name;
        }
    }
}
