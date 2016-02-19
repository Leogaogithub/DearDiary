using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLoginClick(object o, EventArgs e)
    {
        string[] lines = System.IO.File.ReadAllLines(@"C:\OOADProject\Register.txt");
        int flag = 0;
        foreach (string line in lines)
        {
            if (line != "")
            {
                string[] Userinfo = line.Split(',');
                string user = Userinfo[2];
                string password = Userinfo[3];
                if (user.Equals(txtloginemail.Value) && password.Equals(txtloginPass.Value))
                {
                    flag = 1;
                    Session["FirstName"] = Userinfo[0];
                    Response.Redirect("~/NewHomePage.aspx");
                }
            }
        }
        if (flag == 0)
        {
            lblErrorHandling.Visible = true;
            lblErrorHandling.Text = "Please verify Username and Password Or else register";
        }
    }
    protected void btnRegisterClick(object o, EventArgs e)
    {
        // Compose a string that consists of three lines.
        string lines = txtFirstName.Value + "," + txtLastName.Value + "," + txtEmail.Value + "," + txtPassword.Value + "\n";

        // Write the string to a file.
        //System.IO.StreamWriter file = new System.IO.StreamWriter("c:\\Register.txt");
        File.AppendAllText("c:\\OOADProject\\Register.txt", lines);
        //file.WriteLine(lines);


        //file.Close();
        //Response.Redirect("~/Default.aspx");

    }
}