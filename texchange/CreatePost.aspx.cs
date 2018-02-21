using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using texchange.DataModels;

namespace texchange
{
    public partial class CreatePost : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["User"] == null)
            {
                Response.Redirect("Login.aspx");

            }

            if (Session["thePost"] != null)
            {
                DataModels.CreatePost post = (DataModels.CreatePost)Session["thePost"];
                txtTitle.Text = post.title;
                txtAuthor.Text = post.author;
                txtCoarse.Text = post.course;
                txtDepartment.Text = post.department;
                txtPrice.Text = post.price.ToString();
            }
        }

        protected void btnSumbit_Click(object sender, EventArgs e)
        {
            DataModels.CreatePost post = new DataModels.CreatePost();

            post.title = txtTitle.Text;
            post.author = txtAuthor.Text;
            post.course = txtCoarse.Text;
            post.department = txtCoarse.Text;
            post.price = float.Parse(txtPrice.Text);
            //post.image = FileUploadImage.

            Session["thePost"] = post;
            Response.Redirect("CreatePostConfirm.aspx");

        }
    }
}