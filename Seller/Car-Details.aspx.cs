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
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into ContactUs values('" + txtname.Text + "','" + txtemail.Text + "','" + txtsubject.Text + "','" + txtmob.Text + "','" + txtmsg.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("Car-Details.aspx");

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Decimal principal = Convert.ToDecimal(TextBox1.Text);
        Decimal intrest = Convert.ToDecimal(TextBox2.Text);
        Decimal time = Convert.ToDecimal(TextBox3.Text);
        Decimal downp = Convert.ToDecimal(TextBox4.Text);
        Decimal intrestpaid = (principal - downp) * time * (intrest / 100);
        Decimal tot = principal - downp + intrestpaid;
        Label1.Text = ("<br> Amount         ="+ tot
                      + "<br> Rate          ="+ intrest
                      + "<br> Time          ="+ time
                      + "<br> DownPayment    ="+downp);
    }
}