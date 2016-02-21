using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CreateEvent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmitEvents(object sender, EventArgs e)
    {
      //  int Event = txtEvents.SelectedIndex;
        if (drpEvent.SelectedValue.ToString().Trim() != "Select an Event")
        {
            string lines = drpEvent.SelectedValue + "," + form_name.Value + "," + form_date.Value + "," + form_location.Value + "," + txtDescription.Text + "\n";

            File.AppendAllText(Session["Userpath"].ToString() + form_name.Value + "-" + drpEvent.SelectedValue + ".txt", lines);
        }
        else
        {
            lblErrorStatement.Text = "Please select an Event";
            lblErrorStatement.Visible = true;
        }
    }
}