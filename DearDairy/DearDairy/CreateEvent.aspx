<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateEvent.aspx.cs" Inherits="CreateEvent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Event Page</title>

<link type="text/css" rel="stylesheet" href="css/homepage.css" />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
</head>
<body class="page">
<div id="wrap">
  <div id="header">
    <h1 id="title" class="hidden"><span id="logo">Dear <span>Diary</span></span></h1>
    <div id="nav">
      <ul class="menu">
        <li><a href="NewHomePage.aspx">Home</a></li>
        <li><a href="services.html">Notes</a></li>
        <li  class="current_page_item"><a href="createEvent.aspx">Events</a>
          <!--<ul class="sub-menu">
            <li><a href="project.html">Latest Project</a></li>
            <li><a href="#">Branding</a></li>
            <li><a href="#">Online Marketing</a></li>
            <li><a href="#">Search Engine Optimization</a></li>
            <li><a href="#">Web Design</a></li>
          </ul>-->
        </li>
        <li><a href="articles.html">Pictures</a></li>
        <li><a href="contact.html">Profile</a></li>
      </ul>
    </div>
    <!--end nav-->
  </div>
  <!--end header-->
  <div id="main">
      <form id="contactform" runat="server">  
   <div id="contact-details">
      <h3 class="title">Select Event Type</h3>
      <asp:DropDownList ID="drpEvent" runat="server" CssClass="wrapper-dropdown">
          <asp:ListItem> Select an Event</asp:ListItem>
          <asp:ListItem> Birthday</asp:ListItem>
          <asp:ListItem> Anniversary</asp:ListItem>
          <asp:ListItem>Meeting</asp:ListItem>
          <asp:ListItem>Other</asp:ListItem>
      </asp:DropDownList>
       
    </div>
          
    <!--end contact-details-->
    <div id="contact-form-container">
    <h3 class="title">Creat An Event</h3>
            
        <fieldset>
          <input id="form_name" runat="server" type="text" name="Title" value="Title" onFocus="if(this.value=='Title'){this.value=''};" onBlur="if(this.value==''){this.value='Title'};" /><br />
          <input id="form_date" runat="server" type="text" name="Date" value="Date" onFocus="if(this.value=='Date'){this.value=''};" onBlur="if(this.value==''){this.value='Date'};" /><br />
          <input id="form_location" runat="server" type="text" name="Location" value="Location" onFocus="if(this.value=='Location'){this.value=''};" onBlur="if(this.value==''){this.value='Location'};" />          <br />
                  
            <asp:TextBox TextMode="MultiLine" ID="txtDescription" runat="server"></asp:TextBox><br /><br />
          
            <asp:Button ID="btnSubmitEvent" CssClass="submit" Text="Submit" OnClick="btnSubmitEvents" runat="server"></asp:Button>
          <div class="hide">
            <label>Do not fill out this field</label>
            <input name="spam_check" type="text" value="" />
          </div>
            <asp:Label ID="lblErrorStatement" runat="server" Text="" ForeColor="Red" Visible="false"></asp:Label>
        </fieldset>
      </form>
    </div>
    <!--end contact-form-container-->
  </div>
</div>
</body>
</html>
