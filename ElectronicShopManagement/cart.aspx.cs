using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ElectronicShopManagement
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SHINZO\\SQLEXPRESS;Initial Catalog=dbElectronic;Integrated Security=True;MultipleActiveResultSets=true");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["loggedin"] == null)
            {
                Response.Redirect("index.aspx");
            }

            calculateSum();
        }

        public void calculateSum()
        {
            if (GridView1.Rows.Count > 0)
            {
                int uid = (int)Session["uid"];
                DataTable dt = new DataTable();
                string query = "select * from tblCart where uid='" + uid + "'";
                SqlCommand com = new SqlCommand(query, con);
                SqlDataAdapter sda = new SqlDataAdapter();
                sda.SelectCommand = com;
                DataSet ds = new DataSet();
                sda.Fill(dt);
                GridView1.FooterRow.Cells[3].Text = "Grand Total : ";
                GridView1.FooterRow.Cells[4].Text = dt.Compute("Sum(total)", "").ToString();
            }
            else
            {
                txtAddress.Visible = false;
                txtContact.Visible = false;
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            if (txtContact.Text.Length < 10)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "k", "swal('Error!', 'Enter Contact Correctly', 'error');", true);
            }
            else if (txtAddress.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "k", "swal('Error!', 'Enter Email!', 'error');", true);
            }
            else
            {
                int uid = (int)Session["uid"];
                string name = Session["username"].ToString();
                string oid;
                oid = "order" + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString();
                string query = "insert into tblOrder values (@oid,@name,@address,@contactnum,@total,@date,@uid)";
                SqlCommand com = new SqlCommand(query, con);
                com.Parameters.AddWithValue("@oid", oid);
                com.Parameters.AddWithValue("@name", name);
                com.Parameters.AddWithValue("@address", txtAddress.Text);
                com.Parameters.AddWithValue("@contactnum", txtContact.Text);
                com.Parameters.AddWithValue("@total", GridView1.FooterRow.Cells[4].Text);
                com.Parameters.AddWithValue("@date", DateTime.Today);
                com.Parameters.AddWithValue("@uid", uid);
                int i = com.ExecuteNonQuery();
                if(i > 0)
                {
                    foreach (GridViewRow gr in GridView1.Rows)
                    {
                        string insert = "insert into tblOrderDetail values (@oid,@pname,@price,@quantity)";
                        SqlCommand cmd = new SqlCommand(insert, con);
                        cmd.Parameters.AddWithValue("@oid", oid);
                        cmd.Parameters.AddWithValue("@pname", gr.Cells[1].Text);
                        cmd.Parameters.AddWithValue("@price", gr.Cells[2].Text);
                        cmd.Parameters.AddWithValue("@quantity", gr.Cells[3].Text);
                        int c = cmd.ExecuteNonQuery();
                        if(c > 0)
                        {
                            //string quantity = "select * from tblCart where uid='"+uid+"'";
                            //SqlCommand cm = new SqlCommand(quantity, con);
                            //SqlDataReader dr = cm.ExecuteReader();
                            //while (dr.Read())
                            //{
                                //string pname = dr.GetValue(2).ToString();
                                //int qty = (int)dr.GetValue(4);

                                //string stock = "select * from tblProduct where pname='"+pname+"'";
                                //SqlCommand stk = new SqlCommand(stock, con);
                                //SqlDataReader reader = stk.ExecuteReader();
                                //int newstock = (int)reader.GetValue(5) - qty;
                                //string update = "update tblProduct set stock='" + newstock + "' where pname='" + pname + "'";
                                //SqlCommand stck = new SqlCommand(update, con);
                                //int sck = stck.ExecuteNonQuery();
                                //if (sck > 1)
                                //{
                                    string delete = "delete from tblCart where uid='"+uid+"'";
                                    SqlCommand dlt = new SqlCommand(delete, con);
                                    int d = dlt.ExecuteNonQuery();
                                    if(d > 0)
                                    {
                                        ScriptManager.RegisterStartupScript(this, this.GetType(), "k", "swal('Congratulations!', 'Your Order Is Placed!', 'success').then(function() {window.location.href = 'index.aspx'}); ", true);
                                    }
                            //    }
                            //}
                        }
                    }
                }           
            }
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            int uid = (int)Session["uid"];
            string query = "delete from tblCart where uid='" + uid + "'";
            SqlCommand com = new SqlCommand(query, con);
            com.ExecuteNonQuery();
            Response.Redirect("cart.aspx");
        }
    }
}