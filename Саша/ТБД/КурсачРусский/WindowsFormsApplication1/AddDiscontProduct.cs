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
    public partial class AddDiscontProduct : Form
    {
        private mySqlInterface mySqlInt;

        public AddDiscontProduct(mySqlInterface mySql)
        {
            InitializeComponent();
            this.mySqlInt = mySql;
            mySqlInt.tryRequest("select title from products", productCombo);
            mySqlInt.tryRequest("select id, title from products", dataGridView1);
        }

        private void addDiscont_Click(object sender, EventArgs e)
        {
            int discont = 0;
            try
            {
                discont = Convert.ToInt32(discontEdit.Text);
            }
            catch
            {
                MessageBox.Show("Неверный формат скидки");
            }
            mySqlInt.tryRequest("UPDATE products SET discount = " + discont + " where id = " + Convert.ToString(dataGridView1.Rows[productCombo.SelectedIndex].Cells[0].Value));
            this.Hide();
        }
    }
}
