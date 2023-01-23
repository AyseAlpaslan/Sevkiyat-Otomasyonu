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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SatıslarEntities3 con = new SatıslarEntities3();
        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = con.PListele();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Personeller save = new Personeller();
            save.PersonelAdSoyad = textBox1.Text;
            save.Adres = textBox2.Text;
            save.Telefon = textBox3.Text;
            save.Mail = textBox4.Text;
            con.PEkle(save.PersonelAdSoyad, save.Adres, save.Telefon, save.Mail);
            con.SaveChanges();
            dataGridView1.DataSource = con.PListele();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Personeller save = new Personeller();
            save.PersonelNo =Convert.ToInt32(textBox1.Tag);
            save.PersonelAdSoyad = textBox1.Text;
            save.Adres = textBox2.Text;
            save.Telefon = textBox3.Text;
            save.Mail = textBox4.Text;
            con.PYenile(save.PersonelNo,save.PersonelAdSoyad, save.Adres, save.Telefon, save.Mail);
            con.SaveChanges();
            dataGridView1.DataSource = con.PListele();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Personeller save = new Personeller();
            save.PersonelNo = Convert.ToInt32(textBox1.Tag);
            con.PSil(save.PersonelNo);
            con.SaveChanges();
            dataGridView1.DataSource = con.PListele();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow satir = dataGridView1.CurrentRow;
            textBox1.Tag = satir.Cells["PersonelNo"].Value.ToString();
            textBox1.Text = satir.Cells["PersonelAdSoyad"].Value.ToString();
            textBox2.Text = satir.Cells["Adres"].Value.ToString();
            textBox3.Text = satir.Cells["Telefon"].Value.ToString();
            textBox4.Text = satir.Cells["Mail"].Value.ToString();
            
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            Musteri go = new Musteri();
            go.Show();
            this.Hide();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
