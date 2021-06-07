using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Driver_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\ASp.net\acetamp\App_Data\ace.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    String qry;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["name"].ToString();
        Image2.ImageUrl = "../profile/" + Session["pic"].ToString();
        Label2.Text = Session["name"].ToString();
        Label3.Text = Session["Mobile"].ToString();
        Label4.Text = Session["Adhar"].ToString();
        Label5.Text = Session["Addres"].ToString(); 
        Label6.Text =  Session["Countr"].ToString(); 
         
    }

    protected void Submit_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into ContactUs values('" + txtname.Text + "','" + txtemail.Text + "','" + txtsubject.Text + "','" + txtmob.Text + "','" + txtmsg.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
      
    }
}