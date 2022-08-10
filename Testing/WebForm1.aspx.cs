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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserLogin"] == null)
            {
                Response.Redirect("Admin.aspx");
            }
        }

        protected void Button_Daftar(object sender, EventArgs e)
        {
            SqlConnection TestingConnect = new SqlConnection(ConfigurationManager.ConnectionStrings["TestingDBConnection"].ConnectionString);
            TestingConnect.Open();
            string cekuser = "SELECT Count(*) from [User] where username = '" + Username.Text + "'";
            SqlCommand query = new SqlCommand(cekuser, TestingConnect);
            int jumlah = Convert.ToInt32(query.ExecuteScalar().ToString());
            TestingConnect.Close();
            if(jumlah != 0)
            {
                Response.Write("Username already using");
            }
            else
            {
                TestingConnect.Open();
                string insert = "INSERT into [User] (username,password,email,gender) VALUES (@username,@password,@email,@gender)";
                SqlCommand insertquery = new SqlCommand(insert, TestingConnect);
                insertquery.Parameters.AddWithValue("@username", Username.Text);
                insertquery.Parameters.AddWithValue("@password", Password.Text);
                insertquery.Parameters.AddWithValue("@email", Email.Text);
                insertquery.Parameters.AddWithValue("@gender", gender.SelectedItem.ToString());
                insertquery.ExecuteNonQuery();
                TestingConnect.Close();
                Response.Redirect("admin.aspx");
            }
        }
    }
}