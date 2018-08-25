using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

namespace Voating_System
{
    public partial class UserData : System.Web.UI.Page
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

            string str = fileupload1.FileName;
            fileupload1.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str));
            string Image1 = "~/Upload/" + str.ToString();

            string str2 = fileupload2.FileName;
            fileupload2.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str2));
            string Image2 = ("~/Upload/" + str2.ToString());

            string str3 = fileupload3.FileName;
            fileupload3.PostedFile.SaveAs(Server.MapPath("~/Upload/" + str3));
            string Image3 = ("~/Upload/" + str3.ToString());

            string CN = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
            using (SqlConnection cn = new SqlConnection(CN))
            {
                cn.Open();
                string s = "select * from UserTypeMaster Where Email = '" + textbox3.Text + "' or  ContactNo = '" + textbox4.Text + "' ";
                SqlCommand cmd = new SqlCommand(s, cn);
                SqlDataReader rdr = cmd.ExecuteReader();
                if (rdr.Read())
                {
                    Response.Write("Record Exists");

                }
                else
                {
                    rdr.Close();
                    string strNewPassword1 = GeneratePassword().ToString();
                    string CN1 = ConfigurationManager.ConnectionStrings["VOTE"].ConnectionString;
                    using (SqlConnection cn1 = new SqlConnection(CN1))
                    {
                        cn1.Open();
                        string s1 = "INSERT INTO UserTypeMaster (Name,Password,Email,ContactNo,City,AdharCard,PanCard,VoterID) VALUES (@Name,@Password,@Email,@ContactNO,@City,@Adharcard,@PanCard,@VoterID)";
                        SqlCommand cmd1 = new SqlCommand(s1, cn1);
                        cmd1.Parameters.AddWithValue("@Name", textbox1.Text);
                        cmd1.Parameters.AddWithValue("@Password", strNewPassword1);
                        cmd1.Parameters.AddWithValue("@Email", textbox3.Text);
                        cmd1.Parameters.AddWithValue("@ContactNo", textbox4.Text);
                        cmd1.Parameters.AddWithValue("@City", textbox5.Text);
                        cmd1.Parameters.AddWithValue("@Adharcard", Image1);
                        cmd1.Parameters.AddWithValue("@Pancard", Image2);
                        cmd1.Parameters.AddWithValue("@VoterID", Image3);
                        cmd1.ExecuteNonQuery();
                        Response.Write("Data Successfully Saved");

                        //to send password in email
                        //string strNewPassword = GeneratePassword().ToString();
                        using (MailMessage mail = new MailMessage())
                        {
                            mail.From = new MailAddress("agrawalshubham4556@gmail.com");
                            mail.To.Add(textbox3.Text);
                            mail.Subject = "Random Password for your Account";
                            mail.Body = "You Are Successfully Register...!!!\n\nDear " + textbox1.Text + "," + "\nIt's your password  : " + strNewPassword1 + "" +
                                      "\n\tThank you  registering for E-Voting System As A Member." +
                                      "\nIf you have any query please contact 8319058205." +
                                      "\nThank you and Have a nic Day....!" +
                                      "\n\n[Mr.Shubham Agrawal]";

                            mail.IsBodyHtml = false;
                            SmtpClient smtp = new SmtpClient();
                            SmtpClient client = new SmtpClient();
                            client.Host = "smtp.gmail.com";
                            client.Port = 587;
                            client.Timeout = 50000;
                            client.DeliveryMethod = SmtpDeliveryMethod.Network;
                            client.UseDefaultCredentials = false;
                            client.EnableSsl = true;
                            client.Credentials = new NetworkCredential("agrawalshubham4556@gmail.com", "85160shu");
                            client.Send(mail);
                            Response.Write("sent");
                        }
                    }
                }
            }
        }

        public string GeneratePassword()
        {
            string PasswordLength = "8";
            string NewPassword = "";

            string allowedChars = "";
            allowedChars = "1,2,3,4,5,6,7,8,9,0";
            allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
            allowedChars += "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";


            char[] sep = { ',' };
            string[] arr = allowedChars.Split(sep);


            string IDString = "";
            string temp = "";

            Random rand = new Random();

            for (int i = 0; i < Convert.ToInt32(PasswordLength); i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                IDString += temp;
                NewPassword = IDString;

            }
            return NewPassword;
        }
    }
}