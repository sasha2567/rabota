using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService
{
    class Location : Model
    {
        public string name { get; set; }

        public string code { get; set; }

        public Location(string _table, string _name, string _code)
            : base(_table)
        {
            this.name = _name;
            this.code = _code;
        }
    }
}
