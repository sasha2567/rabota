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
    public partial class RegistrationForm : Form
    {
        public int idUser = 0;
        public Login Login;
        public mySqlInterface mysqlinterface;
        public RegistrationForm(mySqlInterface mySql, Login log)
        {
            InitializeComponent();
            this.Login = log;
            this.mysqlinterface = mySql;
            mysqlinterface.tryRequest("select id from users", dataGridView1);
            idUser = dataGridView1.RowCount;
            if (idUser == 0)
                idUser = 1;
            mysqlinterface.tryRequest("select * from users;", dataGridView1);
        }

        private void reg_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            string login, password, email, adres, fio, phone;
            int year = 0;
            login = userName.Text;
            password = userPassword.Text;
            email = emailEdit.Text;
            adres = adresEdit.Text;
            fio = fioEdit.Text;
            phone = phoneEdit.Text;
            try
            {
                year = Convert.ToInt32(yearEdit.Text);
            }
            catch
            {
                MessageBox.Show("Неверный формат года рождения");
            }
            string time = DateTime.Now.ToString();
            string temp = "";
            for (int i = 0; i < 10; i++)
                temp += time[i];
            char[] t = temp.ToCharArray();
            char[] yearm = new char[4];
            char[] month = new char[2];
            char[] day = new char[2];
            for (int i = 0; i < 4; i++)
                yearm[i] = t[i + 6];
            for (int i = 0; i < 2; i++)
            {
                day[i] = t[i];
                month[i] = t[i + 3];
            }
            string temp2 = "";
            for (int i = 0; i < 4; i++)
                temp2 += yearm[i];
            temp2 += "-";
            for (int i = 0; i < 2; i++)
                temp2 += month[i];
            temp2 += "-";
            for (int i = 0; i < 2; i++)
                temp2 += day[i];
            time = time.Replace(temp, temp2);
            if (adresEdit.Text == "" || fioEdit.Text == "" || yearEdit.Text == "" || phoneEdit.Text == "" || emailEdit.Text == "" || userName.Text == "" || userPassword.Text == "")
                return;
            try
            {
                string request = "insert into users values(" + idUser + ", 1";
                request += ", '" + login + "'";
                request += ", '" + password + "'";
                request += ", '" + fio + "'";
                request += ", " + year;
                request += ", '" + email + "'";
                request += ", '" + phone + "'";
                request += ", '" + adres + "'";
                request += ", '" + time + "'";
                request += ", 0)";
                mysqlinterface.tryRequest(request);
                MessageBox.Show("Поздравлям с регистрацией ", " сообщение", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
            }
            catch
            {
                MessageBox.Show("Регистрация не удалась ", " сообщение", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
          
        }


        
    }
}
