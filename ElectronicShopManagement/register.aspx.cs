using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ElectronicShopManagement
{
    
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SHINZO\\SQLEXPRESS;Initial Catalog=dbElectronic;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            con.Open();
            string select = "select * from tblUser where username='" + txtUsername.Text + "'";
            SqlCommand result = new SqlCommand(select, con);
            SqlDataReader dr = result.ExecuteReader();

            if(dr.Read() == true)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "k", "swal('Error!', 'Username Already Taken!', 'error');", true);
                
            }
            else
            {
                dr.Close();
                string email = "select * from tblUser where email='" + txtEmail.Text + "'";
                SqlCommand emailresult = new SqlCommand(email, con);
                SqlDataReader reader = emailresult.ExecuteReader();
                if (reader.Read() == true)
                {
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "k", "swal('Error!', 'Email Already Taken!', 'error');", true);
                }
                else
                {
                    if (txtPassword.Text.Length < 6)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "k", "swal('Error!', 'Password Must be greater than 6 character!', 'error');", true);
                    }
                    else
                    {
                        reader.Close();
                        string query = "insert into tblUser(username,email,password,role,date) values ('"+txtUsername.Text+"','"+txtEmail.Text+"','"+txtPassword.Text+"','customer',GETDATE())";
                        SqlCommand com = new SqlCommand(query ,con);
                        com.ExecuteNonQuery();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "k", "swal('Success!', 'Registered Successfully!', 'success').then(function() {window.location.href = 'login.aspx'}); ", true);
                        con.Close();
                    }
                }
            }

        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("cart.aspx");
        }

        protected void btnUname_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("logout.aspx");
        }
    }
}