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
    public partial class Musteri : Form
    {
        public Musteri()
        {
            InitializeComponent();
        }
        SatıslarEntities3 con = new SatıslarEntities3();
        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = con.MListele();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Musteriler save = new Musteriler();
            save.SevkiyatId = textBox5.Text;
            save.MusteriAdSoyad = textBox1.Text;
            save.Adres = textBox2.Text;
            save.Telefon = textBox3.Text;
            save.Mail = textBox4.Text;
            save.OdemeDurumu = textBox6.Text;
            save.PersonelNo =Convert.ToInt32(comboBox1.Text);
            con.MEkle(save.SevkiyatId,save.MusteriAdSoyad, save.Adres, save.Telefon, save.Mail,save.OdemeDurumu,save.PersonelNo);
            con.SaveChanges();
            dataGridView1.DataSource = con.MListele();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Musteriler save = new Musteriler();
            save.MusteriNo =Convert.ToInt32(textBox1.Tag);
            save.SevkiyatId = textBox5.Text;
            save.MusteriAdSoyad = textBox1.Text;
            save.Adres = textBox2.Text;
            save.Telefon = textBox3.Text;
            save.Mail = textBox4.Text;
            save.OdemeDurumu = textBox6.Text;
            save.PersonelNo = Convert.ToInt32(comboBox1.Text);
            con.MYenile(save.MusteriNo,save.SevkiyatId, save.MusteriAdSoyad, save.Adres, save.Telefon, save.Mail, save.OdemeDurumu, save.PersonelNo);
            con.SaveChanges();
            dataGridView1.DataSource = con.MListele();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Musteriler save = new Musteriler();
            save.MusteriNo = Convert.ToInt32(textBox1.Tag);
            con.MSil(save.MusteriNo);
            con.SaveChanges();
            dataGridView1.DataSource = con.MListele();

        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow satir = dataGridView1.CurrentRow;
            textBox1.Tag = satir.Cells["MusteriNo"].Value.ToString();
            textBox1.Text = satir.Cells["MusteriAdSoyad"].Value.ToString();
            textBox5.Text = satir.Cells["SevkiyatId"].Value.ToString();
            textBox2.Text = satir.Cells["Adres"].Value.ToString();
            textBox3.Text = satir.Cells["Telefon"].Value.ToString();
            textBox4.Text = satir.Cells["Mail"].Value.ToString();
            textBox6.Text = satir.Cells["OdemeDurumu"].Value.ToString();
            comboBox1.Text = satir.Cells["PersonelNo"].Value.ToString();

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            Arac go = new Arac();
            go.Show();
            this.Hide();
        }

        private void Musteri_Load(object sender, EventArgs e)
        {
            comboBox1.DataSource = con.Personellers.ToList();
            comboBox1.ValueMember = "PersonelNo";
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Form1 go = new Form1();
            go.Show();
            this.Hide();
        }
    }
}
