using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace texchange
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSumbit_Click(object sender, EventArgs e)
        {
            DataModels.CreatePost cp = new DataModels.CreatePost();
            cp.title = txtTitle.Text;
            cp.author = txtAuthor.Text;
            cp.department = txtDepartment.Text;

            Session["search"] = cp;
        }
    }
}