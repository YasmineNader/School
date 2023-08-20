using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace School_Project
{
    public partial class AddTeacherAdminaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultConnection"].ConnectionString);

                conn.Open();

                string command = "insert into Teachers (imageName,teacheName,courseName) values (@image,@name,@course)";

                using (SqlCommand cmd = new SqlCommand(command, conn))
                {
                    cmd.Parameters.AddWithValue("@image", imageUpload.FileName);
                    cmd.Parameters.AddWithValue("@name",teachername.Text);
                    cmd.Parameters.AddWithValue("@course", courseName.Text);
                
                    int x = cmd.ExecuteNonQuery();
                    msg.Text = "Added Successfully";
                    conn.Close();

                };

            }



        }
    }
}