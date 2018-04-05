namespace SeaService
{
    partial class PassengerForm
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
            this.name = new System.Windows.Forms.TextBox();
            this.nameLabel = new System.Windows.Forms.Label();
            this.lastNameLabel = new System.Windows.Forms.Label();
            this.lastName = new System.Windows.Forms.TextBox();
            this.documentLabel = new System.Windows.Forms.Label();
            this.docNumber = new System.Windows.Forms.TextBox();
            this.secondNameLabel = new System.Windows.Forms.Label();
            this.secondName = new System.Windows.Forms.TextBox();
            this.docExpire = new System.Windows.Forms.DateTimePicker();
            this.dateTimePicker2 = new System.Windows.Forms.DateTimePicker();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.docType = new System.Windows.Forms.ComboBox();
            this.MenRB = new System.Windows.Forms.RadioButton();
            this.WomenRB = new System.Windows.Forms.RadioButton();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // name
            // 
            this.name.Location = new System.Drawing.Point(24, 30);
            this.name.Name = "name";
            this.name.Size = new System.Drawing.Size(100, 20);
            this.name.TabIndex = 0;
            // 
            // nameLabel
            // 
            this.nameLabel.AutoSize = true;
            this.nameLabel.Location = new System.Drawing.Point(24, 11);
            this.nameLabel.Name = "nameLabel";
            this.nameLabel.Size = new System.Drawing.Size(29, 13);
            this.nameLabel.TabIndex = 1;
            this.nameLabel.Text = "Имя";
            // 
            // lastNameLabel
            // 
            this.lastNameLabel.AutoSize = true;
            this.lastNameLabel.Location = new System.Drawing.Point(24, 62);
            this.lastNameLabel.Name = "lastNameLabel";
            this.lastNameLabel.Size = new System.Drawing.Size(56, 13);
            this.lastNameLabel.TabIndex = 3;
            this.lastNameLabel.Text = "Фамилия";
            // 
            // lastName
            // 
            this.lastName.Location = new System.Drawing.Point(24, 81);
            this.lastName.Name = "lastName";
            this.lastName.Size = new System.Drawing.Size(100, 20);
            this.lastName.TabIndex = 2;
            // 
            // documentLabel
            // 
            this.documentLabel.AutoSize = true;
            this.documentLabel.Location = new System.Drawing.Point(24, 168);
            this.documentLabel.Name = "documentLabel";
            this.documentLabel.Size = new System.Drawing.Size(75, 13);
            this.documentLabel.TabIndex = 7;
            this.documentLabel.Text = "№ документа";
            // 
            // docNumber
            // 
            this.docNumber.Location = new System.Drawing.Point(24, 187);
            this.docNumber.Name = "docNumber";
            this.docNumber.Size = new System.Drawing.Size(100, 20);
            this.docNumber.TabIndex = 6;
            // 
            // secondNameLabel
            // 
            this.secondNameLabel.AutoSize = true;
            this.secondNameLabel.Location = new System.Drawing.Point(24, 117);
            this.secondNameLabel.Name = "secondNameLabel";
            this.secondNameLabel.Size = new System.Drawing.Size(54, 13);
            this.secondNameLabel.TabIndex = 5;
            this.secondNameLabel.Text = "Отчество";
            // 
            // secondName
            // 
            this.secondName.Location = new System.Drawing.Point(24, 136);
            this.secondName.Name = "secondName";
            this.secondName.Size = new System.Drawing.Size(100, 20);
            this.secondName.TabIndex = 4;
            // 
            // docExpire
            // 
            this.docExpire.Location = new System.Drawing.Point(24, 245);
            this.docExpire.Name = "docExpire";
            this.docExpire.Size = new System.Drawing.Size(200, 20);
            this.docExpire.TabIndex = 8;
            // 
            // dateTimePicker2
            // 
            this.dateTimePicker2.Location = new System.Drawing.Point(24, 374);
            this.dateTimePicker2.Name = "dateTimePicker2";
            this.dateTimePicker2.Size = new System.Drawing.Size(200, 20);
            this.dateTimePicker2.TabIndex = 9;
            this.dateTimePicker2.Value = new System.DateTime(2000, 1, 1, 0, 0, 0, 0);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(21, 220);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(139, 13);
            this.label1.TabIndex = 10;
            this.label1.Text = "Срок действия документа";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(24, 349);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(86, 13);
            this.label2.TabIndex = 11;
            this.label2.Text = "Дата рождения";
            // 
            // docType
            // 
            this.docType.FormattingEnabled = true;
            this.docType.Items.AddRange(new object[] {
            "Пасспорт",
            "Загран. пасспорт",
            "Свидетельство о рождении",
            "Иностранный документ"});
            this.docType.Location = new System.Drawing.Point(24, 313);
            this.docType.Name = "docType";
            this.docType.Size = new System.Drawing.Size(121, 21);
            this.docType.TabIndex = 12;
            // 
            // MenRB
            // 
            this.MenRB.AutoSize = true;
            this.MenRB.Location = new System.Drawing.Point(22, 442);
            this.MenRB.Name = "MenRB";
            this.MenRB.Size = new System.Drawing.Size(56, 17);
            this.MenRB.TabIndex = 13;
            this.MenRB.TabStop = true;
            this.MenRB.Text = "Мурж.";
            this.MenRB.UseVisualStyleBackColor = true;
            this.MenRB.CheckedChanged += new System.EventHandler(this.MenRB_CheckedChanged);
            // 
            // WomenRB
            // 
            this.WomenRB.AutoSize = true;
            this.WomenRB.Location = new System.Drawing.Point(104, 442);
            this.WomenRB.Name = "WomenRB";
            this.WomenRB.Size = new System.Drawing.Size(51, 17);
            this.WomenRB.TabIndex = 14;
            this.WomenRB.TabStop = true;
            this.WomenRB.Text = "Жен.";
            this.WomenRB.UseVisualStyleBackColor = true;
            this.WomenRB.CheckedChanged += new System.EventHandler(this.WomenRB_CheckedChanged);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(24, 415);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(27, 13);
            this.label3.TabIndex = 15;
            this.label3.Text = "Пол";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(24, 288);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(83, 13);
            this.label4.TabIndex = 16;
            this.label4.Text = "Вид документа";
            // 
            // Passenger
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(334, 492);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.WomenRB);
            this.Controls.Add(this.MenRB);
            this.Controls.Add(this.docType);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.dateTimePicker2);
            this.Controls.Add(this.docExpire);
            this.Controls.Add(this.documentLabel);
            this.Controls.Add(this.docNumber);
            this.Controls.Add(this.secondNameLabel);
            this.Controls.Add(this.secondName);
            this.Controls.Add(this.lastNameLabel);
            this.Controls.Add(this.lastName);
            this.Controls.Add(this.nameLabel);
            this.Controls.Add(this.name);
            this.Name = "Passenger";
            this.Text = "Passenger";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox name;
        private System.Windows.Forms.Label nameLabel;
        private System.Windows.Forms.Label lastNameLabel;
        private System.Windows.Forms.TextBox lastName;
        private System.Windows.Forms.Label documentLabel;
        private System.Windows.Forms.TextBox docNumber;
        private System.Windows.Forms.Label secondNameLabel;
        private System.Windows.Forms.TextBox secondName;
        private System.Windows.Forms.DateTimePicker docExpire;
        private System.Windows.Forms.DateTimePicker dateTimePicker2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox docType;
        private System.Windows.Forms.RadioButton MenRB;
        private System.Windows.Forms.RadioButton WomenRB;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
    }
}