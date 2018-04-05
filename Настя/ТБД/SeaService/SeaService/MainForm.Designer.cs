namespace SeaService
{
    partial class MainForm
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
            this.direction = new System.Windows.Forms.ComboBox();
            this.fromData = new System.Windows.Forms.DateTimePicker();
            this.cabinet = new System.Windows.Forms.Button();
            this.labelFromPlace = new System.Windows.Forms.Label();
            this.labelFromData = new System.Windows.Forms.Label();
            this.searchButton = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // direction
            // 
            this.direction.FormattingEnabled = true;
            this.direction.Location = new System.Drawing.Point(54, 154);
            this.direction.Name = "direction";
            this.direction.Size = new System.Drawing.Size(531, 21);
            this.direction.TabIndex = 0;
            // 
            // fromData
            // 
            this.fromData.Location = new System.Drawing.Point(54, 222);
            this.fromData.Name = "fromData";
            this.fromData.Size = new System.Drawing.Size(222, 20);
            this.fromData.TabIndex = 1;
            // 
            // cabinet
            // 
            this.cabinet.Location = new System.Drawing.Point(523, 29);
            this.cabinet.Name = "cabinet";
            this.cabinet.Size = new System.Drawing.Size(115, 48);
            this.cabinet.TabIndex = 4;
            this.cabinet.Text = "Личный кабинет";
            this.cabinet.UseVisualStyleBackColor = true;
            this.cabinet.Click += new System.EventHandler(this.cabinet_Click);
            // 
            // labelFromPlace
            // 
            this.labelFromPlace.AutoSize = true;
            this.labelFromPlace.Location = new System.Drawing.Point(51, 129);
            this.labelFromPlace.Name = "labelFromPlace";
            this.labelFromPlace.Size = new System.Drawing.Size(75, 13);
            this.labelFromPlace.TabIndex = 5;
            this.labelFromPlace.Text = "Направление";
            // 
            // labelFromData
            // 
            this.labelFromData.AutoSize = true;
            this.labelFromData.Location = new System.Drawing.Point(51, 195);
            this.labelFromData.Name = "labelFromData";
            this.labelFromData.Size = new System.Drawing.Size(66, 13);
            this.labelFromData.TabIndex = 7;
            this.labelFromData.Text = "Дата рейса";
            // 
            // searchButton
            // 
            this.searchButton.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.searchButton.Location = new System.Drawing.Point(242, 273);
            this.searchButton.Name = "searchButton";
            this.searchButton.Size = new System.Drawing.Size(126, 40);
            this.searchButton.TabIndex = 9;
            this.searchButton.Text = "Поиск";
            this.searchButton.UseVisualStyleBackColor = true;
            this.searchButton.Click += new System.EventHandler(this.searchButton_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 20F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label1.Location = new System.Drawing.Point(48, 46);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(436, 31);
            this.label1.TabIndex = 11;
            this.label1.Text = "Поиск билетов на морские рейсы";
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(650, 343);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.searchButton);
            this.Controls.Add(this.labelFromData);
            this.Controls.Add(this.labelFromPlace);
            this.Controls.Add(this.cabinet);
            this.Controls.Add(this.fromData);
            this.Controls.Add(this.direction);
            this.Name = "MainForm";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox direction;
        private System.Windows.Forms.DateTimePicker fromData;
        private System.Windows.Forms.Button cabinet;
        private System.Windows.Forms.Label labelFromPlace;
        private System.Windows.Forms.Label labelFromData;
        private System.Windows.Forms.Button searchButton;
        private System.Windows.Forms.Label label1;
    }
}

