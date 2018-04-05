using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService
{
    public class Location : Model
    {
        public string name { get; set; }

        public string code { get; set; }

        public Location(string _name, string _code)
        {
            this.name = _name;
            this.code = _code;
        }

        public string ToSting()
        {
            return this.name + " (" + this.code + ")";
        }
    }
}
