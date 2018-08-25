using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace Voating_System
{
    public partial class UserSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {



        }

        protected void button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UserSignUP.aspx");
        }

        protected void button1_Click(object sender, EventArgs e)
        {

            string CN = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(CN))
            {
                cn.Open();
                string s = "select * from UserTypeMaster where Password = '"+textbox2.Text+"' and Active = '"+true+"' ";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {
                    Response.Write("Record Exists");
                }
                else
                {
                    string CN1 = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
                    using (SqlConnection cn1 = new SqlConnection(CN1))
                    {

                        cn1.Open();
                        string s1 = "select * from UserTypeMaster where Name = '" + textbox1.Text + "'and Password = '" + textbox2.Text + "' ";
                        SqlCommand cmd1 = new SqlCommand(s1, cn1);
                        SqlDataAdapter sda = new SqlDataAdapter(cmd1);
                        DataTable dt = new DataTable();
                        sda.Fill(dt);
                        if (dt.Rows.Count > 0)
                        {
                            Session["UserName"] = textbox1.Text;
                            Response.Redirect("~/UserPage.aspx");

                        }
                        else
                        {
                            Response.Write("You're username and word is incorrect");

                        }
                    }
                }
            }
        }
    }
}

