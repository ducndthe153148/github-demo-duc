using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace Q1
{
    public partial class Form1 : Form
    {
        DataView dv;
        public Form1()
        {
            InitializeComponent();
            // 1.0 points
            listBox1.DataSource = DAO.GetDataTable("select distinct province from InfectedCases");
            listBox1.DisplayMember = "Province";
            listBox1.ValueMember = "Province";
            // 0.5 points
            listBox1.SelectedValue = "Ha Noi";
            
            DataTable dt = new DataTable();
            dt = DAO.GetDataTable("select * from InfectedCases");
            dv = new DataView(dt);

            string filter = "Province = '" + listBox1.SelectedValue + "'";
            dv.RowFilter = filter;

            dataGridView1.DataSource = dv;
            listBox1.SelectionMode = SelectionMode.MultiSimple;
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'pE_2020DataSet.Cases' table. You can move, or remove it, as needed.
          
        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string filter = "";
            if (checkBox1.Checked) filter += "sex = true";
            if (checkBox2.Checked)
            {
                if (filter != "") filter += " OR ";
                filter += "sex = false";
            }

            string filter1 = "";
            try
            {
                // Because listBox.DataSouce = dv (DataView)
                foreach (DataRowView item in listBox1.SelectedItems)
                {
                    if (filter1 != "") filter1 += " OR ";
                    filter1 += "province = '" + item.Row[0].ToString().Trim() + "'";
                }
                string filter2 = "";
                if (filter != "") filter2 += "(" + filter + ")";
                if (filter2 != "") filter2 += " AND ";
                if(filter1 != "") filter2 += "(" + filter1 + ")";
                MessageBox.Show(filter2);
                dv.RowFilter = filter2;
                dataGridView1.DataSource = dv;
            }
            catch{ }
  

        }

        private void dataGridView1_DataBindingComplete(object sender, DataGridViewBindingCompleteEventArgs e)
        {
            label1.Text = dataGridView1.Rows.Count.ToString();
        }
    }
}
