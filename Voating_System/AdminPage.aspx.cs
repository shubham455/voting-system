using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Voating_System
{
    public partial class AdminPage : System.Web.UI.Page
    {
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
        }

        protected void button1_Click(object sender, EventArgs e)
        {
           
           
            Session.Abandon();
            Response.Redirect("~/hHomePage.aspx");

        }
    }

}