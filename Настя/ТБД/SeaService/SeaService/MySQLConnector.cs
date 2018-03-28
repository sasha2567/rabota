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

namespace SeaService
{
    class MySQLConnector
    {
        string Connect = "";

        public MySqlConnection connection;
        public MySqlCommand command;

        public MySQLConnector()
        {
            connection = new MySqlConnection();
            MySqlConnectionStringBuilder mysqlCSB = new MySqlConnectionStringBuilder();
            mysqlCSB.Server = "127.0.0.1";
            mysqlCSB.Database = "ud";
            mysqlCSB.UserID = "root";
            mysqlCSB.Password = "";
            mysqlCSB.Database = "seas";
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

        public void tryRequest(string request)
        {
            command = new MySqlCommand(request, connection);
            Open();
            try
            {
                command.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                MessageBox.Show("Error2:" + e.Message);
            }
            Close();
        }

        public void Close()
        {
            connection.Close();
        }
    }
}
