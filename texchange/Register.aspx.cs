using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;

namespace texchange
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSumbit_Click(object sender, EventArgs e)
        {
            DataTiers.passwordHash ph = new DataTiers.passwordHash(txtPassword.Text);

            DataTiers.userTier ut = new DataTiers.userTier();
            DataModels.Users user = new DataModels.Users();
            user.email = txtEmail.Text;
            user.username = txtUsername.Text;
            user.salt = ph.Salt;
            user.hash = ph.Hash;
            user.major = txtMajor.Text;
                        

            try
                {
                    if(ut.userExist(user) == false)
                    {
                        ut.insertUser(user);
                        Response.Redirect("Success.aspx");
                    }
                    else
                    {

                    // lblError.Text = "<strong>Warning: </strong>The username or email already exists";
                    CustomValidator1.ErrorMessage = "<strong>Warning: </strong>The username or email already exists";
                    CustomValidator1.IsValid = false;


                    }

                }
                catch (Exception ex)
                {
                    Console.WriteLine( ex.Message);
                }

            
           
            
        }
    }
}