using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Antlr.Runtime.Tree.TreeWizard;

namespace School_Project
{
    public partial class Teachers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultConnection"].ConnectionString);

            conn.Open();

            //List<string> image = new List<string>();
            //List<string> teacher = new List<string>();
            //List<string> course = new List<string>();

            List<teacherClass> data = new List<teacherClass>();

            string sql = "select * from Teachers";


            SqlCommand cmd = new SqlCommand(sql, conn);

            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                while (rdr.Read())
                {

                    teacherClass teacher = new teacherClass();

                    teacher.imageName = (rdr.GetValue(1).ToString());

                    teacher.teacherName = (rdr.GetValue(2).ToString());
                    teacher.courseName = (rdr.GetValue(3).ToString());

                    data.Add(teacher);

                }

            }
            teachersData.DataSource = data;
            teachersData.DataBind();




            conn.Close();

        }
    }
}