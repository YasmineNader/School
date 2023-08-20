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
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultConnection"].ConnectionString);

            conn.Open();
            string sql = "select * from schoolInfo ";
            SqlCommand comm = new SqlCommand(sql, conn);

            using (SqlDataReader rdr = comm.ExecuteReader())
            {
                while (rdr.Read())
                {


                    address.Text = rdr.GetValue(1).ToString();
                    emailSchool.Text = rdr.GetValue(2).ToString();
                    phone.Text = rdr.GetValue(3).ToString();



                }

            }


            if (IsPostBack)
            {
                

                string command = "insert into messageDetails (subject,email,message) values (@subject,@email,@message)";
               
                using (SqlCommand cmd = new SqlCommand(command, conn))
                {
                    cmd.Parameters.AddWithValue("@subject", subject.Text);
                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.Parameters.AddWithValue("@message", message.Text);

                    msgSucess.Text = "Message Added Successfully";

                    cmd.ExecuteNonQuery();

                    conn.Close();

                };



            

            }



        }
    }
}