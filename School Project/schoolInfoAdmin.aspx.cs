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
    public partial class schoolInfoAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultConnection"].ConnectionString);

                conn.Open();

                string command = "insert into schoolInfo (address,email,phone) values (@address,@email,@phone)";

                using (SqlCommand cmd = new SqlCommand(command, conn))
                {
                    cmd.Parameters.AddWithValue("@address", address.Text);
                    cmd.Parameters.AddWithValue("@email", emailInfo.Text);
                    cmd.Parameters.AddWithValue("@phone", phoneInfo.Text);

                    cmd.ExecuteNonQuery();


                    msg.Text = "Added Successfully";


                    conn.Close();

                };

            }

        }
    }
}