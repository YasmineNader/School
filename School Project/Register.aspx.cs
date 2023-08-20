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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) { 
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultConnection"].ConnectionString);

            conn.Open();

            string command = "insert into registeration (firstName,lastName,mobile,email,password) values (@fname,@lname,@mobile,@email,@password)";

            using (SqlCommand cmd = new SqlCommand(command, conn))
            {
                cmd.Parameters.AddWithValue("@fname", firstName.Text);
                cmd.Parameters.AddWithValue("@lname", lastName.Text);
                cmd.Parameters.AddWithValue("@mobile", phone.Text);
                cmd.Parameters.AddWithValue("@email", email.Text);
                cmd.Parameters.AddWithValue("@password", password.Text);

                    msgReg.Text = "Account Created";

               int x= cmd.ExecuteNonQuery();

               conn.Close();

                };

            }



        }

        protected void registerCheck(object sender, EventArgs e)
        {


        }
    }
}