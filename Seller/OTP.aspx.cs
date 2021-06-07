using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Seller_OTP : System.Web.UI.Page
{

    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\ASp.net\acetamp\App_Data\ace.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    string status;
    string qr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnreg_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from User_Reg_Mstr where Email='" + Session["email"].ToString() + "' and OTP='" + txtotp.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            cn.Close();
            cn.Open();
            qr = "update User_Reg_Mstr set Status=1 where Email='" + Session["email"].ToString() + "'";
            cmd = new SqlCommand(qr, cn);
            cmd.ExecuteNonQuery();
            Response.Redirect("indexbuysell.aspx");
        }
        else
        {

        }




        cn.Close();
    }
}