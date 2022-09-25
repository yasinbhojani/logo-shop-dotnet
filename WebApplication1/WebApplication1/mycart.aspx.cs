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
    public partial class mycart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            SqlConnection cn = new SqlConnection(Application["cs"].ToString());
            SqlCommand cmd = new SqlCommand("SELECT ISNULL(sum(price), 0) FROM mycartproductview WHERE uname=@uname", cn);
            cmd.Parameters.AddWithValue("@uname", Session["uname"].ToString());

            SqlDataAdapter adpt = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            adpt.Fill(ds);

            Label7.Text = DateTime.Now.ToShortDateString();
            Label8.Text = ds.Tables[0].Rows[0][0].ToString();
            Label9.Text = "100";

            Label10.Text = (Convert.ToInt32(Label8.Text) + 100).ToString();
        }
    }
}