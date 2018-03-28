namespace AirLinesProject
{
    partial class StorageForm
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
            this.SDGV = new System.Windows.Forms.DataGridView();
            this.addProductToStorage = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.storages)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.SDGV)).BeginInit();
            this.SuspendLayout();
            // 
            // storages
            // 
            this.storages.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.storages.Location = new System.Drawing.Point(12, 12);
            this.storages.Name = "storages";
            this.storages.Size = new System.Drawing.Size(22, 25);
            this.storages.TabIndex = 16;
            this.storages.Visible = false;
            // 
            // SDGV
            // 
            this.SDGV.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.SDGV.Location = new System.Drawing.Point(40, 12);
            this.SDGV.Name = "SDGV";
            this.SDGV.Size = new System.Drawing.Size(452, 150);
            this.SDGV.TabIndex = 17;
            this.SDGV.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.SDVG_CellClick);
            // 
            // addProductToStorage
            // 
            this.addProductToStorage.Location = new System.Drawing.Point(40, 189);
            this.addProductToStorage.Name = "addProductToStorage";
            this.addProductToStorage.Size = new System.Drawing.Size(122, 41);
            this.addProductToStorage.TabIndex = 18;
            this.addProductToStorage.Text = "Принять товар на склад";
            this.addProductToStorage.UseVisualStyleBackColor = true;
            this.addProductToStorage.Click += new System.EventHandler(this.addProductToStorage_Click);
            // 
            // StorageForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(529, 262);
            this.Controls.Add(this.addProductToStorage);
            this.Controls.Add(this.SDGV);
            this.Controls.Add(this.storages);
            this.Name = "StorageForm";
            this.Text = "StorageForm";
            ((System.ComponentModel.ISupportInitialize)(this.storages)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.SDGV)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.DataGridView storages;
        private System.Windows.Forms.DataGridView SDGV;
        private System.Windows.Forms.Button addProductToStorage;
    }
}