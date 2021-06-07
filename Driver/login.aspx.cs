using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Driver_login : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\ASp.net\acetamp\App_Data\ace.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    string status;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsub_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from Driver_Reg_Mstr where Email='" + txtemail.Text + "' and Password='" + txtpass.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            string status = dr["Status"].ToString();
            Session["name"] = dr["DriverName"].ToString();
            Session["pic"] = dr["Prifile"].ToString();
            Session["Mobile"] = dr["MobileNo"].ToString();
            Session["Adhar"] = dr["AdharNumber"].ToString();
            Session["Addres"] = dr["Address"].ToString();
            Session["Countr"] = dr["Country"].ToString();
            int statu = Convert.ToInt32(status);
            if (statu == 0)
            {
                Session["email"] = dr["Email"].ToString();
                Response.Redirect("otp.aspx");
            }
            else
            {
                Response.Redirect("Home.aspx");
            }


        }
        else
        {
            Response.Redirect("Driv_Reg.aspx");
        }

        cn.Close();
    }
}