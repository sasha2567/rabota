using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService
{
    class User: Model
    {
        public string email { get; set; }
        
        public string phone { get; set; }

        public string password { get; set; }

        public int role { get; set; }

        public User(string _email, string _phone, string _password, int _role)
        {
            this.email = _email;
            this.phone = _phone;
            this.password = _password;
            this.role = _role;
        }
    }
}
