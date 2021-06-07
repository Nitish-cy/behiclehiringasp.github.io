using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\ASp.net\acetamp\App_Data\ace.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    String qry;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into Event_Mstr values('" + txtbname.Text + "','" + txtdate.Text + "','" + txtadd.Text + "','"+ txtsite.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
        Response.Redirect("event.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        cn.Open();
        txtbname.Text = "";
       txtdate.Text = "";
       txtadd.Text = "";
       txtsite.Text = "";
        cn.Close();
    }
}