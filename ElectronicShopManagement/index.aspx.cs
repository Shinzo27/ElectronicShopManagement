namespace ElectronicShopManagement
{
    using System;

    public partial class WebForm1 : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if(Session["username"] == null)
            {
                
            }
        }
    }
}
