using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
public partial class Admin_Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\ASp.net\acetamp\App_Data\ace.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    String qry;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
       
        cn.Open();
        qry = "insert into Reply_Mstr values('" + ddlname.Text + "','" + txtclock.Text + "','" + txteamil.Text + "','" + txtmsg.Text + "')";
       
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            //Response.Redirect("login.aspx");
            MailMessage mail = new MailMessage();
            string mailid = txteamil.Text;
            mail.To.Add(mailid);
            mail.From = new MailAddress("mishranitish795@gmail.com");
            mail.Subject = "Sign Up";
            string Body = "Thank You For Registration ...." + txtmsg.Text;
            mail.Body = Body;
            mail.IsBodyHtml = true;

            SmtpClient smtp = new SmtpClient();

            //  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
            //  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


            smtp.Host = "smtp.gmail.com";
            smtp.Credentials = new System.Net.NetworkCredential("mishranitish795@gmail.com", "mishra4571");
            smtp.Port = 587;  //465
            smtp.EnableSsl = true;
            smtp.Send(mail);
            Response.Redirect("reply.aspx");
       
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        txtclock.Text = "";
        txteamil.Text = "";
        txtmsg.Text = "";
        cn.Close();
    }
}