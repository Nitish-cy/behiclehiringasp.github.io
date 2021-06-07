using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
public partial class Uhome_registration : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\ASp.net\acetamp\App_Data\ace.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    string qry;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
           
                string f1 = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath("~/profile/" + f1));
                Random rnd = new Random();
                string ranNumber = rnd.Next(0, 9999).ToString();
                cn.Open();
                qry = "insert into User_Reg_Mstr values('" + txtname.Text + "','" + txtemail.Text + "','" + txtpass.Text + "','" + txtconpass.Text + "'," + ranNumber + " ,0 ,'" + f1 + "' )";
                if (txtpass.Text == txtconpass.Text)
                {
                    cmd = new SqlCommand(qry, cn);
                    cmd.ExecuteNonQuery();
                    
                    MailMessage mail = new MailMessage();
                    string mailid = txtemail.Text;
                    mail.To.Add(mailid);
                    mail.From = new MailAddress("mishranitish795@gmail.com");
                    mail.Subject = "Sign Up";
                    string Body = "Thank You For Registration ..... Your OTP is this..=" + ranNumber;
                    mail.Body = Body;
                    mail.IsBodyHtml = true;

                    SmtpClient smtp = new SmtpClient();

                    //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
                    //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


                    smtp.Host = "smtp.gmail.com";
                    smtp.Credentials = new System.Net.NetworkCredential("mishranitish795@gmail.com", "Mishra123@");
                    smtp.Port = 587;  //465
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                    Response.Redirect("login.aspx");
                }
                else
                {
                    Label1.Text = "Password and Confirm password must be same";
                }

                cn.Close();

                //Label1.Text = "email-id and check it..";
            
        }
    }
}