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
    public partial class AddProducts : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/ProductImages/" + FileUpload1.FileName));
            Image1.ImageUrl = "~/ProductImages/" + FileUpload1.FileName;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(Application["cs"].ToString());
            SqlCommand cmd = new SqlCommand("INSERT INTO productdetails (pname, category, price, img, description) values (@pname, @category, @price, @img, @description)", cn);
            cmd.Parameters.AddWithValue("@pname", TextBox1.Text);
            cmd.Parameters.AddWithValue("@category", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@price", TextBox2.Text);
            cmd.Parameters.AddWithValue("@img", Image1.ImageUrl);
            cmd.Parameters.AddWithValue("@description", TextBox3.Text);

            cn.Open();
            cmd.ExecuteNonQuery();

            cn.Close();
            cmd.Dispose();
            Label2.Text = "Product Added Succesfully";


            Image1.ImageUrl = "";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            DropDownList1.Text = "";

        }
    }
}