using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using texchange.DataModels;

namespace texchange
{
    public partial class CreatePostConfirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["thePost"] != null)
            {
                DataModels.CreatePost post = (DataModels.CreatePost)Session["thePost"];
                lblTitle.Text = post.title;
                lblAuthor.Text = post.author;
                lblCoarse.Text = post.coarse;
                lblDepartment.Text = post.department;
                lblPrice.Text = post.price.ToString();
            }
            else
            {
                Response.Redirect("CreatePost.aspx");
            }
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreatePost.aspx");
        }
    }
}