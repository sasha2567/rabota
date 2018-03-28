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
    public partial class UserInterfase : Form
    {
        public int k = 0,r=0,s=0;
        public string index;
        public mySqlInterface mysqlinterface;
        public UserInterfase(mySqlInterface mySql,string index)
        {
            InitializeComponent();
            this.mysqlinterface = mySql;
            this.index = index;
            try
            {
                mysqlinterface.tryRequest("select title, year, country, price from products", productDGV);

                mysqlinterface.tryRequest("select image from products", image);

                mysqlinterface.tryRequest("select * from userproduct", basket);

                mysqlinterface.tryRequest("select * from products", product);

                mysqlinterface.tryRequest("select * from orders", ordersDGV);

                /*for (int i = 0; i < image.RowCount; i++)
                {
                    productDGV.Rows[i].Cells[0].Value = (new PictureBox().ImageLocation = image.Rows[i].Cells[0].Value.ToString());
                }*/
            }
            catch
            {
                MessageBox.Show("Невозможно подключиться к базе данных");
            }
        }
    
        private void выходToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void UserInterfase_Load(object sender, EventArgs e)
        {

        }

        private void DGV_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int selectIndex = 0;
            
            object temp1 = productDGV.SelectedCells[0].Value;
            for (int i = 0; i < productDGV.RowCount; i++)
                for (int j = 0; j < productDGV.ColumnCount; j++)
                    if (temp1.Equals(product.Rows[i].Cells[j].Value))
                        selectIndex = i;
            int idProduct = Convert.ToInt32(product.Rows[selectIndex].Cells[0].Value);
            ProductForm BasketForm = new ProductForm(mysqlinterface,index,idProduct);
            BasketForm.ShowDialog();
        }

        private void btn_Click(object sender, EventArgs e)
        {
            CreateOrder CreateOrder = new CreateOrder(mysqlinterface,index);
            CreateOrder.ShowDialog();
        }

        private void UserInterfase_Leave(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void viewBasket_Click(object sender, EventArgs e)
        {
            BasketForm BasketForm = new BasketForm(mysqlinterface,index);
            BasketForm.ShowDialog();
        }
    }
}
