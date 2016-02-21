using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for DearDairyClass
/// </summary>
///

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
    }

}
public class Register : DearDairyClass
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
        if (FirstName.Length == 0)
        {
            throw new Exception("FirstName is required");
        }
        if (lastName.Length == 0)
        {
            throw new Exception("LastName is required");        
        }
    }
}


