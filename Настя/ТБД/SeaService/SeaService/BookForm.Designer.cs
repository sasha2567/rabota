namespace SeaService
{
    partial class BookForm
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
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.email = new System.Windows.Forms.TextBox();
            this.phone = new System.Windows.Forms.TextBox();
            this.emailLabel = new System.Windows.Forms.Label();
            this.phoneLabel = new System.Windows.Forms.Label();
            this.addPassengerButton = new System.Windows.Forms.Button();
            this.voyageLabel = new System.Windows.Forms.Label();
            this.voyageData = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(12, 186);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(590, 150);
            this.dataGridView1.TabIndex = 0;
            // 
            // email
            // 
            this.email.Location = new System.Drawing.Point(13, 35);
            this.email.Name = "email";
            this.email.Size = new System.Drawing.Size(224, 20);
            this.email.TabIndex = 1;
            // 
            // phone
            // 
            this.phone.Location = new System.Drawing.Point(12, 86);
            this.phone.Name = "phone";
            this.phone.Size = new System.Drawing.Size(225, 20);
            this.phone.TabIndex = 2;
            // 
            // emailLabel
            // 
            this.emailLabel.AutoSize = true;
            this.emailLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.emailLabel.Location = new System.Drawing.Point(13, 13);
            this.emailLabel.Name = "emailLabel";
            this.emailLabel.Size = new System.Drawing.Size(42, 17);
            this.emailLabel.TabIndex = 3;
            this.emailLabel.Text = "Email";
            // 
            // phoneLabel
            // 
            this.phoneLabel.AutoSize = true;
            this.phoneLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.phoneLabel.Location = new System.Drawing.Point(13, 67);
            this.phoneLabel.Name = "phoneLabel";
            this.phoneLabel.Size = new System.Drawing.Size(68, 17);
            this.phoneLabel.TabIndex = 4;
            this.phoneLabel.Text = "Телефон";
            // 
            // addPassengerButton
            // 
            this.addPassengerButton.Location = new System.Drawing.Point(12, 131);
            this.addPassengerButton.Name = "addPassengerButton";
            this.addPassengerButton.Size = new System.Drawing.Size(126, 41);
            this.addPassengerButton.TabIndex = 5;
            this.addPassengerButton.Text = "Добавить пассажира";
            this.addPassengerButton.UseVisualStyleBackColor = true;
            this.addPassengerButton.Click += new System.EventHandler(this.addPassengerButton_Click);
            // 
            // voyageLabel
            // 
            this.voyageLabel.AutoSize = true;
            this.voyageLabel.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.voyageLabel.Location = new System.Drawing.Point(285, 35);
            this.voyageLabel.Name = "voyageLabel";
            this.voyageLabel.Size = new System.Drawing.Size(40, 17);
            this.voyageLabel.TabIndex = 6;
            this.voyageLabel.Text = "Рейс";
            // 
            // voyageData
            // 
            this.voyageData.AutoSize = true;
            this.voyageData.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.voyageData.Location = new System.Drawing.Point(285, 67);
            this.voyageData.Name = "voyageData";
            this.voyageData.Size = new System.Drawing.Size(0, 17);
            this.voyageData.TabIndex = 7;
            // 
            // BookForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(674, 348);
            this.Controls.Add(this.voyageData);
            this.Controls.Add(this.voyageLabel);
            this.Controls.Add(this.addPassengerButton);
            this.Controls.Add(this.phoneLabel);
            this.Controls.Add(this.emailLabel);
            this.Controls.Add(this.phone);
            this.Controls.Add(this.email);
            this.Controls.Add(this.dataGridView1);
            this.Name = "BookForm";
            this.Text = "BookForm";
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.TextBox email;
        private System.Windows.Forms.TextBox phone;
        private System.Windows.Forms.Label emailLabel;
        private System.Windows.Forms.Label phoneLabel;
        private System.Windows.Forms.Button addPassengerButton;
        private System.Windows.Forms.Label voyageLabel;
        private System.Windows.Forms.Label voyageData;
    }
}