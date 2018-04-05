using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService
{
    class RepositoryUser
    {
        private List<User> _entities;
        protected string _tableName = "user";

        public RepositoryUser()
        {
            this._entities = new List<User>();
        }

        public void AddUser(User model)
        {
            this._entities.Add(model);
        }

        public List<User> GetList()
        {
            return this._entities;
        }

        public void SaveList()
        {
            foreach(var elem in this._entities)
            {
                elem.Save();
            }
        }

        public User GetUserById(int id)
        {
            this.GetFromDB();
            foreach (var elem in this._entities)
            {
                if (elem._id == id)
                {
                    return elem;
                }
            }
            return null;
        }

        public User GetUserByEmail(string email)
        {
            this.GetFromDBByEmail(email);
            foreach (var elem in this._entities)
            {
                if (elem.email == email)
                {
                    return elem;
                }
            }
            return null;
        }

        public void GetFromDB()
        {
            var connector = new MySQLConnector();
            var sql = "select * from " + this._tableName;
            var result = connector.tryRequest(sql);
            this.SetCollection(result);
        }

        public void GetFromDBByEmail(string email)
        {
            var connector = new MySQLConnector();
            var sql = "select * from " + this._tableName + " where email = '" + email + "'";
            var result = connector.tryRequest(sql);
            this.SetCollection(result);
        }

        protected void SetCollection(DataTable result)
        {
            var rows = result.Rows;
            foreach (DataRow elem in rows)
            {
                var model = new User((string)elem.ItemArray[1], (string)elem.ItemArray[2], (string)elem.ItemArray[3], (int)elem.ItemArray[4]);
                model._id = (int)elem.ItemArray[0];
                this._entities.Add(model);
            }
        }
    }
}
