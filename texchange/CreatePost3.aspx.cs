using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Google.Apis.Books;
using Google.Apis.Services;
using System.Net.Http;
using System.Threading.Tasks;

namespace texchange
{
    public partial class CreatePost3 : System.Web.UI.Page
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
                if(result.SaleInfo.RetailPrice == null)
                {
                    Label3.Text = Label3.Text + "n/a";
                }
                else
                {
                    Label3.Text = Label3.Text + result.SaleInfo.RetailPrice.Amount.ToString();
                }
                lblDescription.Text = result.VolumeInfo.Description;
                lblReview.Text = result.VolumeInfo.AverageRating.ToString() + "/5 (" + result.VolumeInfo.RatingsCount.ToString() + " Reviews)";
            }
            



        }

        protected async void btnSumbit_Click(object sender, EventArgs e)
        {
            string text = (String)Session["bookID"];
            var result = await service.Volumes.Get(text).ExecuteAsync();

            DataModels.CreatePost cp = new DataModels.CreatePost();
            cp.title = result.VolumeInfo.Title;
            cp.bookID = result.Id;
            cp.price = float.Parse(txtPrice.Text);
            cp.condition = DropDownCondition.Text;

            DataModels.Users tempUser = (DataModels.Users)Session["user"];
            int id = tempUser.userID;

            DataTiers.postTier pt = new DataTiers.postTier();
            
            try
            {
                pt.insertPost(cp, id);

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
                Response.Redirect("CreatePost3.aspx");
            }
          Session.Remove("bookID");
            if (!Response.IsRequestBeingRedirected)
            {
                Response.Redirect("Success.aspx");
            }
            

        }
    }
}