using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ElectronicShopManagement
{
    public partial class deletecart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-MRFBN8Q1;Initial Catalog=dbElectronic;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["loggedin"] != null)
            {
                con.Open();
                string id = Request.QueryString["cid"];
                string delete = "delete from tblCart where cid='" + id + "'";
                SqlCommand com = new SqlCommand(delete, con);
                com.ExecuteNonQuery();
                Response.Redirect("cart.aspx");
            }
        }
    }
}