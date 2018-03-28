namespace AirLinesProject
{
    partial class AddProductToStorage
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
            this.storages = new System.Windows.Forms.DataGridView();
            this.storageCombo = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.productCombo = new System.Windows.Forms.ComboBox();
            this.Товар = new System.Windows.Forms.Label();
            this.countEdit = new System.Windows.Forms.TextBox();
            this.add = new System.Windows.Forms.Button();
            this.product = new System.Windows.Forms.DataGridView();
            this.storageproduct = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.storages)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.product)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.storageproduct)).BeginInit();
            this.SuspendLayout();
            // 
            // storages
            // 
            this.storages.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.storages.Location = new System.Drawing.Point(12, 12);
            this.storages.Name = "storages";
            this.storages.Size = new System.Drawing.Size(22, 25);
            this.storages.TabIndex = 17;
            this.storages.Visible = false;
            // 
            // storageCombo
            // 
            this.storageCombo.FormattingEnabled = true;
            this.storageCombo.Location = new System.Drawing.Point(44, 44);
            this.storageCombo.Name = "storageCombo";
            this.storageCombo.Size = new System.Drawing.Size(121, 21);
            this.storageCombo.TabIndex = 18;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(41, 24);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(38, 13);
            this.label1.TabIndex = 19;
            this.label1.Text = "Склад";
            // 
            // productCombo
            // 
            this.productCombo.FormattingEnabled = true;
            this.productCombo.Location = new System.Drawing.Point(44, 107);
            this.productCombo.Name = "productCombo";
            this.productCombo.Size = new System.Drawing.Size(121, 21);
            this.productCombo.TabIndex = 20;
            // 
            // Товар
            // 
            this.Товар.AutoSize = true;
            this.Товар.Location = new System.Drawing.Point(41, 82);
            this.Товар.Name = "Товар";
            this.Товар.Size = new System.Drawing.Size(38, 13);
            this.Товар.TabIndex = 21;
            this.Товар.Text = "Товар";
            // 
            // countEdit
            // 
            this.countEdit.Location = new System.Drawing.Point(48, 157);
            this.countEdit.Name = "countEdit";
            this.countEdit.Size = new System.Drawing.Size(116, 20);
            this.countEdit.TabIndex = 22;
            // 
            // add
            // 
            this.add.Location = new System.Drawing.Point(53, 206);
            this.add.Name = "add";
            this.add.Size = new System.Drawing.Size(110, 40);
            this.add.TabIndex = 23;
            this.add.Text = "Принять товар";
            this.add.UseVisualStyleBackColor = true;
            this.add.Click += new System.EventHandler(this.add_Click);
            // 
            // product
            // 
            this.product.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.product.Location = new System.Drawing.Point(12, 44);
            this.product.Name = "product";
            this.product.Size = new System.Drawing.Size(22, 25);
            this.product.TabIndex = 24;
            this.product.Visible = false;
            // 
            // storageproduct
            // 
            this.storageproduct.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.storageproduct.Location = new System.Drawing.Point(12, 82);
            this.storageproduct.Name = "storageproduct";
            this.storageproduct.Size = new System.Drawing.Size(22, 25);
            this.storageproduct.TabIndex = 25;
            this.storageproduct.Visible = false;
            // 
            // AddProductToStorage
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(203, 262);
            this.Controls.Add(this.storageproduct);
            this.Controls.Add(this.product);
            this.Controls.Add(this.add);
            this.Controls.Add(this.countEdit);
            this.Controls.Add(this.Товар);
            this.Controls.Add(this.productCombo);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.storageCombo);
            this.Controls.Add(this.storages);
            this.Name = "AddProductToStorage";
            this.Text = "AddProductToStorage";
            ((System.ComponentModel.ISupportInitialize)(this.storages)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.product)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.storageproduct)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView storages;
        private System.Windows.Forms.ComboBox storageCombo;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox productCombo;
        private System.Windows.Forms.Label Товар;
        private System.Windows.Forms.TextBox countEdit;
        private System.Windows.Forms.Button add;
        private System.Windows.Forms.DataGridView product;
        private System.Windows.Forms.DataGridView storageproduct;
    }
}