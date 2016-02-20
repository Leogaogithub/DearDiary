<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .Welcome {
            float:left;
           margin-bottom:50px;
        }
    </style>
</head>
<body style="background-color:lightgray">
    <form id="form1" runat="server">
    <div><center>
        <h2 style="background-color:purple;color:white">Dear Dairy Home</h2>
        <asp:Label Text="Welcome" ID="lblWelcome" runat="server" CssClass="Welcome"></asp:Label><a href="Default.aspx" style="float:right">Sign Out</a>
        <table>
            <tr>
                <td style="padding-right:20px">
<asp:Button Text="Add Event" runat="server" ID="btnEvent" PostBackUrl="~/AddEvent.aspx" />
                 </td>
                <td style="padding-right:20px">
                    <asp:Button Text="View Event" runat="server" ID="btnViewEvent" /> 
                </td>
            </tr>
            <tr>
                <td style="padding-right:20px">
<asp:Button Text="Add Picture" runat="server" ID="btnaddPicture" />
                 </td>
                <td style="padding-right:20px">
                    <asp:Button Text="View Picture" runat="server" ID="btnViewPicture" /> 
                </td>
            </tr>
            <tr>
                <td style="padding-right:20px">
<asp:Button Text="Add Notes" runat="server" ID="btnNotes" />
                 </td>
                <td style="padding-right:20px">
                    <asp:Button Text="View Notes" runat="server" ID="btnViewNotes" /> 
                </td>
            </tr>
        </table>

    
    </center>
    </div>
    </form>
</body>
</html>
