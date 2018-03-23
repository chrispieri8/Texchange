using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace texchange
{
    public partial class CreatePost1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Session["thePost"] != null)
            {
                Session.Remove("thePost");
                Session["thePost"] = TxtPost.Text;
            }
            Session["thePost"] = TxtPost.Text;
            Response.Redirect("CreatePost2.aspx");
        }
    }
}