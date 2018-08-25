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
    public partial class Party_Candidate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {

            if (Session["UserName"] != null)
            {

            }
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            
        }

        protected void button1_Click(object sender, EventArgs e)
        {
            string CN = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(CN))
            {
                cn.Open();
                string s = "select * from Party_Candidate where ContactNo = '" + textbox4.Text + "' or  Email='" + textbox6.Text + "'";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {
                    Response.Write("Record Exists");
                }
                else
                {
                    rdr.Close();
                    string CN1 = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
                    using (SqlConnection cn1 = new SqlConnection(CN1))
                    {
                        cn1.Open();
                        string s1 = "insert into Party_Candidate (CandidateName,Education,Age,ContactNo,City,Email,PartyID) values ('" + textbox1.Text + "','" + textbox2.Text + "','" + textbox3.Text + "','" + textbox4.Text + "','" + textbox5.Text + "','" + textbox6.Text + "','" + dropdown1.SelectedItem.Value + "')";
                        SqlCommand cmd1 = new SqlCommand(s1, cn1);
                        cmd1.ExecuteNonQuery();
                        Response.Write("Sign up Successful");

                    }
                }
            }
        }
    }
}