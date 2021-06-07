using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_Default3 : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\ASp.net\acetamp\App_Data\ace.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    String qry;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            string f1 = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/profile/" + f1));
            cn.Open();
            qry = "insert into Agent_Mstr values('" + txtname.Text + "','" + txtprof.Text + "','" + txtmob.Text +  "','" + txtemail.Text + "','" + txtbio.Text + "','" + f1 + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Agent.aspx");
        }
    }
}