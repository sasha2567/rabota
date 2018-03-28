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
using System.IO;

namespace AirLinesProject
{
    public partial class AdminForm : Form
    {
        private mySqlInterface mySqlInt;
        public Login Login;
        private int idSelectProduct;

        public AdminForm(mySqlInterface mySql,Login log)
        {
            InitializeComponent();
            this.Login = log;
            this.mySqlInt = mySql;
            mySqlInt.tryRequest("select * from products", dataGridView1);
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            object temp = dataGridView1.SelectedCells[0].Value;
            for (int i = 0; i < dataGridView1.RowCount; i++)
                for (int j = 0; j < dataGridView1.ColumnCount;j++ )
                    if(temp.Equals(dataGridView1.Rows[i].Cells[j].Value))
                            idSelectProduct = Convert.ToInt32(dataGridView1.Rows[i].Cells[0].Value);
            EditProductForm editProductForm = new EditProductForm(mySqlInt, idSelectProduct);
            editProductForm.ShowDialog();
            mySqlInt.tryRequest("select * from products", dataGridView1);
        }

        private void addProduct_Click(object sender, EventArgs e)
        {
            AddProduct AddProduct = new AddProduct(mySqlInt);
            AddProduct.ShowDialog();
            mySqlInt.tryRequest("select * from products", dataGridView1);
        }

        private void addSection_Click(object sender, EventArgs e)
        {
            AddSection AddSection  = new AddSection(mySqlInt);
            AddSection.ShowDialog();
            mySqlInt.tryRequest("select * from products", dataGridView1);
        }

        private void addDiscont_Click(object sender, EventArgs e)
        {
            AddDiscontProduct AddDiscontProduct = new AddDiscontProduct(mySqlInt);
            AddDiscontProduct.ShowDialog();
            mySqlInt.tryRequest("select * from products", dataGridView1);
        }

        private void requestButton_Click(object sender, EventArgs e)
        {
            RequestForm RequestForm = new RequestForm(mySqlInt);
            RequestForm.ShowDialog();
        }
    }
}
