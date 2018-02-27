using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace texchange
{
    public partial class SearchResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                GetData();
            }

        }

        private void GetData()
        {
            DataModels.CreatePost tempSearch = (DataModels.CreatePost)Session["search"];

            DataTable table = new DataTable();
            // get the connection    
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyData"].ToString()))
            {
                // write the sql statement to execute    
                string query = "SELECT posts.Title, posts.Author, posts.Department, posts.Condition, posts.Price, users.email, users.username FROM morty.posts, morty.users where posts.Title = '" + tempSearch.title + "' OR posts.Author = '" + tempSearch.author + "' Or posts.Department = '" + tempSearch.department + "'";

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
    }


}