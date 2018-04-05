using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService.Models
{
    class Passenger : Model
    {
        public string firstName { get; set; }

        public string lastName { get; set; }

        public string secondName { get; set; }

        public string documentType { get; set; }

        public string documentNumber { get; set; }

        public string sex { get; set; }

        public DateTime documentExpire { get; set; }

        public DateTime birthday { get; set; }

        public Passenger(string _firstName, string _lastName, string _secondName, string _documentType, string _documentNumber, string _sex, DateTime _documentExpire, DateTime _birthday)
        {
            this.firstName = _firstName;
            this.lastName = _lastName;
            this.secondName = _secondName;
            this.documentType = _documentType;
            this.documentNumber = _documentNumber;
            this.sex = _sex;
            this.documentExpire = _documentExpire;
            this.birthday = _birthday;
        }
    }
}
