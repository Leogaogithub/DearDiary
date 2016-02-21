using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddNotes : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmitClick(object sender, EventArgs e)
    {
        string lines = formDate.Value + "," + formTitle.Value +"," +formMessage.Text+"\n";

        File.AppendAllText(Session["Userpath"].ToString() + formDate.Value + "-" + formTitle.Value+"-" + "Notes" + ".txt", lines);
    }
}