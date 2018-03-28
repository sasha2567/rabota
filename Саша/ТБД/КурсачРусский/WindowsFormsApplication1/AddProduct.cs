using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using MySql.Data;
using MySql;


namespace AirLinesProject
{
    public partial class AddProduct : Form
    {
        private mySqlInterface my;
        
        public AddProduct(mySqlInterface mySql)
        {
            InitializeComponent();
            this.my = mySql;
            my.tryRequest("select name_section from section", sectionCombo);
        }

        private void add_Click(object sender, EventArgs e)
        {
            string title, image, country, measurement, color, brend;
            int year = 0, power = 0;
            double price = 0, weigth = 0;
            title = titleEdit.Text;
            image = imageEdit.Text;
            country = countryEdit.Text;
            measurement = measurementEdit.Text;
            color = colorEdit.Text;
            brend = brendEdit.Text;
            try
            {
                year = Convert.ToInt32(yearEdit.Text);
            }
            catch
            {
                MessageBox.Show("Некоректный формат года выпуска");
            }
            try
            {
                price = Convert.ToDouble(priceEdit.Text);
            }
            catch
            {
                MessageBox.Show("Некоректный формат цены");
            }
            try
            {
                weigth = Convert.ToDouble(weigthEdit.Text);
            }
            catch
            {
                MessageBox.Show("Некоректный формат веса");
            }
            try
            {
                power = Convert.ToInt32(powerEdit.Text);
            }
            catch
            {
                MessageBox.Show("Некоректный формат мощности");
            }
            string price1 = price.ToString().Replace(",", ".");
            string weigth1 = weigth.ToString().Replace(",", ".");
            my.tryRequest("select * from characteristics", dataGridView1);
            int idc = dataGridView1.RowCount;
            if (idc == 0)
                idc = 1;
            string request = "insert into characteristics values (" + idc + ",'" + measurement + "'";
            request += ", '" + color + "'";
            request += ", " + weigth1;
            request += ", '" + brend + "'";
            request += ", " + power;
            request += ")";
            my.tryRequest(request);
            my.tryRequest("select * from products", dataGridView1);
            int id = dataGridView1.RowCount;
            int ids = sectionCombo.SelectedIndex + 1;
            string time = DateTime.Now.ToString();
            string temp = "";
            for(int i=0; i<10; i++)
                temp+=time[i];
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
            for (int i = 0; i < 4;i++ )
                temp2 += yearm[i];
            temp2 += "-";
            for (int i = 0; i < 2; i++)
                temp2 += month[i];
            temp2 += "-";
            for (int i = 0; i < 2; i++)
                temp2 += day[i];
            time = time.Replace(temp, temp2);
            request = "insert into products values (" + id + ", " + ids + ", " + idc;
            request += ",'" + title + "'";
            request += ", '" + image + "'";
            request += ", " + year;
            request += ", '" + country + "'";
            request += ", " + price1;
            request += ", '" + time + "'";
            request += ", 0)";
            my.tryRequest(request);
            this.Hide();
        }
    }
}
