using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService
{
    public class Vessel : Model
    {
        public string name { get; set; }

        public int number { get; set; }

        public int capacity { get; set; }

        public Vessel(string _name, int _number, int _capacity)
        {
            this.name = _name;
            this.number = _number;
            this.capacity = _capacity;
        }
    }
}
