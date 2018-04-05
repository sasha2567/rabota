using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SeaService
{
    public partial class LoginForm : Form
    {
        public LoginForm()
        {
            InitializeComponent();
        }

        private void login_Click(object sender, EventArgs e)
        {
            if (email.Text != "" && password.Text != "")
            {
                RepositoryUser users = new RepositoryUser();
                var user = users.GetUserByEmail(email.Text);
                if (user != null)
                {
                    if (user.password == this.GetMd5Hash(password.Text))
                    {
                        if (user.role == 1)
                        {
                            var moderatorForm = new ModeratorForm();
                            moderatorForm.Activate();
                            moderatorForm.Visible = true;
                        }
                        else
                        {
                            var cabinetForm = new Cabinet();
                            cabinetForm.Activate();
                            cabinetForm.Visible = true;
                        }
                        this.Visible = false;
                    }
                    else
                    {
                        MessageBox.Show("Неверный пароль");
                    }
                }
                else
                {
                    MessageBox.Show("Пользователя не существует");
                }
            }
        }

        protected string GetMd5Hash(string s)
        {
            // создаем объект этого класса. Отмечу, что он создается не через new, а вызовом метода Create
            MD5 md5Hasher = MD5.Create();
 
            // Преобразуем входную строку в массив байт и вычисляем хэш
            byte[] data = md5Hasher.ComputeHash(Encoding.Default.GetBytes(s));
 
            // Создаем новый Stringbuilder (Изменяемую строку) для набора байт
            StringBuilder sBuilder = new StringBuilder();
 
            // Преобразуем каждый байт хэша в шестнадцатеричную строку
            for (int i = 0; i < data.Length; i++)
            {
                //указывает, что нужно преобразовать элемент в шестнадцатиричную строку длиной в два символа
                sBuilder.Append(data[i].ToString("x2"));
            }
            return sBuilder.ToString();
        }
    }
}
