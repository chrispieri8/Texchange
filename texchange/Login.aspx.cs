using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using texchange.DataTiers;

namespace texchange
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["User"] != null)
            {
                Response.Redirect("MyAccount.aspx");
            }

        }

        protected void btnSignIn_Click(object sender, EventArgs e)
        {
            DataTiers.passwordHash ph = new DataTiers.passwordHash(txtPassword.Text);

            DataTiers.userTier ut = new DataTiers.userTier();
            DataModels.Users user = new DataModels.Users();
            user.email = txtUserName.Text;
            user.username = txtUserName.Text;
            


            try
            {
                
                Tuple<string,string> temp = ut.login(user);
                if(ph.Verify(temp.Item1, temp.Item2, txtPassword.Text))
                {
                    user = ut.getInfo(user);
                    Session["User"] = user;
                    Session["ID"] = user.userID;
                    Response.Redirect("MyAccount.aspx");

                }
                else
                {
                    Label1.Text = "Incorrect password or email";


                }

            }
            catch (Exception ex)
            {
                Label1.Text = "Incorrect password or email";
                Console.WriteLine(ex.Message);
            }

        }
    }
}