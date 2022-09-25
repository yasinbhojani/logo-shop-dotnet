using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(Application["cs"].ToString());
            SqlCommand cmd = new SqlCommand("SELECT role, pic FROM CustomerInfo WHERE uname=@uname AND password=@password", cn);
            cmd.Parameters.AddWithValue("@uname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@password", TextBox2.Text);

            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);

            if (ds.Tables[0].Rows.Count >= 1)
            {
                Session["uname"] = TextBox1.Text;
                Session["role"] = ds.Tables[0].Rows[0]["role"].ToString();
                Session["pic"] = ds.Tables[0].Rows[0]["pic"].ToString();

                if (Session["role"].ToString() == "admin") 
                {
                    Response.Redirect("Dashboard.aspx");
                }
                else if (Session["role"].ToString() == "customer") 
                {
                    Response.Redirect("Home.aspx");
                }
      
            }
            else 
            {
                Label3.Text = "Invalid Username or Password";
            }
        }
    }
}