<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:lightgray">
    <form id="form1" runat="server">
        
    <div id="section">
        <center>
            <h2 style="background-color:purple;color:white">Dear Dairy Project</h2>
        <asp:Label runat="server" Text="Username" ID="lblUsername" Width="100px"></asp:Label><asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br /><br />
        <asp:Label runat="server" Text="Password" ID="lblPassword" Width="100px"></asp:Label><asp:TextBox  ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox> <br /><br />
        <asp:Button runat="server" ID="btnSubmit" Text="Submit" OnClick="btnSubmitClick" />&nbsp;&nbsp;<asp:Button runat="server" ID="btnGotoRegister" Text="Go to register" PostBackUrl="~/Register.aspx" />
          <br /><br />  <asp:Label ID="lblErrorHandling" runat="server" ForeColor="Red" Visible="false"></asp:Label>
    </center>
    </div>
    </form>
</body>
</html>
