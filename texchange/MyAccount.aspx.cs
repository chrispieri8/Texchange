using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;
using System.Collections.Specialized;

namespace texchange
{
    public partial class MyAccount : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyData"].ToString());
        


        protected void Page_Load(object sender, EventArgs e)
        {
            DataModels.Users tempUser = (DataModels.Users)Session["user"];
            lblUsername.Text = tempUser.username;
            lblEmail.Text = tempUser.email;
            lblMajor.Text = tempUser.major;

            

            if (!IsPostBack)
            {
                GetData();
            }
        }

        private void GetData()
        {
            DataModels.Users tempUser = (DataModels.Users)Session["user"];

            DataTable table = new DataTable();
            // get the connection    
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyData"].ToString()))
            {
                // write the sql statement to execute    
                string query = "SELECT posts.PostID, posts.Title, posts.Author, posts.Department, posts.Condition, posts.Price FROM posts where posts.userID = '" + tempUser.userID + "'";
                // instantiate the command object to fire    
                using (MySqlCommand cmd = new MySqlCommand(query, conn))
                {
                    // get the adapter object and attach the command object to it    
                    using (MySqlDataAdapter ad = new MySqlDataAdapter(cmd))
                    {
                        // fire Fill method to fetch the data and fill into DataTable    
                        ad.Fill(table);
                    }
                }
            }
            // specify the data source for the GridView    
            GridView1.DataSource = table;
            // bind the data now    
            GridView1.DataBind();
        }
    

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            MySqlCommand cmd = new MySqlCommand("Delete From posts where PostID = '" + e.Values[0] + "'", conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            GetData();
            conn.Close();

       }


       


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            

            GetData();
            GridView1.Rows[e.NewEditIndex].Cells[1].Enabled = false;

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetData();
        }



        protected void btnLogout_Click1(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("Login.aspx");
        }

      

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DataModels.Users tempUser = (DataModels.Users)Session["user"];

            MySqlCommand cmd = new MySqlCommand("Update posts set Title = '" + e.NewValues[1] + "', Author = '" + e.NewValues[2] + "', Department = '" + e.NewValues[3] + "', posts.Condition = '" + e.NewValues[4] + "', Price = '" + float.Parse(e.NewValues[5].ToString()) + "' where posts.postID = '" + e.NewValues[0] + "'", conn);

            conn.Open();
            cmd.ExecuteNonQuery();

            GridView1.EditIndex = -1;
            GetData();
            conn.Close();
        }
    }

}