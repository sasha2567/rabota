namespace AirLinesProject
{
    partial class UserInterfase
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
            this.productDGV = new System.Windows.Forms.DataGridView();
            this.Col1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label1 = new System.Windows.Forms.Label();
            this.addOrder = new System.Windows.Forms.Button();
            this.ordersDGV = new System.Windows.Forms.DataGridView();
            this.couriersDGV = new System.Windows.Forms.DataGridView();
            this.product = new System.Windows.Forms.DataGridView();
            this.basket = new System.Windows.Forms.DataGridView();
            this.temp = new System.Windows.Forms.DataGridView();
            this.viewBasket = new System.Windows.Forms.Button();
            this.image = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.productDGV)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.ordersDGV)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.couriersDGV)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.product)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.basket)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.temp)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.image)).BeginInit();
            this.SuspendLayout();
            // 
            // productDGV
            // 
            this.productDGV.AllowUserToAddRows = false;
            this.productDGV.AllowUserToDeleteRows = false;
            this.productDGV.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.AllCells;
            this.productDGV.AutoSizeRowsMode = System.Windows.Forms.DataGridViewAutoSizeRowsMode.AllCells;
            this.productDGV.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.productDGV.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Col1});
            this.productDGV.Location = new System.Drawing.Point(12, 40);
            this.productDGV.Name = "productDGV";
            this.productDGV.ReadOnly = true;
            this.productDGV.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.productDGV.Size = new System.Drawing.Size(495, 252);
            this.productDGV.TabIndex = 0;
            this.productDGV.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.DGV_CellClick);
            // 
            // Col1
            // 
            this.Col1.HeaderText = "Картинка";
            this.Col1.Name = "Col1";
            this.Col1.ReadOnly = true;
            this.Col1.Width = 80;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label1.Location = new System.Drawing.Point(9, 20);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(331, 17);
            this.label1.TabIndex = 6;
            this.label1.Text = "Список доступных для покупки товаров товаров ";
            // 
            // addOrder
            // 
            this.addOrder.Location = new System.Drawing.Point(12, 298);
            this.addOrder.Name = "addOrder";
            this.addOrder.Size = new System.Drawing.Size(185, 23);
            this.addOrder.TabIndex = 8;
            this.addOrder.Text = "Оформить заказ";
            this.addOrder.UseVisualStyleBackColor = true;
            this.addOrder.Click += new System.EventHandler(this.btn_Click);
            // 
            // ordersDGV
            // 
            this.ordersDGV.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.ordersDGV.Location = new System.Drawing.Point(361, -1);
            this.ordersDGV.Name = "ordersDGV";
            this.ordersDGV.Size = new System.Drawing.Size(24, 24);
            this.ordersDGV.TabIndex = 9;
            this.ordersDGV.Visible = false;
            // 
            // couriersDGV
            // 
            this.couriersDGV.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.couriersDGV.Location = new System.Drawing.Point(391, -1);
            this.couriersDGV.Name = "couriersDGV";
            this.couriersDGV.Size = new System.Drawing.Size(25, 24);
            this.couriersDGV.TabIndex = 10;
            this.couriersDGV.Visible = false;
            // 
            // product
            // 
            this.product.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.product.Location = new System.Drawing.Point(422, -1);
            this.product.Name = "product";
            this.product.Size = new System.Drawing.Size(27, 24);
            this.product.TabIndex = 11;
            this.product.Visible = false;
            // 
            // basket
            // 
            this.basket.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.basket.Location = new System.Drawing.Point(455, -1);
            this.basket.Name = "basket";
            this.basket.Size = new System.Drawing.Size(25, 24);
            this.basket.TabIndex = 12;
            this.basket.Visible = false;
            // 
            // temp
            // 
            this.temp.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.temp.Location = new System.Drawing.Point(486, -1);
            this.temp.Name = "temp";
            this.temp.Size = new System.Drawing.Size(21, 24);
            this.temp.TabIndex = 13;
            this.temp.Visible = false;
            // 
            // viewBasket
            // 
            this.viewBasket.Location = new System.Drawing.Point(222, 298);
            this.viewBasket.Name = "viewBasket";
            this.viewBasket.Size = new System.Drawing.Size(185, 23);
            this.viewBasket.TabIndex = 14;
            this.viewBasket.Text = "Просмотреть корзину";
            this.viewBasket.UseVisualStyleBackColor = true;
            this.viewBasket.Click += new System.EventHandler(this.viewBasket_Click);
            // 
            // image
            // 
            this.image.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.image.Location = new System.Drawing.Point(331, -1);
            this.image.Name = "image";
            this.image.Size = new System.Drawing.Size(24, 24);
            this.image.TabIndex = 15;
            this.image.Visible = false;
            // 
            // UserInterfase
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(521, 334);
            this.Controls.Add(this.image);
            this.Controls.Add(this.viewBasket);
            this.Controls.Add(this.temp);
            this.Controls.Add(this.basket);
            this.Controls.Add(this.product);
            this.Controls.Add(this.couriersDGV);
            this.Controls.Add(this.ordersDGV);
            this.Controls.Add(this.addOrder);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.productDGV);
            this.Name = "UserInterfase";
            this.ShowIcon = false;
            this.Load += new System.EventHandler(this.UserInterfase_Load);
            this.Leave += new System.EventHandler(this.UserInterfase_Leave);
            ((System.ComponentModel.ISupportInitialize)(this.productDGV)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.ordersDGV)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.couriersDGV)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.product)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.basket)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.temp)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.image)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView productDGV;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button addOrder;
        private System.Windows.Forms.DataGridView ordersDGV;
        private System.Windows.Forms.DataGridView couriersDGV;
        private System.Windows.Forms.DataGridView product;
        private System.Windows.Forms.DataGridView basket;
        private System.Windows.Forms.DataGridView temp;
        private System.Windows.Forms.Button viewBasket;
        private System.Windows.Forms.DataGridViewTextBoxColumn Col1;
        private System.Windows.Forms.DataGridView image;
    }
}