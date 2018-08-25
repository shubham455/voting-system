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
    public partial class Result : System.Web.UI.Page
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

                string s = "select t.PartyName ,COUNT(t.PartyName) AS NumberofVotes,t.PartyLogo from (SELECT R.UserName, R.CandidateID, PC.CandidateName, P.PartyName, P.PartyLogo FROM[Result] R JOIN Party_Candidate PC ON R.CandidateID = PC.CandidateID JOIN Party P ON P.PartyID = PC.PartyID) t group by t.PartyName,t.PartyLogo";
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