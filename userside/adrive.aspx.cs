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
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "insert into Drive_mstr values('"+ txtname.Text + "','" + txtemail.Text + "','" + txttime.Text + "','" + txtmobno.Text + "','" + txtdate.Text+ "','" + txtclock.Text+"','" + ddlcarbrand.Text + "','" + ddlcarmodel.Text + "','" + ddlprice.Text + "','" + txtmsg.Text +  "' )";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
   
}