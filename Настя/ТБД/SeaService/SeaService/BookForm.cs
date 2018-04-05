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
    public partial class BookForm : Form
    {
        private Voyage voyage;
        
        public BookForm(Voyage _voyage)
        {
            InitializeComponent();
            this.voyage = _voyage;
            voyageData.Text = this.voyage.from.name + " - " + this.voyage.to.name + "\n";
            voyageData.Text += this.voyage.date.ToShortDateString() + " " + this.voyage.time.ToLongTimeString() + "\n";
            voyageData.Text += this.voyage.vessel.name + "/" + this.voyage.vessel.number;
        }

        private void addPassengerButton_Click(object sender, EventArgs e)
        {
            var passForm = new PassengerForm();
            passForm.Activate();
            passForm.Visible = true;
        }
    }
}
