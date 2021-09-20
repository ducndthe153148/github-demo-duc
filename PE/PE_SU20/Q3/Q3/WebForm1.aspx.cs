using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;

namespace Q3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DropDownList1.DataSource = DAO.GetDataTable("select distinct TeachingDate from COURSE_SCHEDULES");
                DropDownList1.DataTextField = "TeachingDate";
                DropDownList1.DataValueField = "TeachingDate";
                DropDownList1.DataTextFormatString = "{0:dd/MM/yyyy}";
                DropDownList1.DataBind();
                showData();
            }

        }
        private void showData()
        {
            SqlCommand cmd = new SqlCommand("WITH T AS " +
"(" +
"SELECT r.RoomCode, cs.Slot, " +
"i.InstructorLastName + ' ' + i.InstructorMidName + ' ' + i.InstructorFirstName as fullName " +
"FROM ROOMS r, COURSES c, COURSE_SCHEDULES cs, INSTRUCTORS i " +
"WHERE c.CourseId = cs.CourseId " +
"AND c.InstructorId = i.InstructorId " +
"AND cs.RoomId = r.RoomId " +
"AND cs.TeachingDate = @d " +
")" +
"SELECT RoomCode," +
    "(select fullname from T where RoomCode = o.RoomCode AND Slot = 1) AS slot1," +
    "(select fullname from T where RoomCode = o.RoomCode AND Slot = 2) AS slot2," +
    "(select fullname from T where RoomCode = o.RoomCode AND Slot = 3) AS slot3," +
    "(select fullname from T where RoomCode = o.RoomCode AND Slot = 4) AS slot4," +
    "(select fullname from T where RoomCode = o.RoomCode AND Slot = 5) AS slot5," +
    "(select fullname from T where RoomCode = o.RoomCode AND Slot = 6) AS slot6 " +
"FROM T o " +
"GROUP BY RoomCode");

            cmd.Parameters.AddWithValue("@d", DateTime.Parse(DropDownList1.SelectedValue));
            DataTable dt = DAO.GetDataTable(cmd);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            showData();
        }
    }
}