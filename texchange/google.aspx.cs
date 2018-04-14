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


        private async void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dlSearch.DataSource = null;

                dlSearch.DataBind();

                TextBox temp = (TextBox)Master.FindControl("TxtPost");
                if (temp.Text == "")
                {
                    string text = (String)Session["theSearch"];
                    await SearchTitle(text);
                }
                else
                {
                    await SearchTitle(temp.Text);
                }

             /*   if (Session["theSearch"] == null)
                {
                    TextBox temp = (TextBox)Master.FindControl("TxtPost");
                    Session["theSearch"] = temp.Text;
                    await SearchTitle(temp.Text);

                }
                else
                {
                    string text = (String)Session["theSearch"];
                    TextBox temp = (TextBox)Master.FindControl("txtPost");
                    temp.Text = text;
                    await SearchTitle(text);

                }*/
            }
        }

        

        protected async Task<Google.Apis.Books.v1.Data.Volume> SearchTitle(string title)
        {
            var temp = service.Volumes.List(title);
            
            
            temp.MaxResults = 40;
            var result = await temp.ExecuteAsync();
            

            DataSet ds = new DataSet();

            DataTable dt = new DataTable();


            dt.Columns.Add(new DataColumn("Title", typeof(string)));

            dt.Columns.Add(new DataColumn("Author", typeof(string)));

           // dt.Columns.Add(new DataColumn("Url", typeof(string)));

            dt.Columns.Add(new DataColumn("Image", typeof(string)));

            dt.Columns.Add(new DataColumn("Year", typeof(string)));

           // dt.Columns.Add(new DataColumn("Page", typeof(string)));

            dt.Columns.Add(new DataColumn("ID", typeof(string)));


            foreach (var x in result.Items)
            {

                try
                {
                    DataRow dr = dt.NewRow();

                    dr["Title"] = x.VolumeInfo.Title;

                    dr["Author"] = x.VolumeInfo.Authors.FirstOrDefault();

                    dr["Image"] = x.VolumeInfo.ImageLinks.Thumbnail;

                    //dr["Url"] = x.VolumeInfo.InfoLink;

                    dr["Year"] = x.VolumeInfo.PublishedDate;

                   // dr["Page"] = x.VolumeInfo.PageCount;

                    dr["ID"] = x.Id.ToString();

                    dt.Rows.Add(dr);
                }
                catch (Exception)
                {

                }
                

            }

            dlSearch.DataSource = dt;

            dlSearch.DataBind();


          //  Session.Remove("theSearch");
           

            return null;
        }

        protected void dlSearch_ItemCommand(object source, DataListCommandEventArgs e)
        {
        
            dlSearch.SelectedIndex = e.Item.ItemIndex;
            String id = ((Label)dlSearch.SelectedItem.FindControl("Label2")).Text;
            if (Session["bookID"] != null)
            {
                Session.Remove("bookID");
                Session["bookID"] = id;

            }
            Session["bookID"] = id;

            Response.Redirect("SearchResult.aspx");
        }
    
    }
}