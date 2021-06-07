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
        Label1.Text = Session["dat"].ToString();
        Label2.Text = Session["fadd"].ToString();
        Label3.Text = Session["tadd"].ToString();
        Label5.Text = Session["name"].ToString();
        Label6.Text = Session["mob"].ToString();
        Label7.Text = Session["email"].ToString();
        Label8.Text = Session["tadd"].ToString();
        Label11.Text = Session["pay"].ToString();
        Label12.Text = Session["per"].ToString();
        Label13.Text = Session["lug"].ToString();
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label14.Text = Session["ordnum"].ToString();
        Label1.Text = Session["dat"].ToString();
        Label2.Text = Session["fadd"].ToString();
        Label3.Text = Session["tadd"].ToString();
        Label5.Text = Session["name"].ToString();
        Label6.Text = Session["mob"].ToString();
        Label7.Text = Session["email"].ToString();
        Label8.Text = Session["tadd"].ToString();
        Label11.Text = Session["pay"].ToString();
        Label12.Text = Session["per"].ToString();
        Label13.Text = Session["lug"].ToString();
        cn.Open();
        qry = "delete from Bookingdetail where email='" + Session["email"] + "' and fname='" + Session["name"] + "'";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();

        Response.Redirect("CarListing.aspx");
    }
}