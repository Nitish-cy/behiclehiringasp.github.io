using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Seller_BuyerSellerLog : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\ASp.net\acetamp\App_Data\ace.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    SqlDataReader dr;
    string qry;
    string status;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnreg_Click(object sender, EventArgs e)
    {
        cn.Open();
        qry = "select * from User_Reg_Mstr where Email='" + txtemail.Text + "' and Password='" + txtpass.Text + "'";
        cmd = new SqlCommand(qry, cn);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
            string status = dr["Status"].ToString();
            int statu = Convert.ToInt32(status);
            if (statu == 0)
            {
                Session["email"] = dr["Email"].ToString();
                Response.Redirect("OTP.aspx");
            }
            //    else
            //    {
            //        if (statu == 1)
            //        {
            //            Response.Redirect("Home.aspx");
            //        }
            //        else
            //        {

        //            Response.Redirect("indexrent.aspx");
            //        }
            //    }


        //}
            else
            {
                Response.Redirect("Home.aspx");
            }


        }
        cn.Close();
    }
}