namespace AirLinesProject
{
    partial class RegistrationForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.userName = new System.Windows.Forms.TextBox();
            this.userPassword = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.emailEdit = new System.Windows.Forms.TextBox();
            this.adresEdit = new System.Windows.Forms.TextBox();
            this.fioEdit = new System.Windows.Forms.TextBox();
            this.yearEdit = new System.Windows.Forms.TextBox();
            this.phoneEdit = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // userName
            // 
            this.userName.Location = new System.Drawing.Point(76, 21);
            this.userName.Name = "userName";
            this.userName.Size = new System.Drawing.Size(239, 20);
            this.userName.TabIndex = 13;
            // 
            // userPassword
            // 
            this.userPassword.Location = new System.Drawing.Point(76, 47);
            this.userPassword.Name = "userPassword";
            this.userPassword.Size = new System.Drawing.Size(239, 20);
            this.userPassword.TabIndex = 14;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(16, 24);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(38, 13);
            this.label3.TabIndex = 11;
            this.label3.Text = "Логин";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(16, 54);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(45, 13);
            this.label4.TabIndex = 12;
            this.label4.Text = "Пароль";
            // 
            // button1
            // 
            this.button1.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.button1.Location = new System.Drawing.Point(234, 211);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(81, 25);
            this.button1.TabIndex = 15;
            this.button1.Text = "Регистрация";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(16, 85);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(32, 13);
            this.label1.TabIndex = 16;
            this.label1.Text = "Email";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(16, 111);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(37, 13);
            this.label5.TabIndex = 20;
            this.label5.Text = "адрес";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(16, 133);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(27, 13);
            this.label6.TabIndex = 22;
            this.label6.Text = "фио";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(16, 159);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(24, 13);
            this.label7.TabIndex = 24;
            this.label7.Text = "год";
            // 
            // emailEdit
            // 
            this.emailEdit.Location = new System.Drawing.Point(76, 78);
            this.emailEdit.Name = "emailEdit";
            this.emailEdit.Size = new System.Drawing.Size(239, 20);
            this.emailEdit.TabIndex = 26;
            // 
            // adresEdit
            // 
            this.adresEdit.Location = new System.Drawing.Point(76, 108);
            this.adresEdit.Name = "adresEdit";
            this.adresEdit.Size = new System.Drawing.Size(239, 20);
            this.adresEdit.TabIndex = 28;
            // 
            // fioEdit
            // 
            this.fioEdit.Location = new System.Drawing.Point(76, 133);
            this.fioEdit.Name = "fioEdit";
            this.fioEdit.Size = new System.Drawing.Size(239, 20);
            this.fioEdit.TabIndex = 29;
            // 
            // yearEdit
            // 
            this.yearEdit.Location = new System.Drawing.Point(76, 159);
            this.yearEdit.Name = "yearEdit";
            this.yearEdit.Size = new System.Drawing.Size(239, 20);
            this.yearEdit.TabIndex = 30;
            // 
            // phoneEdit
            // 
            this.phoneEdit.Location = new System.Drawing.Point(76, 185);
            this.phoneEdit.Name = "phoneEdit";
            this.phoneEdit.Size = new System.Drawing.Size(239, 20);
            this.phoneEdit.TabIndex = 31;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(16, 188);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(50, 13);
            this.label8.TabIndex = 34;
            this.label8.Text = "телефон";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(19, 226);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(12, 10);
            this.dataGridView1.TabIndex = 36;
            this.dataGridView1.Visible = false;
            // 
            // RegistrationForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(326, 252);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.phoneEdit);
            this.Controls.Add(this.yearEdit);
            this.Controls.Add(this.fioEdit);
            this.Controls.Add(this.adresEdit);
            this.Controls.Add(this.emailEdit);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.userName);
            this.Controls.Add(this.userPassword);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label4);
            this.Name = "RegistrationForm";
            this.Text = "Регистрация";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox userName;
        private System.Windows.Forms.TextBox userPassword;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox emailEdit;
        private System.Windows.Forms.TextBox adresEdit;
        private System.Windows.Forms.TextBox fioEdit;
        private System.Windows.Forms.TextBox yearEdit;
        private System.Windows.Forms.TextBox phoneEdit;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.DataGridView dataGridView1;
    }
}