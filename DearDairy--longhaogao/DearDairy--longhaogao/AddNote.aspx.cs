using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddNote : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit(object o, EventArgs e)
    {
        String line = txtTitle.Value;
        String date = txtDate.Value;
        string node = Request.Form["TextBox1"];
    }
}