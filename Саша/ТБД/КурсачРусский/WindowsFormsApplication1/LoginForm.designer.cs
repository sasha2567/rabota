namespace AirLinesProject
{
    partial class Login
    {
        /// <summary>
        /// Требуется переменная конструктора.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Освободить все используемые ресурсы.
        /// </summary>
        /// <param name="disposing">истинно, если управляемый ресурс должен быть удален; иначе ложно.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Код, автоматически созданный конструктором форм Windows

        /// <summary>
        /// Обязательный метод для поддержки конструктора - не изменяйте
        /// содержимое данного метода при помощи редактора кода.
        /// </summary>
        private void InitializeComponent()
        {
            this.userName = new System.Windows.Forms.TextBox();
            this.userPassword = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.connect = new System.Windows.Forms.Button();
            this.close = new System.Windows.Forms.Button();
            this.registrate = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // userName
            // 
            this.userName.Location = new System.Drawing.Point(64, 15);
            this.userName.Name = "userName";
            this.userName.Size = new System.Drawing.Size(239, 20);
            this.userName.TabIndex = 9;
            // 
            // userPassword
            // 
            this.userPassword.Location = new System.Drawing.Point(63, 41);
            this.userPassword.Name = "userPassword";
            this.userPassword.PasswordChar = '*';
            this.userPassword.Size = new System.Drawing.Size(239, 20);
            this.userPassword.TabIndex = 10;
            this.userPassword.UseSystemPasswordChar = true;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(9, 15);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(38, 13);
            this.label3.TabIndex = 7;
            this.label3.Text = "Логин";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(9, 44);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 13);
            this.label4.TabIndex = 8;
            this.label4.Text = "Пароль";
            // 
            // connect
            // 
            this.connect.Location = new System.Drawing.Point(72, 70);
            this.connect.Name = "connect";
            this.connect.Size = new System.Drawing.Size(74, 25);
            this.connect.TabIndex = 11;
            this.connect.Text = "Войти";
            this.connect.UseVisualStyleBackColor = true;
            this.connect.Click += new System.EventHandler(this.connect_Click);
            // 
            // close
            // 
            this.close.Location = new System.Drawing.Point(150, 70);
            this.close.Name = "close";
            this.close.Size = new System.Drawing.Size(74, 25);
            this.close.TabIndex = 12;
            this.close.Text = "Выход";
            this.close.UseVisualStyleBackColor = true;
            this.close.Click += new System.EventHandler(this.close_Click);
            // 
            // registrate
            // 
            this.registrate.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.registrate.Location = new System.Drawing.Point(230, 70);
            this.registrate.Name = "registrate";
            this.registrate.Size = new System.Drawing.Size(81, 25);
            this.registrate.TabIndex = 14;
            this.registrate.Text = "Регистрация";
            this.registrate.UseVisualStyleBackColor = true;
            this.registrate.Click += new System.EventHandler(this.button1_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(12, 70);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(22, 25);
            this.dataGridView1.TabIndex = 15;
            this.dataGridView1.Visible = false;
            // 
            // Login
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.Control;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.ClientSize = new System.Drawing.Size(315, 107);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.registrate);
            this.Controls.Add(this.userName);
            this.Controls.Add(this.userPassword);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.connect);
            this.Controls.Add(this.close);
            this.HelpButton = true;
            this.KeyPreview = true;
            this.Name = "Login";
            this.ShowIcon = false;
            this.Text = "Aвторизация";
            this.Activated += new System.EventHandler(this.Login_Activated);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox userName;
        private System.Windows.Forms.TextBox userPassword;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button connect;
        private System.Windows.Forms.Button close;
        private System.Windows.Forms.Button registrate;
        private System.Windows.Forms.DataGridView dataGridView1;

    }
}

