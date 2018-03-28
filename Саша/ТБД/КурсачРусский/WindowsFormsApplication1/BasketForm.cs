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
    public partial class BasketForm : Form
    {
        public string index;
        private mySqlInterface mySqlInt;

        public BasketForm(mySqlInterface mySql, string index)
        {
            InitializeComponent();
            this.mySqlInt = mySql;
            this.index = index;
            mySqlInt.tryRequest("select * from userproduct where user_id = " + index, basket);
            int count = 0;
            double summ = 0;
            for (int i = 0; i < basket.RowCount; i++)
            {
                summ += Convert.ToDouble(basket.Rows[i].Cells[3].Value);
                count += Convert.ToInt32(basket.Rows[i].Cells[2].Value);
            }
            string Summ = Convert.ToString(summ);
            Summ = Summ.Replace(",", ".");
            label4.Text = Summ + " руб.";
            label3.Text = count + " тов.";
            mySqlInt.tryRequest("select products.title, userproduct.number, userproduct.summ from products,userproduct where userproduct.user_id = " + index + " and userproduct.product_id = products.id", basketDGV);
        }

        private void addOrder_Click(object sender, EventArgs e)
        {
            CreateOrder CreateOrder = new CreateOrder(mySqlInt, index);
            CreateOrder.ShowDialog();
            this.Hide();
        }
    }
}
