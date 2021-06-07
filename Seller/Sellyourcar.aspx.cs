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
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            string f1 = FileUpload1.FileName;
            FileUpload1.SaveAs(Server.MapPath("~/profile/" + f1));
            string f2 = FileUpload2.FileName;
            FileUpload2.SaveAs(Server.MapPath("~/profile/" + f2));
            cn.Open();
            qry = "insert into Old_Car_Sell_Mstr values('" + txtname.Text + "','" + txtemail.Text + "','" + txtphone.Text + "','" + txtcon.Text + "','" + txtmod.Text + "','" + txtmileage.Text + "','"+ ddltype.Text + "','" + ddlfuel.Text+ "','" + ddlyear.Text + "','" + txtadhar.Text + "','" + txtadd.Text + "','" + f1 + "','"+ f2+ "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
            Response.Redirect("Sellyourcar.aspx");
        }
    }
    
}