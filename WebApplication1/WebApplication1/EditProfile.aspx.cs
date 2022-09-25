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
    public partial class EditProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/ProfileImages/" + FileUpload1.FileName));
            Image1.ImageUrl = "~/ProfileImages/" + FileUpload1.FileName;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(Application["cs"].ToString());
            SqlCommand cmd = new SqlCommand("UPDATE CustomerInfo SET pic=@pic WHERE uname=@uname", cn);

            cmd.Parameters.AddWithValue("@pic", Image1.ImageUrl);
            cmd.Parameters.AddWithValue("@uname", Session["uname"].ToString());

            cn.Open();
            cmd.ExecuteNonQuery();
            cn.Close();

            Session["pic"] = Image1.ImageUrl;
            Response.Redirect("Home.aspx");
        }
    }
}