﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

namespace ElectronicShopManagement
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SHINZO\\SQLEXPRESS;Initial Catalog=dbElectronic;Integrated Security=True");
        SqlCommand com = new SqlCommand();
        string strmsg;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            strmsg = encrypt(txtPassword.Text);
            con.Open();
            string query = "select * from tblUser where email='" + txtEmail.Text + "' and password='" + strmsg + "'";
            com = new SqlCommand(query, con);
            SqlDataReader dr = com.ExecuteReader();

            if(dr.Read() == true)
            {
                Session["loggedin"] = "loggedin";
                Session["username"] = dr.GetValue(1).ToString();
                Response.Redirect("index.aspx");
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "k", "swal('Error!', 'Invalid Credential!', 'error');", true);
            }
            con.Close();
        }

        public string encrypt(string strEncrypted)
        {
            byte[] b = System.Text.ASCIIEncoding.ASCII.GetBytes(strEncrypted);
            string encrypted = Convert.ToBase64String(b);
            return encrypted;
        }
    }
}