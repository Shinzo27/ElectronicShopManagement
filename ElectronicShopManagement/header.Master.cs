using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ElectronicShopManagement
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggedin"] == null)
            {
                btnLogout.Visible = false;
                btnUname.Visible = false;
            }
            else
            {
                btnLogout.Visible = true;
                btnUname.Visible = true;
                btnLogin.Visible = false;
                btnRegister.Visible = false;
                btnUname.Text = Session["username"].ToString();
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {
            if (Session["loggedin"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                Response.Redirect("cart.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void btnUname_Click(object sender, EventArgs e)
        {
            Response.Redirect("username.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session["loggedin"] = null;
            Session["username"] = null;
            Session["uid"] = null;
            btnLogout.Visible = false;
            btnUname.Visible = false;
            btnLogin.Visible = true;
            btnRegister.Visible = true;

        }
    }
}