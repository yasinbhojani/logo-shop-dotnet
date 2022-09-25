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
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(Application["cs"].ToString());
            SqlCommand cmd = new SqlCommand("INSERT INTO CustomerInfo (fname, lname, uname, contact, password) values (@fname, @lname, @uname, @contact, @password)", cn);
            cmd.Parameters.AddWithValue("@fname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@lname", TextBox2.Text);
            cmd.Parameters.AddWithValue("@uname", TextBox3.Text);
            cmd.Parameters.AddWithValue("@contact", TextBox4.Text);
            cmd.Parameters.AddWithValue("@password", TextBox5.Text);

            cn.Open();
            cmd.ExecuteNonQuery();

            cmd.Dispose();
            cn.Close();

            Label7.Text = "Registration Successful";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
    }
}