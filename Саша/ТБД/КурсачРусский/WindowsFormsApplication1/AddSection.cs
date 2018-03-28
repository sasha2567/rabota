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
    public partial class AddSection : Form
    {
        private mySqlInterface my;

        public AddSection(mySqlInterface mySql)
        {
            InitializeComponent();
            this.my = mySql;
        }

        private void add_Click(object sender, EventArgs e)
        {
            string section = sectionEdit.Text;
            my.tryRequest("select id from section", dataGridView1);
            int id = dataGridView1.RowCount;
            section = section.Normalize();
            my.tryRequest("insert into section values (" + id + ", '" + section + "')");
            this.Hide();
        }
    }
}
