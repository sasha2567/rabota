using SeaService.Repository;
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
    public partial class ModeratorForm : Form
    {
        public ModeratorForm()
        {
            InitializeComponent();
        }

        private void buttonOrders_Click(object sender, EventArgs e)
        {

        }

        private void buttonVessels_Click(object sender, EventArgs e)
        {

        }

        private void buttonPorts_Click(object sender, EventArgs e)
        {
            var ports = new RepositoryLocation();
            ports.GetFromDB();
            var portForm = new PortForm(ports);
            portForm.Activate();
            portForm.Visible = true;
        }

        private void buttonVoyages_Click(object sender, EventArgs e)
        {

        }
    }
}
