﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
//using System.Net.Mail;
public partial class Driver_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\ASp.net\acetamp\App_Data\ace.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    string status;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void btnsub_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Driver_Reg_Mstr where Email='" + txtemail.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            string pass = dr["Password"].ToString();
            ////MailMessage mail = new MailMessage();
            ////string mailid = txtemail.Text;
            ////mail.To.Add(mailid);
            ////mail.From = new MailAddress("mishranitish795@gmail.com");
            ////mail.Subject = "Forgot Password is=";
            ////string Body = "Thank You For Registration ..... Your Password is this..=" + pass;
            ////mail.Body = Body;
            ////mail.IsBodyHtml = true;

            ////SmtpClient smtp = new SmtpClient();

            //////  smtp.Host = ConfigurationManager.AppSettings["SMTP"];
            //////  smtp.Credentials = new System.Net.NetworkCredential(ConfigurationManager.AppSettings["FROMMAIL"], ConfigurationManager.AppSettings["FROMPWD"]);


            ////smtp.Host = "smtp.gmail.com";
            ////smtp.Credentials = new System.Net.NetworkCredential("mishranitish795@gmail.com", "mishra4571");
            ////smtp.Port = 587;  //465
            ////smtp.EnableSsl = true;
            ////smtp.Send(mail);
            lblpass.Text = pass;
        }
        else
        {
            lblpass.Text = "Email is not valid";
        }
        cn.Close();
    }
}