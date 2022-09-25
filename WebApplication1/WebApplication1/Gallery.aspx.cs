using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Gallery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label l = (Label)((Button)sender).NamingContainer.FindControl("idLabel");
            Response.Redirect("ViewMore.aspx?id=" + l.Text);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label l = (Label)((Button)sender).NamingContainer.FindControl("idLabel");
            SqlConnection cn = new SqlConnection(Application["cs"].ToString());
            SqlCommand cmd = new SqlCommand("INSERT INTO mycart (uname, pid) values (@uname, @pid)", cn);
            cmd.Parameters.AddWithValue("@uname", Session["uname"].ToString());
            cmd.Parameters.AddWithValue("@pid", l.Text);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}