using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class userside_Default2 : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\ASp.net\acetamp\App_Data\ace.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    String qry;
    string pay;
    protected void Page_Load(object sender, EventArgs e)
    {
      

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       
        if (rbdirectbank.Checked)
        {
            pay = "Direct Bank";
        }
        else if (rbcheque.Checked)
        {
            pay = "Cheque Pay";
        }
        else if (rbcredit.Checked)
        {
            pay = "Credit Card";
        }
        else if (rbpaypal.Checked)
        {
            pay = "Paypal";
        }
        Random rnd = new Random();
        string ordrnum = rnd.Next(0, 9999).ToString();
        Session["ordnum"] = ordrnum;
        Session["name"] = txtfname.Text;
        Session["email"] = txtemail.Text;
        Session["mob"] = txtmob.Text;
        Session["fadd"] = txtfadd.Text;
        Session["tadd"] = txttoadd.Text;
        Session["per"] = ddlperson.Text;
        Session["lug"] = ddllug.Text;
        Session["dat"] = txtdate.Text;
        Session["time"] = txttime.Text;
        Session["msg"] = txtmsg.Text;
        Session["pay"] =pay;
       
        string mnam = Request.QueryString["mname"];
        string pri = Request.QueryString["mprice"];
       
        cn.Open();
        qry = "insert into Bookingdetail values('" + mnam + "','" + ordrnum + "','" + txtfname.Text + "','" + txtlname.Text + "','" + txtemail.Text + "','" + txtmob.Text + "','" + txtfadd.Text + "','" + txttoadd.Text + "','" + ddlperson.Text + "','" + ddllug.Text + "','" + txtdate.Text + "','" + txttime.Text + "','" + txtmsg.Text + "','" + pay + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        Response.Redirect("bookdone.aspx");
        
    }
}