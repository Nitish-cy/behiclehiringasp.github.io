using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Admin_lockpage : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from admin_mstr";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            string status = dr["pass"].ToString();
            int statu = Convert.ToInt32(status);
            int txt = Convert.ToInt32(TextBox1.Text);
            if (statu ==txt)
            {
               
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Redirect("lockpage.aspx");
            }

        }
        else
        {
           
        }


        cn.Close();
    }
}