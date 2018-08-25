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
    public partial class hHomepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserName"] != null)
            {
             
            }
        }

        protected void button1_Click(object sender, EventArgs e)
        {

            string CN = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(CN))
            {
                cn.Open();
                string s = "INSERT INTO Feedback (FirstName,LastName,MobileNo,Email,Message) VALUES (@FName ,@LName,@ContactNo,@Email,@Message)";
                SqlCommand cmd = new SqlCommand(s, cn);
                cmd.Parameters.AddWithValue("@FName", textbox1.Text);
                cmd.Parameters.AddWithValue("@LName", textbox2.Text);
                cmd.Parameters.AddWithValue("@ContactNo", textbox3.Text);
                cmd.Parameters.AddWithValue("@Email", textbox4.Text);
                cmd.Parameters.AddWithValue("@Message", textbox5.Text);

                cmd.ExecuteNonQuery();
                textbox1.Text = "";
                textbox2.Text = "";
                textbox3.Text = "";
                textbox4.Text = "";
                textbox5.Text = "";
            }
        }
    }
}