using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uname"] != null && Session["role"].ToString() == "customer")
            {
                Label1.Text = "Welcome " + Session["uname"].ToString();
                ImageButton1.ImageUrl = Session["pic"].ToString();
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["uname"] = null;
            Session["role"] = null;
            Session["pic"] = null;

            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}
