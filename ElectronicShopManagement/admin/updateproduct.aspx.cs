using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ElectronicShopManagement.admin
{
    public partial class updateproduct : System.Web.UI.Page
    {
        string path;
        SqlConnection con = new SqlConnection("Data Source=SHINZO\\SQLEXPRESS;Initial Catalog=dbElectronic;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminloggedin"] != null)
            {
                con.Open();
                string id = Request.QueryString["pid"];
                string query = "select * from tblProduct where pid='" + id + "'";
                SqlCommand com = new SqlCommand(query, con);
                SqlDataReader dr = com.ExecuteReader();
                if (dr.Read() == true)
                {
                    txtPname.Text = dr.GetValue(1).ToString();
                    double v = Convert.ToDouble(dr.GetValue(2));
                    lblPrice.Text = "Current Price : " + v.ToString();

                    double v1 = Convert.ToDouble(dr.GetValue(5));
                    lblStock.Text = "Current Quantity : " + v1.ToString();
                    ddCategory.SelectedValue = dr.GetValue(2).ToString();
                }
                dr.Close();
            }
            else
            {
                Response.Redirect("../index.aspx");
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["pid"];
            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "/Images/" + FileUpload1.FileName.ToString());
            path = "Images/" + FileUpload1.FileName.ToString();
            string query = "update tblProduct set pname='" + txtPname.Text + "',category='" + ddCategory.SelectedValue.ToString() + "',pimage='" + path.ToString() + "',price='" + txtPrice.Text + "',stock='"+ txtStock.Text +"' where pid='" + id + "'";
            SqlCommand com = new SqlCommand(query, con);
            int i = com.ExecuteNonQuery();
            if (i > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "k", "swal('Success!', 'Product Updated Successfully!', 'success').then(function() {window.location.href = 'index.aspx'}); ", true);
            }
            con.Close();
        }

    }
}