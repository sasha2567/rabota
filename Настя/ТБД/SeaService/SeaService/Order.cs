using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService
{
    class Order : Model
    {
        public User user { get; set; }
        
        public DateTime date { get; set; }

        public int state { get; set; }

        public Order(string _table, User _user, DateTime _date, int _state)
            : base(_table)
        {
            this.user = _user;
            this.date = _date;
            this.state = _state;
        }
    }
}
