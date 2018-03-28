namespace AirLinesProject
{
    partial class AddSection
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
            this.sectionEdit = new System.Windows.Forms.TextBox();
            this.add = new System.Windows.Forms.Button();
            this.sectionLabel = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // sectionEdit
            // 
            this.sectionEdit.Location = new System.Drawing.Point(40, 41);
            this.sectionEdit.Name = "sectionEdit";
            this.sectionEdit.Size = new System.Drawing.Size(100, 20);
            this.sectionEdit.TabIndex = 0;
            // 
            // add
            // 
            this.add.Location = new System.Drawing.Point(50, 75);
            this.add.Name = "add";
            this.add.Size = new System.Drawing.Size(75, 23);
            this.add.TabIndex = 1;
            this.add.Text = "Добавить";
            this.add.UseVisualStyleBackColor = true;
            this.add.Click += new System.EventHandler(this.add_Click);
            // 
            // sectionLabel
            // 
            this.sectionLabel.AutoSize = true;
            this.sectionLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.sectionLabel.Location = new System.Drawing.Point(21, 21);
            this.sectionLabel.Name = "sectionLabel";
            this.sectionLabel.Size = new System.Drawing.Size(143, 17);
            this.sectionLabel.TabIndex = 2;
            this.sectionLabel.Text = "Название категории";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(150, 71);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(240, 150);
            this.dataGridView1.TabIndex = 3;
            this.dataGridView1.Visible = false;
            // 
            // AddSection
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(190, 112);
            this.Controls.Add(this.dataGridView1);
            this.Controls.Add(this.sectionLabel);
            this.Controls.Add(this.add);
            this.Controls.Add(this.sectionEdit);
            this.Name = "AddSection";
            this.Text = "AddSection";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox sectionEdit;
        private System.Windows.Forms.Button add;
        private System.Windows.Forms.Label sectionLabel;
        private System.Windows.Forms.DataGridView dataGridView1;
    }
}