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
            this.toData = new System.Windows.Forms.DateTimePicker();
            this.cabinet = new System.Windows.Forms.Button();
            this.labelFromPlace = new System.Windows.Forms.Label();
            this.labelFromData = new System.Windows.Forms.Label();
            this.labelToData = new System.Windows.Forms.Label();
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
            // toData
            // 
            this.toData.Location = new System.Drawing.Point(363, 222);
            this.toData.Name = "toData";
            this.toData.Size = new System.Drawing.Size(222, 20);
            this.toData.TabIndex = 2;
            this.toData.Value = new System.DateTime(2018, 3, 25, 15, 2, 42, 0);
            // 
            // cabinet
            // 
            this.cabinet.Location = new System.Drawing.Point(523, 12);
            this.cabinet.Name = "cabinet";
            this.cabinet.Size = new System.Drawing.Size(115, 48);
            this.cabinet.TabIndex = 4;
            this.cabinet.Text = "Личный кабинет";
            this.cabinet.UseVisualStyleBackColor = true;
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
            this.labelFromData.Size = new System.Drawing.Size(31, 13);
            this.labelFromData.TabIndex = 7;
            this.labelFromData.Text = "Туда";
            // 
            // labelToData
            // 
            this.labelToData.AutoSize = true;
            this.labelToData.Location = new System.Drawing.Point(360, 195);
            this.labelToData.Name = "labelToData";
            this.labelToData.Size = new System.Drawing.Size(50, 13);
            this.labelToData.TabIndex = 8;
            this.labelToData.Text = "Обратно";
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(650, 343);
            this.Controls.Add(this.labelToData);
            this.Controls.Add(this.labelFromData);
            this.Controls.Add(this.labelFromPlace);
            this.Controls.Add(this.cabinet);
            this.Controls.Add(this.toData);
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
        private System.Windows.Forms.DateTimePicker toData;
        private System.Windows.Forms.Button cabinet;
        private System.Windows.Forms.Label labelFromPlace;
        private System.Windows.Forms.Label labelFromData;
        private System.Windows.Forms.Label labelToData;
    }
}

