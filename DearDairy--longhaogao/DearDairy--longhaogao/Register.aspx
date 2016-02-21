<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <center>
            <h2 style="background-color:purple;color:white">Register</h2>
        <asp:Label runat="server" Text="First Name" ID="lblFirstName" Width="100px"></asp:Label><asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox><br /><br />
        <asp:Label runat="server" Text="Last Name" ID="lblLastName" Width="100px"></asp:Label><asp:TextBox ID="txtLastName" runat="server"></asp:TextBox><br /><br />
             <asp:Label runat="server" Text="User Name" ID="lblUserName" Width="100px"></asp:Label><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br /><br />
        <asp:Label runat="server" Text="Password" ID="lblPassword" Width="100px"></asp:Label><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br /><br />
             <asp:Button runat="server" ID="btnBacktoHome" Text="Home" PostBackUrl="~/Default.aspx" />
        <asp:Button runat="server" ID="btnRegister" Text="Submit" OnClick="btnRegisterClick" />
    </center>
    
    </div>
    </form>
</body>
</html>
