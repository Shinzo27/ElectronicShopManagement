﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace ElectronicShopManagement.admin
{
    public partial class addproduct : System.Web.UI.Page
    {
        string path;
        SqlConnection con = new SqlConnection("Data Source=SHINZO\\SQLEXPRESS;Initial Catalog=dbElectronic;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Open();
            FileUpload1.SaveAs(Request.PhysicalApplicationPath + "/Images/" + FileUpload1.FileName.ToString());
            path = "Images/" + FileUpload1.FileName.ToString();
            string query = "insert into tblProduct(pname,price,category,pimage,stock,date) values ('"+txtPname.Text+"','"+txtPrice.Text+"','"+ddCategory.SelectedValue.ToString()+"','"+path.ToString()+"','"+txtStock.Text+"', GETDATE())";
            SqlCommand com = new SqlCommand(query, con);
            com.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "k", "swal('Success!', 'Product Added Successfully!', 'success').then(function() {window.location.href = 'index.aspx'}); ", true);
            con.Close();
        }
    }
}