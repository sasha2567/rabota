using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Windows.Forms;

using MySql.Data.MySqlClient;
using MySql.Data.Common;
using MySql.Data;
using MySql;

namespace AirLinesProject
{
    public class mySqlInterface
    {
        string Connect ="";

        public MySqlConnection mySqlCon;
        public MySqlCommand mySqlCom;

        public mySqlInterface()
        {
            mySqlCon = new MySqlConnection();
            MySqlConnectionStringBuilder mysqlCSB;
            mysqlCSB = new MySqlConnectionStringBuilder();
            mysqlCSB.Server = "127.0.0.1";
            mysqlCSB.Database = "ud";
            mysqlCSB.UserID = "root";
            mysqlCSB.Password = "ghjcnjnf";
            mySqlCon.ConnectionString = mysqlCSB.ConnectionString;   
        }

        public void Open()
        {
            try
            {
                mySqlCon.Open();
            }
            catch (Exception e)
            {
                MessageBox.Show("Ошибка подключения\n" + e.Message);
            }
        }

        public void tryRequest(string request)
        {
            mySqlCom = new MySqlCommand(request, mySqlCon);
            Open();
            try
            {
                mySqlCom.ExecuteNonQuery();    
            }
            catch (Exception e)
            {
                MessageBox.Show("Error2:" + e.Message);
            }
            Close();
        }

        public void tryRequest(string request, DataGridView dgv)
        {
            mySqlCom = new MySqlCommand(request, mySqlCon);
            Open();
            try
            {
                mySqlCom.ExecuteNonQuery();
                MySqlDataAdapter da = new MySqlDataAdapter(mySqlCom);
                da.SelectCommand = mySqlCom;
                DataSet ds = new DataSet();
                da.Fill(ds);
                dgv.DataSource = ds.Tables[0];
                for (int i = 0; i < dgv.ColumnCount; i++)
                    dgv.Columns[i].AutoSizeMode = DataGridViewAutoSizeColumnMode.Fill;
            }
            catch (Exception e)
            {
                MessageBox.Show("Error1:" + e.Message);
            }
            Close();
        }

        public void tryRequest(string request, ComboBox comboBox)
        {
            mySqlCom = new MySqlCommand(request, mySqlCon);
            Open();
            MySqlCommand cm = new MySqlCommand(request, mySqlCon);
            try
            {
                comboBox.Items.Clear();
                MySqlDataReader rd = cm.ExecuteReader();
                while (rd.Read())
                {
                    string table = rd.GetString(0);
                    comboBox.Items.Add("" + table);
                }
            }
            catch (Exception e)
            {
                MessageBox.Show("Error!!!"+e.Message); return;
            }
            Close();
        }

        public void AddRow(string request)
        {
            mySqlCom = new MySqlCommand(request, mySqlCon);
            Open();
            try
            {
                mySqlCom.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                MessageBox.Show("Error:" + e.Message);
            }
            Close();
        }

        public void Close()
        {
            mySqlCon.Close();
        }
    }
}