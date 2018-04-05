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
    public partial class ResultForm : Form
    {
        private RepositoryVoyage repository;

        public ResultForm(RepositoryVoyage _repository)
        {
            InitializeComponent();
            this.repository = _repository;
            foreach(var elem in repository.GetList())
            {
                result.Rows.Add(elem.from.name, elem.to.name, elem.date.ToShortDateString(), elem.time.ToLongTimeString(), elem.vessel.name);
            }
        }

        private void result_DoubleClick(object sender, EventArgs e)
        {
            var elem = this.repository.GetList()[result.CurrentCellAddress.Y];
            var bookForm = new BookForm(elem);
            bookForm.Activate();
            bookForm.Visible = true;
            this.Visible = false;
        }
    }
}
