using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectronicShopManagement.admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["adminloggedin"] == null)
            {
                Response.Redirect("../index.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["adminloggedin"] = null;
            Session["username"] = null;
            Response.Redirect("../index.aspx");
        }
    }
}