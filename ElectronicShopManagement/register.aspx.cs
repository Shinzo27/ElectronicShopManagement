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
            string query = "insert into tblUser(username,email,password,role,date) values ('"+txtUsername.Text+"','"+txtEmail.Text+"','"+txtPassword.Text+"','customer',GETDATE())";
            SqlCommand com = new SqlCommand(query ,con);
            com.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Registered Successfully')",true);
            con.Close();
            
        }
    }
}