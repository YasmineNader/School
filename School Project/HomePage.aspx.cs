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
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["defaultConnection"].ConnectionString);

            conn.Open();
            
            List<homeClass> data = new List<homeClass>();
            //List<string> descriptions = new List<string>();
            string sql = "select * from homeContent ";

            SqlCommand cmd = new SqlCommand(sql, conn);

            using (SqlDataReader rdr = cmd.ExecuteReader())
            {
                while (rdr.Read())
                {
                    homeClass home = new homeClass();

                    home.title = (rdr.GetValue(1).ToString());

                    home.contentText=(rdr.GetValue(2).ToString());

                    data.Add(home);



                }

            }
            vision.Text = data[0].title;
            visionText.Text = data[0].contentText;
            mission.Text = data[1].title;
            missionText.Text = data[1].contentText;

            conn.Close();

        }
        
    }
}