using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ProcedurluDbFirst_Proje
{
    public partial class Arac : Form
    {
        public Arac()
        {
            InitializeComponent();
        }
        SatıslarEntities3 con = new SatıslarEntities3();

        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = con.AListele();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Araclar save = new Araclar();
            save.AracTur = textBox1.Text;
            save.AracKapasite =Convert.ToInt32(textBox2.Text);
            save.AracSofor = textBox4.Text;
            con.AEkle(save.AracTur, save.AracKapasite, save.AracSofor);
            con.SaveChanges();
            dataGridView1.DataSource = con.AListele();

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Araclar save = new Araclar();
            save.AracNo =Convert.ToInt32(textBox1.Tag);
            save.AracTur = textBox1.Text;
            save.AracKapasite = Convert.ToInt32(textBox2.Text);
            save.AracSofor = textBox4.Text;
            con.AYenile(save.AracNo,save.AracTur, save.AracKapasite, save.AracSofor);
            con.SaveChanges();
            dataGridView1.DataSource = con.AListele();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Araclar save = new Araclar();
            save.AracNo = Convert.ToInt32(textBox1.Tag);
            con.ASil(save.AracNo);
            con.SaveChanges();
            dataGridView1.DataSource = con.AListele();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow satir = dataGridView1.CurrentRow;
            textBox1.Tag = satir.Cells["AracNo"].Value.ToString();
            textBox1.Text = satir.Cells["AracTur"].Value.ToString();
            textBox2.Text = satir.Cells["AracKapasite"].Value.ToString();
            textBox4.Text = satir.Cells["AracSofor"].Value.ToString();
        
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            Sevkiyat go = new Sevkiyat();
            go.Show();
            this.Hide();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Musteri go =new Musteri();
            go.Show();
            this.Hide();
        }

        private void Arac_Load(object sender, EventArgs e)
        {

        }
    }
}
