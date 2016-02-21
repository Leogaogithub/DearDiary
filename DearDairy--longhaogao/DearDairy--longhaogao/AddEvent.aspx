<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddEvent.aspx.cs" Inherits="AddEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:lightgray">
    <form id="form1" runat="server">
        <center>
        <h2 style="background-color:purple;color:white">Add Event</h2>
    <div>
      
        <asp:Label runat="server" Text="Event Name" ID="lblEventName" Width="100px"></asp:Label><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br /><br />
        <asp:Label runat="server" Text="Event Date" ID="lblEventDate" Width="100px"></asp:Label><input type="date" runat="server" id="eventDate" /><br /><br />
             <asp:Label runat="server" Text="Event Type" ID="lblEventType" Width="100px"></asp:Label><asp:DropDownList ID="ddlEventType" runat="server">
                 <asp:ListItem Text="Birthday"></asp:ListItem>
                 <asp:ListItem Text="Anniversary"></asp:ListItem>
                 <asp:ListItem Text="Friends Day"></asp:ListItem>
                                                                                                     </asp:DropDownList><br /><br />
        
             <asp:Button runat="server" ID="btnSubmitEvent" Text="Add" PostBackUrl="~/HomePage.aspx" />
    </div>
            </center>
    </form>
</body>
</html>
