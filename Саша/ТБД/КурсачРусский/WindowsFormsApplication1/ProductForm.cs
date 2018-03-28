using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace AirLinesProject
{
    public partial class ProductForm : Form
    {
        private mySqlInterface mySqlInt;
        private string idUser;
        private int idProduct;

        public ProductForm(mySqlInterface mySql,string idu, int idp)
        {
            InitializeComponent();
            this.mySqlInt = mySql;
            this.idUser = idu;
            this.idProduct = idp;
            
            mySqlInt.tryRequest("select * from products where id = "+idProduct,dataGridView1);
            titleLabel.Text = Convert.ToString(dataGridView1.Rows[0].Cells[3].Value);
            string image = Convert.ToString(dataGridView1.Rows[0].Cells[4].Value);
            yearLabel.Text = Convert.ToString(dataGridView1.Rows[0].Cells[5].Value);
            counrtyLabel.Text = Convert.ToString(dataGridView1.Rows[0].Cells[6].Value);
            priceLabel.Text = Convert.ToString(dataGridView1.Rows[0].Cells[7].Value);
            mySqlInt.tryRequest("select * from characteristics where id = (select characteristic_id from products where id = "+idProduct+")", dataGridView1);
            measurementLabel.Text = Convert.ToString(dataGridView1.Rows[0].Cells[1].Value);
            colorLabel.Text = Convert.ToString(dataGridView1.Rows[0].Cells[2].Value);
            weigthLabel.Text = Convert.ToString(dataGridView1.Rows[0].Cells[3].Value);
            brendLabel.Text = Convert.ToString(dataGridView1.Rows[0].Cells[4].Value);
            powerLabel.Text = Convert.ToString(dataGridView1.Rows[0].Cells[5].Value);
            mySqlInt.tryRequest("select * from products where id = " + idProduct, product);
        }

        private void addToBasket_Click(object sender, EventArgs e)
        {
            bool flagAdd = false;
            double price;
            string price2;
            price = Convert.ToDouble(product.Rows[0].Cells[7].Value);
            price2 = price.ToString();
            price2 = price2.Replace(",", ".");
            mySqlInt.tryRequest("select * from userproduct where user_id = " + idUser, temp);
            for (int i = 0; i < temp.Rows.Count; i++)
                if (idProduct == (Convert.ToInt32(temp.Rows[i].Cells[1].Value)))
                    flagAdd = true;
            if (flagAdd == false)
                mySqlInt.tryRequest("insert into userproduct values (" + idUser + "," + product.Rows[0].Cells[0].Value.ToString() + "," + "1, " + price2 + ")");
            else
            {
                int count = 0;
                mySqlInt.tryRequest("select * from userproduct where user_id = " + idUser + " and product_id = " + idProduct, temp);
                count = Convert.ToInt32(temp.Rows[0].Cells[2].Value);
                count++;
                price = Convert.ToDouble(product.Rows[0].Cells[7].Value);
                price = price * Convert.ToDouble(count);
                price2 = price.ToString();
                price2 = price2.Replace(",", ".");
                string request = "UPDATE userproduct SET number = " + count;
                request += ", summ = " + price2;
                request += " where user_id = " + idUser + " and  product_id = " + idProduct;
                mySqlInt.tryRequest(request);
            }
            this.Hide();
        }
    }
}
