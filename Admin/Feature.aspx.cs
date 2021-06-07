using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Default2 : System.Web.UI.Page
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
        qry = "insert into Feature_Mstr values('" + ddlbrand.Text + "','" + ddlmodel.Text + "','" + ddlac.Text + "','" + ddlclimate.Text + "','" + ddlcd.Text + "','" + ddlpower.Text + "','" + ddlpowerwin.Text + "','" + ddlcenteral.Text + "','" + ddlsteering.Text + "','" + ddlelectrically.Text + "','" + ddlmounted.Text + "','" + ddlvent.Text + "','" + ddlboot.Text + "','" + ddlwiper.Text + "','" + ddlmirror.Text + "','" + ddllock.Text + "','" + ddlairbag.Text + "','" + ddlparking.Text + "')";
        cmd = new SqlCommand(qry, cn);
        cmd.ExecuteNonQuery();
        cn.Close();
    }
}