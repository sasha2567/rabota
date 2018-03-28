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
    public partial class CreateOrder : Form
    {
        public string index;
        private mySqlInterface mySqlInt;

        public CreateOrder(mySqlInterface mySql, string index)
        {
            InitializeComponent();
            this.index = index;
            this.mySqlInt = mySql;
            mySqlInt.tryRequest("select name from couriers", courierCombo);
            mySqlInt.tryRequest("select id from couriers", dataGridView1);
            mySqlInt.tryRequest("select * from userproduct where user_id = " + index, basket);
        }

        private void addOrder_Click(object sender, EventArgs e)
        {
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
            mySqlInt.tryRequest("select id from orders",orders);
            int idOrder = orders.RowCount;
            if (idOrder == 0)
                idOrder = 1;
            int idCourier = 0;
            idCourier = Convert.ToInt32(dataGridView1.Rows[courierCombo.SelectedIndex].Cells[0].Value);
            
            string payment = paymentEdit.Text;
            string note=noteEdit.Text;
            string shipping=shippingEdit.Text;
            double summ = 0;
            for (int i = 0; i < basket.RowCount; i++)
                summ += Convert.ToDouble(basket.Rows[i].Cells[3].Value);
            string Summ = Convert.ToString(summ);
            Summ = Summ.Replace(",",".");
            
            mySqlInt.tryRequest("insert into orders values(" + idOrder + ", " + index + ", '" + payment + "', " + Summ + " , '" + note + "', " + idCourier + ", 1, '" + shipping + "', '" + time + "')");
            for (int i = 0; i < basket.RowCount-1; i++)
                mySqlInt.tryRequest("insert into orderproduct values(" + idOrder + "," + Convert.ToInt32(basket.Rows[i].Cells[1].Value) + "," + Convert.ToInt32(basket.Rows[i].Cells[2].Value) + "," + Convert.ToString(basket.Rows[i].Cells[3].Value).Replace(",",".") + ")");
        }
    }
}
