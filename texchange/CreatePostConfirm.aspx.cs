using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace texchange
{
    public partial class CreatePostConfirm : System.Web.UI.Page     
    {
        MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyData"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["thePost"] != null)
            {
                DataModels.CreatePost post = (DataModels.CreatePost)Session["thePost"];
                lblTitle.Text = post.title;
                lblAuthor.Text = post.author;
                lblCoarse.Text = post.course;
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

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
               DataTiers.postTier pt = new DataTiers.postTier();
               DataModels.CreatePost post = (DataModels.CreatePost)Session["thePost"];


               try
               {
                   pt.insertPost(post);

               }
               catch (Exception ex)
               {
                   Console.WriteLine(ex.Message);
                   Response.Redirect("createPost.aspx");
               }
            Response.Redirect("Success.aspx");
               
    /*
            string query = "INSERT INTO posts (title, author, course, department) " +
               "VALUES ('" + lblTitle.Text + "','" + lblAuthor.Text + "','" + lblCoarse.Text + "','" + lblDepartment.Text + "');";

            MySqlCommand cmd = new MySqlCommand(query,conn);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
*/

        }
    }
 }
