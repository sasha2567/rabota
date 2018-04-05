using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using MySql.Data.Common;
using MySql.Data;
using MySql;
using System.IO;
using System.Data;

namespace SeaService
{
    class MySQLConnector
    {
        public MySqlConnection connection;
        public MySqlCommand command;

        public MySQLConnector()
        {
            var server = "";
            var user = "";
            var password = "";
            var database = "";
            connection = new MySqlConnection();
            MySqlConnectionStringBuilder mysqlCSB = new MySqlConnectionStringBuilder();
            using (var file = new StreamReader("base/connect.txt"))
            {
                server = file.ReadLine();
                user = file.ReadLine();
                password = file.ReadLine();
                database = file.ReadLine();
            }
            mysqlCSB.Server = server;
            mysqlCSB.UserID = user;
            mysqlCSB.Password = password;
            mysqlCSB.Database = database;
            connection.ConnectionString = mysqlCSB.ConnectionString;
        }

        public void Open()
        {
            try
            {
                connection.Open();
            }
            catch (Exception e)
            {
                MessageBox.Show("Ошибка подключения\n" + e.Message);
            }
        }

        public DataTable tryRequest(string request)
        {
            command = new MySqlCommand(request, connection);
            DataSet dataSet = new DataSet();
            Open();
            try
            {
                command.ExecuteNonQuery();
                MySqlDataAdapter dataAdapter = new MySqlDataAdapter(command);
                dataAdapter.SelectCommand = command;
                dataAdapter.Fill(dataSet);
            }
            catch (Exception e)
            {
                MessageBox.Show("Ошибка:" + e.Message);
            }
            Close();
            return dataSet.Tables[0];
        }

        public void Close()
        {
            connection.Close();
        }
    }
}
