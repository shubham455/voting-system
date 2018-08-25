using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace Voating_System
{
    public partial class Party : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (Session["UserName"] != null)
            {

            }
        }
        protected void button1_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string str = FileUpload1.FileName;
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str));
                string Image = "~/Upload/" + str.ToString();


                string CN1 = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
                using (SqlConnection cn1 = new SqlConnection(CN1))
                {
                    cn1.Open();
                    string s1 = "select * from Party where PartyName= '" + textbox1.Text + "' ";
                    SqlCommand cmd1 = new SqlCommand(s1, cn1);
                    SqlDataReader rdr = cmd1.ExecuteReader();
                    if (rdr.Read())
                    {

                        Response.Write("Record Exists");

                    }
                    else
                    {
                        rdr.Close();
                        string CN = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
                        using (SqlConnection cn = new SqlConnection(CN))
                        {
                            cn.Open();
                            string s = "insert into Party (PartyName,PartyLogo) values ('" + textbox1.Text + "','" + Image + "')";
                            SqlCommand cmd = new SqlCommand(s, cn);
                            cmd.ExecuteNonQuery();
                            Response.Write("Data Successfully Saved");
                            Response.Redirect("~/ViewRecord");
                        }
                    }
                }

            }
            
        }

    }
}
