namespace AirLinesProject
{
    partial class AddProduct
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
            this.titleEdit = new System.Windows.Forms.TextBox();
            this.add = new System.Windows.Forms.Button();
            this.imageEdit = new System.Windows.Forms.TextBox();
            this.yearEdit = new System.Windows.Forms.TextBox();
            this.countryEdit = new System.Windows.Forms.TextBox();
            this.priceEdit = new System.Windows.Forms.TextBox();
            this.powerEdit = new System.Windows.Forms.TextBox();
            this.brendEdit = new System.Windows.Forms.TextBox();
            this.weigthEdit = new System.Windows.Forms.TextBox();
            this.colorEdit = new System.Windows.Forms.TextBox();
            this.measurementEdit = new System.Windows.Forms.TextBox();
            this.priceLabel = new System.Windows.Forms.Label();
            this.countryLabel = new System.Windows.Forms.Label();
            this.yearLabel = new System.Windows.Forms.Label();
            this.imageLabel = new System.Windows.Forms.Label();
            this.titleLabel = new System.Windows.Forms.Label();
            this.powerLabel = new System.Windows.Forms.Label();
            this.brendLabel = new System.Windows.Forms.Label();
            this.weigthLabel = new System.Windows.Forms.Label();
            this.colorLabel = new System.Windows.Forms.Label();
            this.measurementLabel = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.sectionCombo = new System.Windows.Forms.ComboBox();
            this.sectionLabel = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // titleEdit
            // 
            this.titleEdit.Location = new System.Drawing.Point(12, 30);
            this.titleEdit.Name = "titleEdit";
            this.titleEdit.Size = new System.Drawing.Size(82, 20);
            this.titleEdit.TabIndex = 0;
            // 
            // add
            // 
            this.add.Location = new System.Drawing.Point(13, 310);
            this.add.Name = "add";
            this.add.Size = new System.Drawing.Size(237, 51);
            this.add.TabIndex = 1;
            this.add.Text = "Добавить товар";
            this.add.UseVisualStyleBackColor = true;
            this.add.Click += new System.EventHandler(this.add_Click);
            // 
            // imageEdit
            // 
            this.imageEdit.Location = new System.Drawing.Point(12, 66);
            this.imageEdit.Name = "imageEdit";
            this.imageEdit.Size = new System.Drawing.Size(82, 20);
            this.imageEdit.TabIndex = 2;
            // 
            // yearEdit
            // 
            this.yearEdit.Location = new System.Drawing.Point(12, 104);
            this.yearEdit.Name = "yearEdit";
            this.yearEdit.Size = new System.Drawing.Size(82, 20);
            this.yearEdit.TabIndex = 3;
            // 
            // countryEdit
            // 
            this.countryEdit.Location = new System.Drawing.Point(130, 30);
            this.countryEdit.Name = "countryEdit";
            this.countryEdit.Size = new System.Drawing.Size(82, 20);
            this.countryEdit.TabIndex = 4;
            // 
            // priceEdit
            // 
            this.priceEdit.Location = new System.Drawing.Point(130, 66);
            this.priceEdit.Name = "priceEdit";
            this.priceEdit.Size = new System.Drawing.Size(82, 20);
            this.priceEdit.TabIndex = 5;
            // 
            // powerEdit
            // 
            this.powerEdit.Location = new System.Drawing.Point(130, 189);
            this.powerEdit.Name = "powerEdit";
            this.powerEdit.Size = new System.Drawing.Size(82, 20);
            this.powerEdit.TabIndex = 10;
            // 
            // brendEdit
            // 
            this.brendEdit.Location = new System.Drawing.Point(130, 153);
            this.brendEdit.Name = "brendEdit";
            this.brendEdit.Size = new System.Drawing.Size(82, 20);
            this.brendEdit.TabIndex = 9;
            // 
            // weigthEdit
            // 
            this.weigthEdit.Location = new System.Drawing.Point(12, 227);
            this.weigthEdit.Name = "weigthEdit";
            this.weigthEdit.Size = new System.Drawing.Size(82, 20);
            this.weigthEdit.TabIndex = 8;
            // 
            // colorEdit
            // 
            this.colorEdit.Location = new System.Drawing.Point(12, 189);
            this.colorEdit.Name = "colorEdit";
            this.colorEdit.Size = new System.Drawing.Size(82, 20);
            this.colorEdit.TabIndex = 7;
            // 
            // measurementEdit
            // 
            this.measurementEdit.Location = new System.Drawing.Point(12, 153);
            this.measurementEdit.Name = "measurementEdit";
            this.measurementEdit.Size = new System.Drawing.Size(82, 20);
            this.measurementEdit.TabIndex = 6;
            // 
            // priceLabel
            // 
            this.priceLabel.AutoSize = true;
            this.priceLabel.Location = new System.Drawing.Point(127, 50);
            this.priceLabel.Name = "priceLabel";
            this.priceLabel.Size = new System.Drawing.Size(98, 13);
            this.priceLabel.TabIndex = 19;
            this.priceLabel.Text = "Стоимость/за шт.";
            // 
            // countryLabel
            // 
            this.countryLabel.AutoSize = true;
            this.countryLabel.Location = new System.Drawing.Point(127, 9);
            this.countryLabel.Name = "countryLabel";
            this.countryLabel.Size = new System.Drawing.Size(123, 13);
            this.countryLabel.TabIndex = 18;
            this.countryLabel.Text = "Страна-производитель";
            // 
            // yearLabel
            // 
            this.yearLabel.AutoSize = true;
            this.yearLabel.Location = new System.Drawing.Point(9, 88);
            this.yearLabel.Name = "yearLabel";
            this.yearLabel.Size = new System.Drawing.Size(71, 13);
            this.yearLabel.TabIndex = 17;
            this.yearLabel.Text = "Год выпуска";
            // 
            // imageLabel
            // 
            this.imageLabel.AutoSize = true;
            this.imageLabel.Location = new System.Drawing.Point(9, 50);
            this.imageLabel.Name = "imageLabel";
            this.imageLabel.Size = new System.Drawing.Size(90, 13);
            this.imageLabel.TabIndex = 16;
            this.imageLabel.Text = "Путь к картинке";
            // 
            // titleLabel
            // 
            this.titleLabel.AutoSize = true;
            this.titleLabel.Location = new System.Drawing.Point(9, 9);
            this.titleLabel.Name = "titleLabel";
            this.titleLabel.Size = new System.Drawing.Size(95, 13);
            this.titleLabel.TabIndex = 15;
            this.titleLabel.Text = "Название товара";
            // 
            // powerLabel
            // 
            this.powerLabel.AutoSize = true;
            this.powerLabel.Location = new System.Drawing.Point(127, 173);
            this.powerLabel.Name = "powerLabel";
            this.powerLabel.Size = new System.Drawing.Size(60, 13);
            this.powerLabel.TabIndex = 24;
            this.powerLabel.Text = "Мощность";
            // 
            // brendLabel
            // 
            this.brendLabel.AutoSize = true;
            this.brendLabel.Location = new System.Drawing.Point(127, 132);
            this.brendLabel.Name = "brendLabel";
            this.brendLabel.Size = new System.Drawing.Size(122, 13);
            this.brendLabel.TabIndex = 23;
            this.brendLabel.Text = "Брэнд/Производитель";
            // 
            // weigthLabel
            // 
            this.weigthLabel.AutoSize = true;
            this.weigthLabel.Location = new System.Drawing.Point(9, 211);
            this.weigthLabel.Name = "weigthLabel";
            this.weigthLabel.Size = new System.Drawing.Size(26, 13);
            this.weigthLabel.TabIndex = 22;
            this.weigthLabel.Text = "Вес";
            // 
            // colorLabel
            // 
            this.colorLabel.AutoSize = true;
            this.colorLabel.Location = new System.Drawing.Point(9, 173);
            this.colorLabel.Name = "colorLabel";
            this.colorLabel.Size = new System.Drawing.Size(32, 13);
            this.colorLabel.TabIndex = 21;
            this.colorLabel.Text = "Цвет";
            // 
            // measurementLabel
            // 
            this.measurementLabel.AutoSize = true;
            this.measurementLabel.Location = new System.Drawing.Point(9, 132);
            this.measurementLabel.Name = "measurementLabel";
            this.measurementLabel.Size = new System.Drawing.Size(56, 13);
            this.measurementLabel.TabIndex = 20;
            this.measurementLabel.Text = "Габариты";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(255, 153);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(240, 150);
            this.dataGridView1.TabIndex = 25;
            this.dataGridView1.Visible = false;
            // 
            // sectionCombo
            // 
            this.sectionCombo.FormattingEnabled = true;
            this.sectionCombo.Location = new System.Drawing.Point(12, 272);
            this.sectionCombo.Name = "sectionCombo";
            this.sectionCombo.Size = new System.Drawing.Size(121, 21);
            this.sectionCombo.TabIndex = 26;
            // 
            // sectionLabel
            // 
            this.sectionLabel.AutoSize = true;
            this.sectionLabel.Location = new System.Drawing.Point(9, 256);
            this.sectionLabel.Name = "sectionLabel";
            this.sectionLabel.Size = new System.Drawing.Size(60, 13);
            this.sectionLabel.TabIndex = 27;
            this.sectionLabel.Text = "Категория";
            // 
            // AddProduct
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(271, 373);
            this.Controls.Add(this.sectionLabel);
            this.Controls.Add(this.sectionCombo);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.priceLabel);
            this.Controls.Add(this.countryLabel);
            this.Controls.Add(this.yearLabel);
            this.Controls.Add(this.imageLabel);
            this.Controls.Add(this.titleLabel);
            this.Controls.Add(this.powerLabel);
            this.Controls.Add(this.brendLabel);
            this.Controls.Add(this.weigthLabel);
            this.Controls.Add(this.colorLabel);
            this.Controls.Add(this.measurementLabel);
            this.Controls.Add(this.powerEdit);
            this.Controls.Add(this.brendEdit);
            this.Controls.Add(this.weigthEdit);
            this.Controls.Add(this.colorEdit);
            this.Controls.Add(this.measurementEdit);
            this.Controls.Add(this.priceEdit);
            this.Controls.Add(this.countryEdit);
            this.Controls.Add(this.yearEdit);
            this.Controls.Add(this.imageEdit);
            this.Controls.Add(this.add);
            this.Controls.Add(this.titleEdit);
            this.Name = "AddProduct";
            this.Text = "AddProduct";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox titleEdit;
        private System.Windows.Forms.Button add;
        private System.Windows.Forms.TextBox imageEdit;
        private System.Windows.Forms.TextBox yearEdit;
        private System.Windows.Forms.TextBox countryEdit;
        private System.Windows.Forms.TextBox priceEdit;
        private System.Windows.Forms.TextBox powerEdit;
        private System.Windows.Forms.TextBox brendEdit;
        private System.Windows.Forms.TextBox weigthEdit;
        private System.Windows.Forms.TextBox colorEdit;
        private System.Windows.Forms.TextBox measurementEdit;
        private System.Windows.Forms.Label priceLabel;
        private System.Windows.Forms.Label countryLabel;
        private System.Windows.Forms.Label yearLabel;
        private System.Windows.Forms.Label imageLabel;
        private System.Windows.Forms.Label titleLabel;
        private System.Windows.Forms.Label powerLabel;
        private System.Windows.Forms.Label brendLabel;
        private System.Windows.Forms.Label weigthLabel;
        private System.Windows.Forms.Label colorLabel;
        private System.Windows.Forms.Label measurementLabel;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.ComboBox sectionCombo;
        private System.Windows.Forms.Label sectionLabel;
    }
}