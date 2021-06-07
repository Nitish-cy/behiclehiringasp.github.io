using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class userside_Default3 : System.Web.UI.Page
{
    //SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\ASp.net\acetamp\App_Data\ace.mdf;Integrated Security=True;User Instance=True");
    //SqlCommand cmd = new SqlCommand();
    //String qry;
    //SqlDataReader dr;
    //SqlDataAdapter da = new SqlDataAdapter();
    //DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
   {
       //if (!IsPostBack)
       //{
       //    fillgrid();
       //}
   }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //ds.Clear();
        //qry = "select * from moderl_mstr where Brandid='" + ddlbrand.Text + "' and Modelid='" + ddlmodel.Text + "' and Fueltype='" + ddlfuel.Text + "' and Transmission='" + ddltrans.Text + "' and Year='" + ddlyear.Text + "'";
        //da = new SqlDataAdapter(qry, cn);
        //da.Fill(ds);
        //ListView1.DataSource = ds.Tables[0];
        //ListView1.DataBind();

    }
    //void fillgrid()
    //{
    //    cn.Open();
    //    qry = "select * from moderl_mstr";
    //    SqlDataAdapter da = new SqlDataAdapter(qry,cn);
    //    da.Fill(ds);
    //    ListView1.DataSource = ds.Tables[0];
    //    ListView1.DataBind();
    //    cn.Close();
    //}
   
}