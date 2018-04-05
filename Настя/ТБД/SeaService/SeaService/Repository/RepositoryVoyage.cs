using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SeaService.Repository
{
    public class RepositoryVoyage
    {
        private List<Voyage> _entities;
        protected string _tableName = "voyage";

        public RepositoryVoyage()
        {
            this._entities = new List<Voyage>();
        }

        public List<Voyage> GetList()
        {
            return this._entities;
        }

        public void GetFromDB()
        {
            var connector = new MySQLConnector();
            var sql = "select * from " + this._tableName;
            var result = connector.tryRequest(sql);
            this.SetCollection(result);
        }

        protected void SetCollection(DataTable result)
        {
            var rows = result.Rows;
            foreach (DataRow elem in rows)
            {
                var vessel = this.getVesselById((int)elem.ItemArray[1]);
                var from = this.getLocationById((int)elem.ItemArray[2]);
                var to = this.getLocationById((int)elem.ItemArray[3]);

                DateTime elemDate = DateTime.Parse(elem.ItemArray[4].ToString());
                var date = new DateTime(elemDate.Year, elemDate.Month, elemDate.Day);
                var time = DateTime.Parse(elem.ItemArray[5].ToString());
                var model = new Voyage(from, to, date, time, (int)elem.ItemArray[6], vessel);
                model._id = (int)elem.ItemArray[0];
                this._entities.Add(model);
            }
        }

        protected Vessel getVesselById(int id)
        {
            var connector = new MySQLConnector();
            var sql = "select * from vessel where id = " + id;
            var vesselData = connector.tryRequest(sql);
            var vesselRows = vesselData.Rows;
            foreach (DataRow vesselElem in vesselRows)
            {
                var vessel = new Vessel((string)vesselElem.ItemArray[1], (int)vesselElem.ItemArray[2], (int)vesselElem.ItemArray[3]);
                vessel._id = (int)vesselElem.ItemArray[0];
                return vessel;
            }
            return null;
        }

        protected Location getLocationById(int id)
        {
            var connector = new MySQLConnector();
            var sql = "select * from port where id = " + id;
            var portData = connector.tryRequest(sql);
            var portRows = portData.Rows;
            foreach (DataRow portElem in portRows)
            {
                var port = new Location((string)portElem.ItemArray[1], (string)portElem.ItemArray[2]);
                port._id = (int)portElem.ItemArray[0];
                return port;
            }
            return null;
        }

        public void GetFromDBByLocationAndDate(Location from, Location to, DateTime dateFrom)
        {
            var connector = new MySQLConnector();
            var sql = "select * from " + this._tableName + " where from_id = " + from._id + " and to_id = " + to._id + " and date = '" + dateFrom.Year + "-" + dateFrom.Month + "-" + dateFrom.Day + "'";
            var result = connector.tryRequest(sql);
            this.SetCollection(result);
        }
    }
}
