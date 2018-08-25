using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Voating_System
{
    public partial class ViewRecord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["UserName"] != null)
            {
                
            }

            string CN = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(CN))
            {
                cn.Open();
                string s = "select * from Party ";
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
            string CN = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(CN))
            {
                int ID = Convert.ToInt16(gridview1.SelectedRow.Cells[1].Text);
                cn.Open();
                string s = "select * from Party_Candidate Where PartyID = '"+ID+"' ";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                gridview2.DataSource = ds;
                gridview2.DataBind();
            }

        }
    }
}
