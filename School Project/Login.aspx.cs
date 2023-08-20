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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string sql;
            if (IsPostBack)
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultConnection"].ConnectionString);

                conn.Open();

                sql = "select Count(*) from registeration where email = '" + email.Text + "' AND password = '" + password.Text + " ' ";

                SqlCommand cmd  = new SqlCommand(sql, conn);

                  int x = Convert.ToInt32( cmd.ExecuteScalar());
                if (x > 0)
                {
                    Response.Redirect("HomePage.aspx");

                }
                else
                {
                    invalid.Text = "invalid Credetinals";
                    //Response.Write("invalid Credetinals");

                }




            }

        }
    }
}