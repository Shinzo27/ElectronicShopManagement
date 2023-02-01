using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ElectronicShopManagement
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SHINZO\\SQLEXPRESS;Initial Catalog=dbElectronic;Integrated Security=True");
        SqlCommand com = new SqlCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Session["username"] is true)
            {
                string uname = Session["username"].ToString();
                btnLogin.Text = uname;
            }
            else
            {
                btnLogin.Text = "Login";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "select * from tblUser where email='"+txtEmail.Text+"' and password='"+txtPassword.Text+"'";
            com = new SqlCommand(query, con);
            SqlDataReader dr = com.ExecuteReader();
            if(dr.Read() == true)
            {
                string uname = dr.GetString(1);
                Session["username"] = uname;
                Response.Redirect("index.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "k", "swal('Error!', 'Invalid Credentials!', 'error');", true);
            }
            con.Close();
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void btnRegister_Click1(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("logout.aspx");
        }

        protected void btnShop_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx");
        }
    }
}