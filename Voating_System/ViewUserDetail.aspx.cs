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
    public partial class UserDetail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string CN = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(CN))
            {
                cn.Open();
                string s = "select * from UserTypeMaster";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataAdapter adp = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adp.Fill(ds);
                gridview1.DataSource = ds;
                gridview1.DataBind();
            }
        }
    }
}