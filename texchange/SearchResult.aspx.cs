using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Google.Apis.Books;
using System.Net.Http;
using System.Threading.Tasks;
using Google.Apis.Services;

namespace texchange
{
    public partial class SearchResult : System.Web.UI.Page
    {

        public static Google.Apis.Books.v1.BooksService service = new Google.Apis.Books.v1.BooksService(
         new BaseClientService.Initializer
         {
             ApplicationName = "ISBNBookSearch",
             ApiKey = "AIzaSyCgppTfFP2lcSc5sOoT9k0GNBQ_p3b-88s",
         });

        protected async void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string text = (String)Session["bookID"];
                var result = await service.Volumes.Get(text).ExecuteAsync();

                Image1.ImageUrl = result.VolumeInfo.ImageLinks.Thumbnail;
                Label1.Text = result.VolumeInfo.Title;
                Label2.Text = Label2.Text + result.VolumeInfo.Authors.FirstOrDefault();
                if (result.SaleInfo.RetailPrice == null)
                {
                    Label3.Text = Label3.Text + "n/a";
                }
                else
                {
                    Label3.Text = Label3.Text + result.SaleInfo.RetailPrice.Amount.ToString();
                }
                lblDescription.Text = result.VolumeInfo.Description;
                lblReview.Text = result.VolumeInfo.AverageRating.ToString() + "(" + result.VolumeInfo.RatingsCount.ToString() + ")";
                lblContact.Text = result.VolumeInfo.ContentVersion.ToString();
                        
                GetData();
                if(GridView1.Rows.Count == 0)
                {
                    Label4.Visible = true;
                    Label4.Style.Add("text-align", "center");
                }
            }

        }

        private void GetData()
        {
            string text = (String)Session["bookID"];

            DataTable table = new DataTable();
            // get the connection    
            using (MySqlConnection conn = new MySqlConnection(ConfigurationManager.ConnectionStrings["MyData"].ToString()))
            {
                // write the sql statement to execute    
                string query = "SELECT posts.Condition, posts.Price, users.email, users.username, users.major FROM morty.posts inner join morty.users on users.userID = posts.userID  where posts.BookID = '" + text + "';";

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