using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Voating_System
{
    public partial class SgnUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void button1_Click(object sender, EventArgs e)
        {
            string CN = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(CN))
            {
                cn.Open();
                string uid = textbox1.Text;
                string pass = textbox2.Text;

                string s = "select * from Admin where Username='" + uid + "' and Password='" + pass + "'";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {
                    Session["UserName"] = uid;
                    Response.Redirect("~/AdminPage.aspx");

                }
                else
                {
                    Response.Write("You're username and word is incorrect");

                }

            }
        }
    }
}