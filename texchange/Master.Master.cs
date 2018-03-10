using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace texchange
{
    public partial class Master : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["theSearch"] = TxtPost.Text.ToString();
            string path = HttpContext.Current.Request.Url.AbsolutePath;

            if(path != "/google.aspx")
            {
                Response.Redirect("google.aspx");

            }


        }
    }
}