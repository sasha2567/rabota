using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService
{
    class Vessel : Model
    {
        public string type { get; set; }

        public string name { get; set; }

        public Vessel(string _table, string _name, string _type)
            : base(_table)
        {
            this.name = _name;
            this.type = _type;
        }
    }
}
