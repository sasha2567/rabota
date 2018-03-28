namespace AirLinesProject
{
    partial class AddDiscontProduct
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
            this.productCombo = new System.Windows.Forms.ComboBox();
            this.discontEdit = new System.Windows.Forms.TextBox();
            this.productLabel = new System.Windows.Forms.Label();
            this.discontLabel = new System.Windows.Forms.Label();
            this.addDiscont = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // productCombo
            // 
            this.productCombo.FormattingEnabled = true;
            this.productCombo.Location = new System.Drawing.Point(54, 34);
            this.productCombo.Name = "productCombo";
            this.productCombo.Size = new System.Drawing.Size(121, 21);
            this.productCombo.TabIndex = 0;
            // 
            // discontEdit
            // 
            this.discontEdit.Location = new System.Drawing.Point(54, 102);
            this.discontEdit.Name = "discontEdit";
            this.discontEdit.Size = new System.Drawing.Size(121, 20);
            this.discontEdit.TabIndex = 1;
            // 
            // productLabel
            // 
            this.productLabel.AutoSize = true;
            this.productLabel.Location = new System.Drawing.Point(54, 18);
            this.productLabel.Name = "productLabel";
            this.productLabel.Size = new System.Drawing.Size(38, 13);
            this.productLabel.TabIndex = 2;
            this.productLabel.Text = "Товар";
            // 
            // discontLabel
            // 
            this.discontLabel.AutoSize = true;
            this.discontLabel.Location = new System.Drawing.Point(51, 75);
            this.discontLabel.Name = "discontLabel";
            this.discontLabel.Size = new System.Drawing.Size(44, 13);
            this.discontLabel.TabIndex = 3;
            this.discontLabel.Text = "Скидка";
            // 
            // addDiscont
            // 
            this.addDiscont.Location = new System.Drawing.Point(57, 138);
            this.addDiscont.Name = "addDiscont";
            this.addDiscont.Size = new System.Drawing.Size(118, 23);
            this.addDiscont.TabIndex = 4;
            this.addDiscont.Text = "Добавить скидку";
            this.addDiscont.UseVisualStyleBackColor = true;
            this.addDiscont.Click += new System.EventHandler(this.addDiscont_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(206, 100);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(240, 150);
            this.dataGridView1.TabIndex = 5;
            this.dataGridView1.Visible = false;
            // 
            // AddDiscontProduct
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(251, 180);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.addDiscont);
            this.Controls.Add(this.discontLabel);
            this.Controls.Add(this.productLabel);
            this.Controls.Add(this.discontEdit);
            this.Controls.Add(this.productCombo);
            this.Name = "AddDiscontProduct";
            this.Text = "AddDiscountProduct";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox productCombo;
        private System.Windows.Forms.TextBox discontEdit;
        private System.Windows.Forms.Label productLabel;
        private System.Windows.Forms.Label discontLabel;
        private System.Windows.Forms.Button addDiscont;
        private System.Windows.Forms.DataGridView dataGridView1;
    }
}