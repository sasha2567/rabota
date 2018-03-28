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
    public partial class AddProductToStorage : Form
    {
        private mySqlInterface mySqlInt;
        private int idStorage;
        private int idProduct;

        public AddProductToStorage(mySqlInterface mySql,int idS)
        {
            InitializeComponent();
            this.mySqlInt = mySql;
            mySqlInt.tryRequest("select title from products", productCombo);
            mySqlInt.tryRequest("select adres from storages", storageCombo);
            if (idS != 0)
            {
                idStorage = idS;
                storageCombo.SelectedIndex = idStorage - 1;
            }
        }

        private void add_Click(object sender, EventArgs e)
        {
            int count = 0;
            count = Convert.ToInt32(countEdit.Text);
            idStorage = storageCombo.SelectedIndex + 1;
            idProduct = productCombo.SelectedIndex + 1;
            mySqlInt.tryRequest("select * from storageproduct", storageproduct);
            bool flagAdd = false;
            for (int i = 0; i < storageproduct.Rows.Count; i++)
                if (idStorage == (Convert.ToInt32(storageproduct.Rows[i].Cells[0].Value)) 
                    && idProduct == (Convert.ToInt32(storageproduct.Rows[i].Cells[1].Value)))
                    flagAdd = true;
            if (!flagAdd)
            {
                mySqlInt.tryRequest("insert into storageproduct values ("+idStorage+", "+idProduct+", "+count+" )");
            }
            else
            {
                mySqlInt.tryRequest("select * from storageproduct where storage_id = " + idStorage + " and product_id = " + idProduct, storageproduct);
                int count2 = 0;
                count2 = Convert.ToInt32(storageproduct.Rows[0].Cells[2].Value);
                count += count2;
                string request = "UPDATE storageproduct SET count = " + count;
                request += " where storage_id = " + idStorage + " and  product_id = " + idProduct;
                mySqlInt.tryRequest(request);
            }
            this.Hide();
        }
    }
}
