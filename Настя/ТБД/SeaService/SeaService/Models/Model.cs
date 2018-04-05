using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService
{
    public abstract class Model
    {
        public int _id { get; set; }

        public Model() { }

        public DataTable Save()
        {
            var connector = new MySQLConnector();
            var sql = this.InsertSql();
            return connector.tryRequest(sql);
        }

        public DataTable GetOne(string tableName)
        {
            var connector = new MySQLConnector();
            var sql = "select * from " + tableName + " where id = " + this._id;
            return connector.tryRequest(sql);
        }

        public DataTable Delete(string tableName)
        {
            var connector = new MySQLConnector();
            var sql = "delete from " + tableName + " where id = " + this._id;
            return connector.tryRequest(sql);
        }

        protected string InsertSql()
        {
            return "";
        }

        protected string UpdateSql()
        {
            return "";
        }
    }
}
