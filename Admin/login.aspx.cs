using System; 
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;
public partial class Admin_login : System.Web.UI.Page
{
    SqlConnection cn =new  SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\ASp.net\acetamp\App_Data\ace.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    String qry;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlog_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from admin_mstr where email='" + txtemail.Text + "' and pass='" + txtpass.Text + "'";
        cmd = new SqlCommand(qry,cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();  
            Session ["name"]=dr["aname"].ToString();
            Session["pic"] = dr["pic"].ToString();
            Response.Redirect("Ahome.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
        }
        cn.Close();
    }
    protected void btnreg_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            string f1 = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/profile/" + f1));
            
            cn.Open();
            qry = "insert into admin_mstr values('" + txtname.Text +"','" + txtpas.Text + "','" + txtconpass.Text + "','" + txtmail.Text  + "','" + txtmob.Text +"','" + f1 + "' )";
            if (txtpas.Text == txtconpass.Text)
            {
                cmd = new SqlCommand(qry, cn);
                cmd.ExecuteNonQuery();
               
                //Response.Redirect("login.aspx");
            }
            else
            {
                Label1.Text = "Password and Confirm password must be same";
            }

            cn.Close();

            //Label1.Text = "email-id and check it..";

        }
    }
    protected void btnfor_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from admin_mstr where email='" + txtremial.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            string pass = dr["pass"].ToString();
            MailMessage mail = new MailMessage();
            string mailid = txtremial.Text;
            mail.To.Add(mailid);
            mail.From = new MailAddress("mishranitish795@gmail.com");
            mail.Subject = "Forgot Password is=";
            string Body = "Thank You For Registration ..... Your Password is this..=" + pass;
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
            Label2.Text= pass;
        }
        else
        {
            Label2.Text= "Email is not valid";
        }
        cn.Close();
    }
  }
