using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Q2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ListBox1.DataSource = DAO.GetDataTable("select distinct country from DailyReport");
                ListBox1.DataTextField = "country";
                ListBox1.DataValueField = "country";
                ListBox1.SelectedIndex = 0;
                
                ListBox1.DataBind();
                Calendar1.TodaysDate = DateTime.Now;
                Calendar1.SelectedDate = DateTime.Now;
            }
            if(Session["click"] != null)
                addControls();

        }
        private void addControls()
        {
            foreach (int i in ListBox1.GetSelectedIndices())
            {
                TextBox txt = new TextBox();
                Label lbl = new Label();
                txt.ID = "txt" + i.ToString();
                lbl.ID = "lbl" + i.ToString();
                lbl.Text = "<br/>" + ListBox1.Items[i].Value;
                RequiredFieldValidator rfv = new RequiredFieldValidator();
                rfv.ErrorMessage = "Required!";
                rfv.ControlToValidate = "txt" + i.ToString();
                RangeValidator rv = new RangeValidator();
                rv.ControlToValidate = "txt" + i.ToString();
                rv.ErrorMessage = "Must be Numeric";
                rv.MaximumValue = string.Format("{0}", 999999999);
                rv.MinimumValue = string.Format("{0}", 0);
                rv.Type = ValidationDataType.Integer;

                Panel1.Controls.Add(lbl);
                Panel1.Controls.Add(txt);
                Panel1.Controls.Add(rfv);
                Panel1.Controls.Add(rv);

            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["click"] = 1;
            Panel1.Controls.Clear();
            addControls();
            Button2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            foreach (var c in Panel1.Controls)
            {
                if(c is Label)
                {
                    Label lbl1;
                    lbl1 = (Label) c;
                    Label1.Text = lbl1.Text.Substring(lbl1.Text.LastIndexOf('>')+1);
                    SqlCommand cmd = new SqlCommand("select * from DailyReport where country=@c AND Date = @d");
                    cmd.Parameters.AddWithValue("@c", Label1.Text);
                    cmd.Parameters.AddWithValue("@d", Calendar1.SelectedDate);
                    dt = DAO.GetDataTable(cmd);
                }
                if (c is TextBox)
                {
                    TextBox txt = (TextBox)c;
                    int newCases;
                    if (dt.Rows.Count == 0)
                    {
                        newCases = int.Parse(txt.Text);
                        SqlCommand cmd = new SqlCommand("Insert into DailyReport(Country, Date, Newcases)" +
                            " values(@c, @d, @n)");
                        cmd.Parameters.AddWithValue("@c", Label1.Text);
                        cmd.Parameters.AddWithValue("@d", Calendar1.SelectedDate);
                        cmd.Parameters.AddWithValue("@n", newCases);
                        DAO.UpdateTable(cmd);

                    }
                    else
                    {
                        newCases = int.Parse(txt.Text);
                        SqlCommand cmd = new SqlCommand("Update DailyReport set newCases = @n" +
                                " WHERE Country = @c AND Date = @d");
                        cmd.Parameters.AddWithValue("@c", Label1.Text);
                        cmd.Parameters.AddWithValue("@d", Calendar1.SelectedDate);
                        cmd.Parameters.AddWithValue("@n", newCases);
                        DAO.UpdateTable(cmd);

                    }
                }
            }

        }
    }
}