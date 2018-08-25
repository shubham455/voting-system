using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Voating_System
{
    public partial class UserPage : System.Web.UI.Page

    {
        public static string Username = "";
        protected void Page_Load(object sender, EventArgs e)

        {
            if (Session["UserName"] != null)
            {
                label1.Text = Session["UserName"].ToString();
            }
            else
            {
                label1.Text = "Anonymous User";
            }
            string CN = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(CN))
            {
                cn.Open();
                string s = "select * from Party_Candidate Inner Join Party on Party_Candidate.PartyID = Party.PartyID";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                gridview1.DataSource = ds;
                gridview1.DataBind();

            }
        }

        protected void gridview1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int ID = Convert.ToInt16(gridview1.SelectedRow.Cells[0].Text);

            string CN = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(CN))
            {
                cn.Open();
                string s = "insert into Result (UserName,CandidateID) values ('" + label1.Text + "','" + ID + "' )";
                SqlCommand cmd = new SqlCommand(s, cn);
                cmd.ExecuteNonQuery();
            }
            string CN1 = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
            using (SqlConnection cn1 = new SqlConnection(CN1))
            {
                cn1.Open();
                string s1 = "Update UserTypeMaster set Active =  '"+true+"'  where Name= '" + label1.Text + "'";
                SqlCommand cmd1 = new SqlCommand(s1, cn1);
                cmd1.ExecuteNonQuery();
            }
            Session.RemoveAll();

            UserSignUp us = new UserSignUp();
            Response.Redirect("~/hHomePage.aspx?UserName=" + label1.Text);
        }
    }
}