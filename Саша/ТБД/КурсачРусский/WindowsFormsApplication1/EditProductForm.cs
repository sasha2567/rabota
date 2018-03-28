using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.IO;
using System.Windows.Forms;
using MySql.Data;
using MySql;

namespace AirLinesProject
{
    public partial class EditProductForm : Form
    {
        private mySqlInterface my;
        private int idSelectProduct;
        private int idSelectCharacteristic;

        public EditProductForm(mySqlInterface mySql,int id)
        {
            InitializeComponent();
            idSelectProduct = id;
            this.my = mySql;
            my.tryRequest("select * from products where id = "+idSelectProduct, dataGridView1);
            titleEdit.Text = Convert.ToString(dataGridView1.Rows[0].Cells[3].Value);
            imageEdit.Text = Convert.ToString(dataGridView1.Rows[0].Cells[4].Value);
            yearEdit.Text = Convert.ToString(dataGridView1.Rows[0].Cells[5].Value);
            countryEdit.Text = Convert.ToString(dataGridView1.Rows[0].Cells[6].Value);
            priceEdit.Text = Convert.ToString(dataGridView1.Rows[0].Cells[7].Value);
            my.tryRequest("select id from characteristics where id = (select characteristic_id from products where id = " + idSelectProduct + ")", dataGridView1);
            idSelectCharacteristic = Convert.ToInt32(dataGridView1.Rows[0].Cells[0].Value);
            my.tryRequest("select * from characteristics where id = (select characteristic_id from products where id = " + idSelectProduct + ")", dataGridView1);
            measurementEdit.Text = Convert.ToString(dataGridView1.Rows[0].Cells[1].Value);
            colorEdit.Text = Convert.ToString(dataGridView1.Rows[0].Cells[2].Value);
            weigthEdit.Text = Convert.ToString(dataGridView1.Rows[0].Cells[3].Value);
            brendEdit.Text = Convert.ToString(dataGridView1.Rows[0].Cells[4].Value);
            powerEdit.Text = Convert.ToString(dataGridView1.Rows[0].Cells[5].Value);
        }

        private void saveButton_Click(object sender, EventArgs e)
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
            string request = "UPDATE products SET title = '" + title + "'";
            request += ", image = '" + image + "'";
            request += ", year = " + year;
            request += ", country = '" + country + "'";
            request += ", price = " + price1;
            request += " where id = " + idSelectProduct;
            my.tryRequest(request);
            request = "UPDATE characteristics SET measurements = '" + measurement + "'";
            request += ", color = '" + color + "'";
            request += ", weigth = " + weigth1;
            request += ", brend = '" + brend + "'";
            request += ", power = " + power;
            request += " where id = " + idSelectCharacteristic;
            my.tryRequest(request);
            this.Hide();
        }
    }
}
