using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegisterClick(object sender, EventArgs e)
    {
        // Compose a string that consists of three lines.
        string lines = txtFirstName.Text+","+txtLastName.Text+","+txtUsername.Text+","+txtPassword.Text+"\n";
        
        // Write the string to a file.
        //System.IO.StreamWriter file = new System.IO.StreamWriter("c:\\Register.txt");
        File.AppendAllText("c:\\OOADProject\\Register.txt", lines);
        //file.WriteLine(lines);
        

        //file.Close();
        Response.Redirect("~/Default.aspx");
        
    }
}