using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Testing
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserLogin"] == null)
            {
                Response.Redirect("Admin.aspx");
            }
        }

        protected void Login_btn_Click(object sender, EventArgs e)
        {
            SqlConnection TestingConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["TestingDBConnection"].ConnectionString);
            TestingConnect.Open();
            string cekuser = "SELECT Count(*) from [User] where username = '" + Username.Text + "'";
            SqlCommand query = new SqlCommand(cekuser, TestingConnect);
            int jumlah = Convert.ToInt32(query.ExecuteScalar().ToString());
            TestingConnect.Close();
            if (jumlah == 1)
            {
                TestingConnect.Open();
                string passwrd = "SELECT password from [User] where username = '" + Username.Text + "'";
                SqlCommand passquery = new SqlCommand(passwrd, TestingConnect);
                string password = passquery.ExecuteScalar().ToString();
                TestingConnect.Close();
                if (password == Password.Text)
                {
                    Session["UserLogin"] = Username.Text;
                    Response.Redirect("admin.aspx");
                }
                else
                {
                    Response.Write("Wrong Password!");
                }
            }
            else
            {
                Response.Write("Username not found");   
            }
        }
    }
}