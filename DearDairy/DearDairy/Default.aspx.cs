using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmitClick(object sender, EventArgs e)
    {
        string[] lines = System.IO.File.ReadAllLines(@"C:\OOADProject\Register.txt");

        foreach (string line in lines)
        {
            if (line != "")
            { 
            string[] Userinfo = line.Split(',');
            string user = Userinfo[2];
            string password = Userinfo[3];
            if (user.Equals(txtUsername.Text) && password.Equals(txtPassword.Text))
            {
                Session["FirstName"] = Userinfo[0];
                Response.Redirect("~/HomePage.aspx");
            }
            }
            else
            {
                lblErrorHandling.Visible = true;
                lblErrorHandling.Text = "Please verify Username and Password Or else register";
            }
        }
    }
}