using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class userside_bookdone : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\ASp.net\acetamp\App_Data\ace.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    String qry;
    
    protected void Page_Load(object sender, EventArgs e)
    {

        Label14.Text = Session["ordnum"].ToString();
       
        Label2.Text = Session["fadd"].ToString();
        Label24.Text = Session["add"].ToString();
        Label5.Text = Session["name"].ToString();
        Label21.Text = Session["sfname"].ToString();
        Label21.Text = Session["sfname"].ToString();
        Label3.Text = Session["add"].ToString();
        Label22.Text = Session["smob"].ToString();
        Label7.Text = Session["email"].ToString();
        Label23.Text = Session["scom"].ToString();
        Label8.Text = Session["fadd"].ToString();
        Label11.Text = Session["pay"].ToString();
        Label12.Text = Session["sstate"].ToString();
        Label13.Text = Session["bstate"].ToString();
        Label15.Text = Session["model"].ToString();
        Label16.Text = Session["price"].ToString();
        Label17.Text = Session["price"].ToString();
       
    }
    

    protected void Button1_Click1(object sender, EventArgs e)
    {

        Label14.Text = Session["ordnum"].ToString();

        Label2.Text = Session["fadd"].ToString();
        Label24.Text = Session["add"].ToString();
        Label5.Text = Session["name"].ToString();
        Label5.Text = Session["sfname"].ToString();
        Label6.Text = Session["mob"].ToString();
        Label22.Text = Session["smob"].ToString();
        Label7.Text = Session["email"].ToString();
        Label23.Text = Session["scom"].ToString();
        Label8.Text = Session["fadd"].ToString();
        Label11.Text = Session["pay"].ToString();
        Label12.Text = Session["sstate"].ToString();
        Label13.Text = Session["bstate"].ToString();
        Label15.Text = Session["model"].ToString();
        Label16.Text = Session["price"].ToString();
        Label17.Text = Session["price"].ToString();
        cn.Open();
        qry = "delete from buyercheckout where bcompany='" + Session["email"] + "' and bfname='" + Session["name"] + "' and Ordrnumber='" + Session["ordnum"] + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        Response.Redirect("CarList.aspx");
    }
}