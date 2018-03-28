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
    public partial class StorageProductForm : Form
    {
        private mySqlInterface mySqlInt;
        private int idStorage;

        public StorageProductForm(mySqlInterface mySql, int idS)
        {
            InitializeComponent();
            this.mySqlInt = mySql;
            idStorage = idS;
            mySqlInt.tryRequest("select storages.adres, products.title, storageproduct.count  from storages, products, storageproduct where storageproduct.storage_id = " + idStorage + " and storageproduct.storage_id = storages.id and storageproduct.product_id = products.id", storageProduct);
        }

        private void add_Click(object sender, EventArgs e)
        {
            AddProductToStorage AddProductToStorage = new AddProductToStorage(mySqlInt,idStorage);
            AddProductToStorage.ShowDialog();
            mySqlInt.tryRequest("select storages.adres, products.title, storageproduct.count  from storages, products, storageproduct where storageproduct.storage_id = " + idStorage + " and storageproduct.storage_id = storages.id and storageproduct.product_id = products.id", storageProduct);
        }
    }
}
