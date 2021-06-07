using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class Admin_Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            StreamReader sr = new StreamReader(Server.MapPath("~/seller/buyerfaq.htm"));
            CKEditorControl1.Text = sr.ReadToEnd();
            sr.Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        StreamWriter sw = new StreamWriter(Server.MapPath("~/seller/buyerfaq.htm"));
        sw.Write(CKEditorControl1.Text);
        sw.Close();
    }
}