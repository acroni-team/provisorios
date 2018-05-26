using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ColorPicker
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        public Color Colorpicker { get; set; }

        private void pictureBox2_MouseClick(object sender, MouseEventArgs e)
        {
            Bitmap b = new Bitmap(pictureBox2.Image);
            Color c = b.GetPixel(e.X, e.Y);
            pictureBox3.BackColor = c;
            Colorpicker = c;
            lblCor.Text = Colorpicker.ToString();
        }

        private void btnAbstractus_Click(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            if (b.BackColor == Colorpicker)
                b.BackColor = Color.Transparent;
            else
                b.BackColor = Colorpicker;
        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {
            pictureBox3.BackColor = Colorpicker;
        }

        private void lblCorTotal_Click(object sender, EventArgs e)
        {
            foreach (Control c in this.Controls)
            {
                if (c is btnColor)
                {
                    (c as Button).BackColor = Colorpicker;
                }
            }
        }
    }
}
