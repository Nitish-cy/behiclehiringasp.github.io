using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Seller_Default : System.Web.UI.Page
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
        if (rddirect.Checked)
        {
            pay = "Direct Bank";
        }
        else if (rdpaypal.Checked)
        {
            pay = "Paypal";
        }
        else if (rdpaytm.Checked)
        {
            pay = "Paytm";
        }
        Random rnd = new Random();
        string ordrnum = rnd.Next(0, 9999).ToString();
        Session["ordnum"] = ordrnum;
        Session["name"] =txtname.Text;
        Session["email"] = txtcomp.Text;
        Session["mob"] = txthone.Text;
        Session["fadd"] = txtadd.Text;
        Session["sfname"] = txtsfname.Text;
        Session["scom"] = txtscopany.Text;
        Session["smob"] =txtsphone.Text;
        Session["add"] = txtsadd.Text;
        Session["model"] = DropDownList1.Text;
        Session["price"] = DropDownList2.Text;
        Session["sstate"] = txtstown.Text;
        Session["bstate"] = txttown.Text;
        Session["pay"] = pay;
        cn.Open();
        qry = "insert into buyercheckout values('"+DropDownList1.Text + "','" + DropDownList2.Text + "','" + txtname.Text + "','" + txtlastname.Text + "','" + txtcomp.Text + "','" + txtadd.Text + "','"+txttown.Text + "','"+ txtcountry.Text + "','" + txtpost.Text +  "','" + txthone.Text + "','" + txtsfname.Text + "','" + txtslname.Text + "','" + txtscopany.Text + "','" + txtsadd.Text + "','" + txtstown.Text + "','" + txtscountry.Text + "','" + txtspost.Text + "','" + txtsphone.Text + "','"+ordrnum + "','" + pay + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("bookdone.aspx");
    }
}