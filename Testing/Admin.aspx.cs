using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testing
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserLogin"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Sesna.Text = "Welcome" + Session["UserLogin"];  
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["UserLogin"] = null;
            Response.Redirect("login.aspx");
        }
    }
}