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
    public partial class Sevkiyat : Form
    {
        public Sevkiyat()
        {
            InitializeComponent();
        }
        SatıslarEntities3 con = new SatıslarEntities3();
        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1.DataSource = con.SListele();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Sevkiyatlar save = new Sevkiyatlar();
            save.SevkiyatAdi = textBox1.Text;
            save.SevkiyatAlimNoktasi = textBox2.Text;
            save.SevkiyatUlasimNoktasi = textBox3.Text;
            save.Mesafe = textBox4.Text;
            save.MesafeTutar = Convert.ToDecimal(textBox5.Text);
            save.AracNo = Convert.ToInt32(comboBox1.Text);
            save.MusteriNo = Convert.ToInt32(comboBox2.Text);
            con.SEkle(save.SevkiyatAdi, save.SevkiyatAlimNoktasi, save.SevkiyatUlasimNoktasi, save.Mesafe, save.MesafeTutar, save.AracNo, save.MusteriNo);
            con.SaveChanges();
            dataGridView1.DataSource = con.SListele();

        }

        private void button3_Click(object sender, EventArgs e)
        {
            Sevkiyatlar save = new Sevkiyatlar();
            save.SevkiyatNo = Convert.ToInt32(textBox1.Tag);
            save.SevkiyatAdi = textBox1.Text;
            save.SevkiyatAlimNoktasi = textBox2.Text;
            save.SevkiyatUlasimNoktasi = textBox3.Text;
            save.Mesafe = textBox4.Text;
            save.MesafeTutar = Convert.ToDecimal(textBox5.Text);
            save.AracNo = Convert.ToInt32(comboBox1.Text);
            save.MusteriNo = Convert.ToInt32(comboBox2.Text);
            con.SYenile(save.SevkiyatNo,save.SevkiyatAdi, save.SevkiyatAlimNoktasi, save.SevkiyatUlasimNoktasi, save.Mesafe, save.MesafeTutar, save.AracNo, save.MusteriNo);
            con.SaveChanges();
            dataGridView1.DataSource = con.SListele();
        }

        private void button4_Click(object sender, EventArgs e)
        {
            Sevkiyatlar save = new Sevkiyatlar();
            save.SevkiyatNo = Convert.ToInt32(textBox1.Tag);
            con.SSil(save.SevkiyatNo);
            con.SaveChanges();
            dataGridView1.DataSource = con.SListele();

        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            DataGridViewRow satir = dataGridView1.CurrentRow;
            textBox1.Tag = satir.Cells["SevkiyatNo"].Value.ToString();
            textBox1.Text = satir.Cells["SevkiyatAdi"].Value.ToString();
            textBox2.Text = satir.Cells["SevkiyatAlimNoktasi"].Value.ToString();
            textBox3.Text = satir.Cells["SevkiyatUlasimNoktasi"].Value.ToString();
            textBox4.Text = satir.Cells["Mesafe"].Value.ToString();
            textBox5.Text = satir.Cells["MesafeTutar"].Value.ToString();
            comboBox1.Text = satir.Cells["AracNo"].Value.ToString();
            comboBox2.Text = satir.Cells["MusteriNo"].Value.ToString();

        }

        private void Sevkiyat_Load(object sender, EventArgs e)
        {
            comboBox1.DataSource = con.Araclars.ToList();
            comboBox1.ValueMember = "AracNo";
            comboBox2.DataSource = con.Musterilers.ToList();
            comboBox2.ValueMember = "MusteriNo";
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Arac go = new Arac();
            go.Show();
            this.Hide();
        }
    }
}
