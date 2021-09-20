using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using TedShopWeb.DAL;

namespace Q2
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            comboBox1.DataSource = DAO.GetDataTable("select * from courses");
            comboBox1.DisplayMember = "CourseCode";
            comboBox1.ValueMember = "CourseID";
            comboBox1.SelectedIndex = 0;

            listBox1.DataSource = DAO.GetDataTable("select * from rooms");
            listBox1.DisplayMember = "RoomCode";
            listBox1.ValueMember = "RoomID";


        }

        private void button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("Insert into COURSE_SCHEDULES(courseID, teachingDate, slot, roomID, Description) " +
                "VALUES(@c, @t, @s, @r, @d)");
            cmd.Parameters.AddWithValue("@c", int.Parse(comboBox1.SelectedValue.ToString()));
            cmd.Parameters.AddWithValue("@t", dateTimePicker1.Value);
            cmd.Parameters.AddWithValue("@s", numericUpDown1.Value);
            cmd.Parameters.AddWithValue("@r", int.Parse(listBox1.SelectedValue.ToString()));
            cmd.Parameters.AddWithValue("@d", textBox1.Text);

            if (DAO.UpdateTable(cmd))
                MessageBox.Show("Added!");
        }
    }
}
