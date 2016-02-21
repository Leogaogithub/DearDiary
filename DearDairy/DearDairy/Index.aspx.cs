using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


public partial class Index : System.Web.UI.Page
{
    DearDairyClass r = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void btnLoginClick(object o, EventArgs e)
    {
        try
        {
            r = new Login();
            r.Email = txtloginemail.Value;
            r.Password = txtloginPass.Value;
            r.Validate();
            Session["Userpath"] = "C:\\" + txtloginemail.Value+"\\";
            Response.Redirect("~/NewHomePage.aspx");
        }
        catch (Exception ex)
        {
            lblErrorHandling.Visible = true;
            lblErrorHandling.Text = ex.Message.ToString();
        
        }
    }
    public void setRegisterAttributes()
    {
        r = new RegisterClass();
        r.Email = txtEmail.Value;
        r.Password = txtPassword.Value;
       
    }
    protected void btnRegisterClick(object o, EventArgs e)
    {
        try
        {
            setRegisterAttributes();
            RegisterClass a = new RegisterClass();
            a.FirstName = txtFirstName.Value;
            a.lastName = txtLastName.Value;
            
            
            r.Validate();
            
            // Compose a string that consists of three lines.
            string lines = txtFirstName.Value + "," + txtLastName.Value + "," + txtEmail.Value + "," + txtPassword.Value + "\n";

            // Write the string to a file.
            //System.IO.StreamWriter file = new System.IO.StreamWriter("c:\\Register.txt");
            File.AppendAllText("c:\\OOADProject\\Register.txt", lines);

            string folderName = @"c:\" + txtEmail.Value;

            System.IO.Directory.CreateDirectory(folderName);
            lblErrorHandling.Text = "Successfully Registered";
        }
        //file.WriteLine(lines);
        catch (Exception ex)
        {
            lblRegisterError.Visible = true;
            lblRegisterError.Text = ex.Message.ToString();
        }

        //file.Close();
        //Response.Redirect("~/Default.aspx");

    }
}
public class DearDairyClass
{

    //
    // TODO: Add constructor logic here
    //

    public string Email { get; set; }
    public string Password { get; set; }
    public virtual void Validate()
    {
        throw new Exception("Not Implemented");
    }

}

public class Login : DearDairyClass
{
    public override void Validate()
    {
        if (Email.Length == 0)
        {
            throw new Exception("Username is required");
        }
        if (Password.Length == 0)
        {
            throw new Exception("Password is required");
        }
        if (File.Exists(@"C:\OOADProject\Register.txt"))
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
                    if (user.Equals(Email.ToString()) && password.Equals(Password.ToString()))
                    {
                        flag = 1;


                    }
                }
            }
            if (flag == 0)
            {
                throw new Exception("Please Verify Username and Password");
            }
        }
        else
        {
            throw new Exception("Please Register the User");
        }
        
    }

}
public class RegisterClass : DearDairyClass
{
    public string FirstName { get; set; }
    public string lastName { get; set; }

    public override void Validate()
    {
        if (Email.Length == 0)
        {
            throw new Exception("Email is required");
        }
        if (Password.Length == 0)
        {
            throw new Exception("Password is required");
        }
        if (File.Exists(@"C:\OOADProject\Register.txt"))
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
                    if (user.Equals(Email.ToString()))
                    {
                        throw new Exception("User already registered.");
                        
                    }
                }
            }
            if (flag == 0)
            {
             
            }

        }
        
    }

}

