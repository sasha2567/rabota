using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SeaService
{
    public partial class PassengerForm : Form
    {
        public PassengerForm()
        {
            InitializeComponent();
        }

        private void WomenRB_CheckedChanged(object sender, EventArgs e)
        {
            MenRB.Checked = false;
            WomenRB.Checked = true;
        }

        private void MenRB_CheckedChanged(object sender, EventArgs e)
        {
            WomenRB.Checked = false;
            MenRB.Checked = true;
        }
    }
}
