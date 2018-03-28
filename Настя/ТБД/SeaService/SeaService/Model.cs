using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService
{
    abstract class Model
    {
        protected string _tableName{ get; set; }
        
        protected int _id { get; set; }

        public Model(string table)
        {
            this._tableName = table;
        }

        public void save()
        {
            var connector = new MySQLConnector();
            var sql = InsertToSql(this);
            connector.tryRequest(sql);
        }

        public void getOne()
        {
            var connector = new MySQLConnector();
            var sql = "select * from " + this._tableName + " where id = " + this._id;
            connector.tryRequest(sql);
        }

        public void delete()
        {
            var connector = new MySQLConnector();
            var sql = "delete from " + this._tableName + " where id = " + this._id;
            connector.tryRequest(sql);
        }

        protected string InsertToSql(params object[] obj)
        {
            var dicts = new Dictionary<string, IEnumerable<object>>();
            var type = obj.First().GetType();
            foreach (var prop in type.GetProperties())
            {
                dicts.Add(prop.Name, obj.Select(x => prop.GetValue(x)));
            }
            Func<object, string> toQlsValue = x =>
            {
                var typesUseQuotes = new[]
                {
                    typeof(string),
                    typeof(DateTime),
                    typeof(TimeSpan),
                };
                return typesUseQuotes.Contains(x.GetType())
                    ? "'" + x + "'"
                    : x + "";
            };
            var valuesAsStr = new List<string>();
            var arr = dicts.Values.Select(x => x.Select(toQlsValue).ToArray());
            for (var i = 0; i < arr.First().Count(); i++)
            {
                var objToStr = arr.Select( x => toQlsValue(x[i])).ToList();
                valuesAsStr.Add("(" + string.Join(",", objToStr)+ ")");
            }
            var fieds = string.Join(",", dicts.Keys);
            var sqlQuery = "insert into " + this._tableName + " (" + fieds + ") values " + string.Join(",", valuesAsStr);
            return sqlQuery;
        }
    }
}
