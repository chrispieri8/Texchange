using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace texchange
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TxtPost.Focus();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["theSearch"] != null)
            {
                Session.Remove("theSearch");
            }
            Session["theSearch"] = TxtPost.Text.ToString();
            Response.Redirect("google.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            TxtPost.Focus();
        }
    }
}
