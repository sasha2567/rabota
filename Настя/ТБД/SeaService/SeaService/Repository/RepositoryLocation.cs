using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService.Repository
{
    public class RepositoryLocation
    {
        private List<Location> _entities;
        protected string _tableName = "port";

        public RepositoryLocation()
        {
            this._entities = new List<Location>();
        }

        public List<Location> GetList()
        {
            return this._entities;
        }

        protected void SetCollection(DataTable result)
        {
            var rows = result.Rows;
            this._entities.Clear();
            foreach (DataRow elem in rows)
            {
                var model = new Location((string)elem.ItemArray[1], (string)elem.ItemArray[2]);
                model._id = (int)elem.ItemArray[0];
                this._entities.Add(model);
            }
        }
        public void GetFromDB()
        {
            var connector = new MySQLConnector();
            var sql = "select * from " + this._tableName;
            var result = connector.tryRequest(sql);
            this.SetCollection(result);
        }

        public void GetFromDBByCode(string code)
        {
            var connector = new MySQLConnector();
            var sql = "select * from " + this._tableName + " where code = '" + code + "'";
            var result = connector.tryRequest(sql);
            this.SetCollection(result);
        } 
    }
}
