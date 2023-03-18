using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace ElectronicShopManagement
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        string strmsg;
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-MRFBN8Q1;Initial Catalog=dbElectronic;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            strmsg = encrypt(txtPassword.Text.ToString());
            con.Open();
            string select = "select * from tblUser where username='" + txtUsername.Text + "'";
            SqlCommand result = new SqlCommand(select, con);
            SqlDataReader dr = result.ExecuteReader();

            if (dr.Read() == true)
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
                        string query = "insert into tblUser(username,email,password,role,date) values ('" + txtUsername.Text + "','" + txtEmail.Text + "','" + strmsg + "','customer',GETDATE())";
                        SqlCommand com = new SqlCommand(query, con);
                        com.ExecuteNonQuery();
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "k", "swal('Success!', 'Registered Successfully!', 'success').then(function() {window.location.href = 'login.aspx'}); ", true);
                        con.Close();
                    }
                }
            }
        }

        public string encrypt(string strEncrypted)
        {
            byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(strEncrypted);
            string encrypted = Convert.ToBase64String(b);
            return encrypted;
        }

    }
}