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
    public partial class StorageForm : Form
    {
        private mySqlInterface mySqlInt;

        public StorageForm(mySqlInterface mySql)
        {
            InitializeComponent();
            this.mySqlInt = mySql;
            mySqlInt.tryRequest("select storages.id, couriers.name, storages.adres from storages,couriers where storages.courier_id = couriers.id", storages);
            mySqlInt.tryRequest("select couriers.name, storages.adres from storages,couriers where storages.courier_id = couriers.id", SDGV);
        }

        private void SDVG_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int idStorage = -1;
            object temp1 = SDGV.SelectedCells[0].Value;
            for (int i = 0; i < storages.RowCount; i++)
                for (int j = 1; j < storages.ColumnCount; j++)
                    if (temp1.Equals(storages.Rows[i].Cells[j].Value))
                        idStorage = Convert.ToInt32(storages.Rows[i].Cells[0].Value);
            StorageProductForm StorageProductForm = new StorageProductForm(mySqlInt, idStorage);
            StorageProductForm.ShowDialog();
            mySqlInt.tryRequest("select couriers.name, storages.adres from storages,couriers where storages.courier_id = couriers.id", SDGV);
        }

        private void addProductToStorage_Click(object sender, EventArgs e)
        {
            AddProductToStorage AddProductToStorage = new AddProductToStorage(mySqlInt,0);
            AddProductToStorage.ShowDialog();
            mySqlInt.tryRequest("select couriers.name, storages.adres from storages,couriers where storages.courier_id = couriers.id", SDGV);
        }
    }
}
