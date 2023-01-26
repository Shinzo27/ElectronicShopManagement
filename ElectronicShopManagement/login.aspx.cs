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

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string query = "select * from tblUser";
            com = new SqlCommand(query, con);
            SqlDataReader dr = com.ExecuteReader();

            if(dr.Read() == true)
            {
                Response.Redirect("index.aspx");
            }
            con.Close();
        }
    }
}