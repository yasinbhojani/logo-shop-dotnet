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
    public partial class ViewMore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(Application["cs"].ToString());
            SqlCommand cmd = new SqlCommand("INSERT INTO mycart (uname, pid) values (@uname, @pid)", cn);
            cmd.Parameters.AddWithValue("@uname", Session["uname"].ToString());
            cmd.Parameters.AddWithValue("@pid", Request.QueryString["id"]);

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();

            Response.Redirect("mycart.aspx");
        }
    }
}