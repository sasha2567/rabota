namespace SeaService
{
    partial class ModeratorForm
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
            this.buttonOrders = new System.Windows.Forms.Button();
            this.buttonVessels = new System.Windows.Forms.Button();
            this.buttonVoyages = new System.Windows.Forms.Button();
            this.buttonPorts = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // buttonOrders
            // 
            this.buttonOrders.Location = new System.Drawing.Point(32, 55);
            this.buttonOrders.Name = "buttonOrders";
            this.buttonOrders.Size = new System.Drawing.Size(112, 43);
            this.buttonOrders.TabIndex = 0;
            this.buttonOrders.Text = "Работа с заказами";
            this.buttonOrders.UseVisualStyleBackColor = true;
            this.buttonOrders.Click += new System.EventHandler(this.buttonOrders_Click);
            // 
            // buttonVessels
            // 
            this.buttonVessels.Location = new System.Drawing.Point(187, 55);
            this.buttonVessels.Name = "buttonVessels";
            this.buttonVessels.Size = new System.Drawing.Size(112, 43);
            this.buttonVessels.TabIndex = 1;
            this.buttonVessels.Text = "Работа с судами";
            this.buttonVessels.UseVisualStyleBackColor = true;
            this.buttonVessels.Click += new System.EventHandler(this.buttonVessels_Click);
            // 
            // buttonVoyages
            // 
            this.buttonVoyages.Location = new System.Drawing.Point(187, 123);
            this.buttonVoyages.Name = "buttonVoyages";
            this.buttonVoyages.Size = new System.Drawing.Size(112, 43);
            this.buttonVoyages.TabIndex = 3;
            this.buttonVoyages.Text = "Работа с рейсами";
            this.buttonVoyages.UseVisualStyleBackColor = true;
            this.buttonVoyages.Click += new System.EventHandler(this.buttonVoyages_Click);
            // 
            // buttonPorts
            // 
            this.buttonPorts.Location = new System.Drawing.Point(32, 123);
            this.buttonPorts.Name = "buttonPorts";
            this.buttonPorts.Size = new System.Drawing.Size(112, 43);
            this.buttonPorts.TabIndex = 2;
            this.buttonPorts.Text = "Работа с портами";
            this.buttonPorts.UseVisualStyleBackColor = true;
            this.buttonPorts.Click += new System.EventHandler(this.buttonPorts_Click);
            // 
            // ModeratorForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(333, 219);
            this.Controls.Add(this.buttonVoyages);
            this.Controls.Add(this.buttonPorts);
            this.Controls.Add(this.buttonVessels);
            this.Controls.Add(this.buttonOrders);
            this.Name = "ModeratorForm";
            this.Text = "ModeratorForm";
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button buttonOrders;
        private System.Windows.Forms.Button buttonVessels;
        private System.Windows.Forms.Button buttonVoyages;
        private System.Windows.Forms.Button buttonPorts;
    }
}