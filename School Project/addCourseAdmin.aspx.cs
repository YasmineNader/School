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
    public partial class addCourseAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultConnection"].ConnectionString);

                conn.Open();

                string command = "insert into courseContent (ImageName,CourseName,description,teacherName,courseDate,startTime,endTime) values (@image,@name,@description,@teacher,@date,@start,@end)";

                using (SqlCommand cmd = new SqlCommand(command, conn))
                {
                    cmd.Parameters.AddWithValue("@image", CourseImage.FileName);
                    cmd.Parameters.AddWithValue("@name", course.Text);
                    cmd.Parameters.AddWithValue("@description", CourseDescription.Text);
                    cmd.Parameters.AddWithValue("@teacher", courseTeacher.Text);
                    cmd.Parameters.AddWithValue("@date", courseDate.Text);
                    cmd.Parameters.AddWithValue("@start", startTime.Text);
                    cmd.Parameters.AddWithValue("@end", endTime.Text);

                    cmd.ExecuteNonQuery();
                    msg.Text = "Added Successfully";
                    conn.Close();

                };

            }
        }
    }
}