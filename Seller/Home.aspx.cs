using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class Seller_Default : System.Web.UI.Page
{
    SqlConnection cn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=F:\ASp.net\acetamp\App_Data\ace.mdf;Integrated Security=True;User Instance=True");
    SqlCommand cmd = new SqlCommand();
    String qry;
    SqlDataReader dr;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            fillgrid();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            ds.Clear();
            qry = "select * from SellCarModel where ModelName='" + ddlname.Text + "' and CarType='" + ddltype.Text + "' and Fueltype='" + ddlfuel.Text + "' and Year='" + ddlyear.Text + "' and Transmission='" + ddltrans.Text + "'";
            da = new SqlDataAdapter(qry, cn);
            da.Fill(ds);
            ListView1.DataSource = ds.Tables[0];
            ListView1.DataBind();

      
    }
      void fillgrid()
      {
        cn.Open();
        qry = "select * from SellCarModel";
        SqlDataAdapter da = new SqlDataAdapter(qry,cn);
        da.Fill(ds);
        ListView1.DataSource = ds.Tables[0];
        ListView1.DataBind();
        cn.Close();
      }
   }