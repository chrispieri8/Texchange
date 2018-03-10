using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using Google.Apis.Books;
using Google.Apis.Services;
using System.Net.Http;
using System.Threading.Tasks;

namespace texchange
{
    public partial class google : System.Web.UI.Page
    {
        
        public static Google.Apis.Books.v1.BooksService service = new Google.Apis.Books.v1.BooksService(
            new BaseClientService.Initializer
            {
                ApplicationName = "ISBNBookSearch",
                ApiKey = "AIzaSyCgppTfFP2lcSc5sOoT9k0GNBQ_p3b-88s",
            });


        protected async void Page_Load(object sender, EventArgs e)
        {
            dlSearch.DataSource = null;

            dlSearch.DataBind();

           if(Session["theSearch"] == null)
            {
                TextBox temp = (TextBox)Master.FindControl("txtPost");
                string text = temp.Text;
                await SearchTitle(text);

            }
            else
            {
                string text = (String)Session["theSearch"];
                TextBox temp = (TextBox)Master.FindControl("txtPost");
                temp.Text = text;
                await SearchTitle(text);
            }


       /*     TextBox temp = (TextBox)Master.FindControl("txtPost");
            string text = temp.Text;
            if(text != null)
            {
                await SearchTitle(text);
            }
        */    


            //   f.Text = "";

        }

        

        protected async Task<Google.Apis.Books.v1.Data.Volume> SearchTitle(string title)
        {
            var temp = service.Volumes.List(title);
            
            
            temp.MaxResults = 40;
            var result = await temp.ExecuteAsync();
            

            //var result = await service.Volumes.List(title + "%&maxResults=40").ExecuteAsync();
            //service.Volumes.List(title);





            //Label2.Text = result.Items[1].VolumeInfo.Title;
            DataSet ds = new DataSet();

            DataTable dt = new DataTable();


            dt.Columns.Add(new DataColumn("Title", typeof(string)));

            dt.Columns.Add(new DataColumn("Author", typeof(string)));

            dt.Columns.Add(new DataColumn("Url", typeof(string)));

            dt.Columns.Add(new DataColumn("Image", typeof(string)));

            dt.Columns.Add(new DataColumn("Year", typeof(string)));

            dt.Columns.Add(new DataColumn("Page", typeof(string)));

            //  GbookSearchClient client = new GbookSearchClient("www.c-sharpcorner.com");

            //IList<IBookResult> results = client.Search(TextBox1.Text, 30);

            foreach (var x in result.Items)
            {

                try
                {
                    DataRow dr = dt.NewRow();

                    dr["Title"] = x.VolumeInfo.Title.ToString();

                    dr["Author"] = x.VolumeInfo.Authors.FirstOrDefault().ToString();

                    dr["Image"] = x.VolumeInfo.ImageLinks.Thumbnail;

                    dr["Url"] = x.VolumeInfo.InfoLink.ToString();

                    dr["Year"] = x.VolumeInfo.PublishedDate.ToString();

                    dr["Page"] = x.VolumeInfo.PageCount.ToString();

                    dt.Rows.Add(dr);
                }
                catch (Exception)
                {
                    
                }

            }

            dlSearch.DataSource = dt;

            dlSearch.DataBind();

            

           Session.Remove("theSearch");

            return null;
        }
    }
}