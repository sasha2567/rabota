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
    public partial class RequestForm : Form
    {
        private mySqlInterface mySqlInt;
        
        public RequestForm(mySqlInterface mySql)
        {
            InitializeComponent();
            this.mySqlInt = mySql;
        }

        private void request_Click(object sender, EventArgs e)
        {
            string request = richTextBox1.Text;
            MessageBox.Show(request);
            mySqlInt.tryRequest(request,dataGridView1);
        }
    }
}
