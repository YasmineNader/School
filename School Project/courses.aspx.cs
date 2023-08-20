using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;

namespace School_Project
{
    public class dbcourses
    {
        public string firstName { set; get; }
        public string lastName { set; get; }
    }
        public partial class courses : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultConnection"].ConnectionString);

            conn.Open();

 
            List<courseClass> data = new List<courseClass>();

            string sql = "select * from courseContent";


            SqlCommand cmd = new SqlCommand(sql, conn);

            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                while (rdr.Read())
                {

                    courseClass course = new courseClass();
                    course.id = (rdr.GetValue(0).ToString());
                    course.ImageName = (rdr.GetValue(1).ToString());

                    course.CourseName = (rdr.GetValue(2).ToString());
                    course.description = (rdr.GetValue(3).ToString());

                    data.Add(course);

                }

            }
            coursesData.DataSource = data;
            coursesData.DataBind();




            conn.Close();



        }
    }
}

