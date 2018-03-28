namespace AirLinesProject
{
    partial class AdminForm
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.addProduct = new System.Windows.Forms.Button();
            this.tableLabel = new System.Windows.Forms.Label();
            this.addSection = new System.Windows.Forms.Button();
            this.addDiscont = new System.Windows.Forms.Button();
            this.requestButton = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(12, 33);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(742, 150);
            this.dataGridView1.TabIndex = 0;
            this.dataGridView1.CellClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // addProduct
            // 
            this.addProduct.Location = new System.Drawing.Point(12, 211);
            this.addProduct.Name = "addProduct";
            this.addProduct.Size = new System.Drawing.Size(75, 45);
            this.addProduct.TabIndex = 1;
            this.addProduct.Text = "Добавить Товар";
            this.addProduct.UseVisualStyleBackColor = true;
            this.addProduct.Click += new System.EventHandler(this.addProduct_Click);
            // 
            // tableLabel
            // 
            this.tableLabel.AutoSize = true;
            this.tableLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.tableLabel.Location = new System.Drawing.Point(12, 9);
            this.tableLabel.Name = "tableLabel";
            this.tableLabel.Size = new System.Drawing.Size(212, 17);
            this.tableLabel.TabIndex = 2;
            this.tableLabel.Text = "Список существующих товаров";
            // 
            // addSection
            // 
            this.addSection.Location = new System.Drawing.Point(110, 211);
            this.addSection.Name = "addSection";
            this.addSection.Size = new System.Drawing.Size(75, 45);
            this.addSection.TabIndex = 3;
            this.addSection.Text = "Добавить категорию";
            this.addSection.UseVisualStyleBackColor = true;
            this.addSection.Click += new System.EventHandler(this.addSection_Click);
            // 
            // addDiscont
            // 
            this.addDiscont.Location = new System.Drawing.Point(217, 211);
            this.addDiscont.Name = "addDiscont";
            this.addDiscont.Size = new System.Drawing.Size(109, 45);
            this.addDiscont.TabIndex = 4;
            this.addDiscont.Text = "Добавить скидку на товар";
            this.addDiscont.UseVisualStyleBackColor = true;
            this.addDiscont.Click += new System.EventHandler(this.addDiscont_Click);
            // 
            // requestButton
            // 
            this.requestButton.Location = new System.Drawing.Point(349, 211);
            this.requestButton.Name = "requestButton";
            this.requestButton.Size = new System.Drawing.Size(106, 44);
            this.requestButton.TabIndex = 5;
            this.requestButton.Text = "Создать свой запрос";
            this.requestButton.UseVisualStyleBackColor = true;
            this.requestButton.Click += new System.EventHandler(this.requestButton_Click);
            // 
            // AdminForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(766, 268);
            this.Controls.Add(this.requestButton);
            this.Controls.Add(this.addDiscont);
            this.Controls.Add(this.addSection);
            this.Controls.Add(this.tableLabel);
            this.Controls.Add(this.addProduct);
            this.Controls.Add(this.dataGridView1);
            this.Name = "AdminForm";
            this.Text = "AdminForm";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Button addProduct;
        private System.Windows.Forms.Label tableLabel;
        private System.Windows.Forms.Button addSection;
        private System.Windows.Forms.Button addDiscont;
        private System.Windows.Forms.Button requestButton;
    }
}

