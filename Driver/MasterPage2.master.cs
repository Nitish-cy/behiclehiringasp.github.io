using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Driver_MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["name"].ToString();
       Image2 .ImageUrl ="../profile/" + Session ["pic"].ToString();
       Label2.Text = Session["name"].ToString();
       Image1.ImageUrl = "../profile/" + Session["pic"].ToString();
    }
}
