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
    public partial class PortForm : Form
    {
        private RepositoryLocation repository;

        public PortForm(RepositoryLocation locations)
        {
            InitializeComponent();
            this.repository = locations;
            foreach (var elem in repository.GetList())
            {
                data.Rows.Add(elem.name, elem.code);
            }
        }
    }
}
