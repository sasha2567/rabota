using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService.Models
{
    class Ticket : Model
    {
        public Order order { get; set; }

        public Passenger passenger { get; set; }

        public Voyage voyage { get; set; }

        public Ticket(Order _order, Passenger _passenger, Voyage _voyage)
        {
            this.order = _order;
            this.passenger = _passenger;
            this.voyage = _voyage;
        }
    }
}
