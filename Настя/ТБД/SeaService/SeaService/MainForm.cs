using SeaService.Repository;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SeaService
{
    public partial class MainForm : Form
    {
        public MainForm()
        {
            InitializeComponent();
            var repository = new RepositoryLocation();
            repository.GetFromDB();
            var list = repository.GetList();
            direction.Items.Clear();
            foreach (var elem in list)
            {
                foreach (var item in list)
                {
                    if (elem.ToSting() != item.ToSting())
                    {
                        direction.Items.Add(elem.ToSting() + " - " + item.ToSting());
                    }
                }
            }
        }

        private void searchButton_Click(object sender, EventArgs e)
        {
            var selectedDirection = direction.SelectedItem;
            var date = fromData.Value;
            var repsitory = new RepositoryVoyage();
            var locationRepository = new RepositoryLocation();
            string paterrn = @"\([А-Я]+\)";
            string[] codes = new string[2]{"", ""};
            var i = 0;
            for (var m = Regex.Match(selectedDirection.ToString(), paterrn); m.Success; m = m.NextMatch())
            {
                codes[i] = m.Value;
                i++;
            }
            locationRepository.GetFromDBByCode(codes[0].Substring(1, codes[0].Length - 2));
            var locationFrom = locationRepository.GetList()[0];
            locationRepository.GetFromDBByCode(codes[1].Substring(1, codes[1].Length - 2));
            var locationTo = locationRepository.GetList()[0];
            repsitory.GetFromDBByLocationAndDate(locationFrom, locationTo, date);
            var list = repsitory.GetList();
            if (list.Count > 0)
            {
                var resultForm = new ResultForm(repsitory);
                resultForm.Activate();
                resultForm.Visible = true;
            }
            else
            {
                MessageBox.Show("Рейсрв по выбранному направления и выбранной дате нет. Попробуйье поменять дату");
            }
        }

        private void cabinet_Click(object sender, EventArgs e)
        {
            LoginForm login = new LoginForm();
            login.Activate();
            login.Visible = true;
        }
    }
}
