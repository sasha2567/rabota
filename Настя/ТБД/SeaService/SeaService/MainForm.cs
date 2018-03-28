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
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
            var model = new Order("order", new User("1","1","1"), new DateTime(), 1);
            model.save();
        }
    }
}
