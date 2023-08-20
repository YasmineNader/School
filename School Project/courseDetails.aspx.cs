using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Project
{
    public partial class courseDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string value = Request.QueryString["id"];

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultConnection"].ConnectionString);

            conn.Open();



            List<courseClass> data = new List<courseClass>();

            string sql = "select * from courseContent where id = " + value ;


            SqlCommand cmd = new SqlCommand(sql, conn);

            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                while (rdr.Read())
                {

                    courseClass courseDetails = new courseClass();
                    courseDetails.ImageName = (rdr.GetValue(1).ToString());
                    courseDetails.CourseName = (rdr.GetValue(2).ToString());
                    courseDetails.description = (rdr.GetValue(3).ToString());
                    courseDetails.teacherName = (rdr.GetValue(4).ToString());
                    courseDetails.courseDate = (rdr.GetValue(5).ToString());
                    courseDetails.startTime = (rdr.GetValue(6).ToString());
                    courseDetails.endTime = (rdr.GetValue(7).ToString());


                    data.Add(courseDetails);

                }

            }
            courseDetail.DataSource = data;
            courseDetail.DataBind();





            conn.Close();

    }
    }
}