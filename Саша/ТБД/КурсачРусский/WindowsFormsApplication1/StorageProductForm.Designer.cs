namespace AirLinesProject
{
    partial class StorageProductForm
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
            this.storageProduct = new System.Windows.Forms.DataGridView();
            this.add = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.storageProduct)).BeginInit();
            this.SuspendLayout();
            // 
            // storageProduct
            // 
            this.storageProduct.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.storageProduct.Location = new System.Drawing.Point(12, 12);
            this.storageProduct.Name = "storageProduct";
            this.storageProduct.Size = new System.Drawing.Size(349, 221);
            this.storageProduct.TabIndex = 18;
            // 
            // add
            // 
            this.add.Location = new System.Drawing.Point(12, 252);
            this.add.Name = "add";
            this.add.Size = new System.Drawing.Size(349, 54);
            this.add.TabIndex = 19;
            this.add.Text = "Принять товар на склад";
            this.add.UseVisualStyleBackColor = true;
            this.add.Click += new System.EventHandler(this.add_Click);
            // 
            // StorageProductForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(373, 328);
            this.Controls.Add(this.add);
            this.Controls.Add(this.storageProduct);
            this.Name = "StorageProductForm";
            this.Text = "StorageProductForm";
            ((System.ComponentModel.ISupportInitialize)(this.storageProduct)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView storageProduct;
        private System.Windows.Forms.Button add;
    }
}