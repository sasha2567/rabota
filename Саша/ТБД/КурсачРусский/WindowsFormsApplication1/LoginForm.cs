using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace AirLinesProject
{
    
    public partial class Login : Form
    {
        public mySqlInterface mysqlinterface;

        private void ConnectToMySQL()
        {
            mysqlinterface = new mySqlInterface();
            mysqlinterface.Open();
            mysqlinterface.Close();
        }
        public Login()
        {
            InitializeComponent();
            ConnectToMySQL();
        }

        private void connect_Click(object sender, EventArgs e)
        {
            try
            {
                mysqlinterface.tryRequest("select * from users", dataGridView1);
            }
            catch
            {
                MessageBox.Show("Не удалось подключиться к базе");
            }
            for (int i = 0; i < dataGridView1.RowCount;i++)
                if(Convert.ToString(dataGridView1.Rows[i].Cells[2].Value)==userName.Text)
                    if (Convert.ToString(dataGridView1.Rows[i].Cells[3].Value) == userPassword.Text)
                    { 
                        int accses = Convert.ToInt32(dataGridView1.Rows[i].Cells[1].Value);
                        if(accses == 1)
                        {
                            this.Hide();
                            UserInterfase User = new UserInterfase(mysqlinterface,Convert.ToString(dataGridView1.Rows[i].Cells[0].Value));
                            User.ShowDialog();
                            this.Close();
                        }
                        if (accses == 2)
                        {
                            this.Hide();
                            AdminForm AdminForm = new AdminForm(mysqlinterface,this);
                            AdminForm.ShowDialog();
                            this.Close();
                        }
                        if (accses == 3)
                        {
                            this.Hide();
                            StorageForm StorageForm = new StorageForm(mysqlinterface);
                            StorageForm.ShowDialog();
                            this.Close();
                        }
                    }
        }

        private void exitClick(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void close_Click(object sender, EventArgs e)
        {
           Application.Exit();
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            RegistrationForm Registration = new RegistrationForm(mysqlinterface,this);
            Registration.ShowDialog();
        }

        private void Login_Activated(object sender, EventArgs e)
        {
            this.Visible=true;
        }
    }
}
