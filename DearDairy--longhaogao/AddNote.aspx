﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNote.aspx.cs" Inherits="AddNote" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rokono | Contact</title>
    <meta charset="utf-8">
    <link type="text/css" rel="stylesheet" href="css/homepage.css" />
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
    <!--[if IE 6]>
    <style>body { behavior: url("styles/ie6-hover-fix.htc"); }</style>
    <script type="text/javascript" src="js/ie6-transparency.js"></script>
    <script>DD_belatedPNG.fix('#contact-form .submit');</script>
    <link type="text/css" rel="stylesheet" href="styles/ie6.css" />
    <![endif]-->
    <!--[if IE 7]><link type="text/css" rel="stylesheet" href="styles/ie7.css" /><![endif]-->
</head>
<body class="page">
    <form id="form1" runat="server">
<div id="wrap">
  <div id="header">
    <h1 id="title" class="hidden"><span id="logo">Dear <span>Diary</span></span></h1>
    <div id="nav">
      <ul class="menu">
        <li><a href="homepage.html">Home</a></li>
        <li><a href="services.html">Notes</a></li>
        <li><a href="portfolio.html">Events</a>
          <!--<ul class="sub-menu">
            <li><a href="project.html">Latest Project</a></li>
            <li><a href="#">Branding</a></li>
            <li><a href="#">Online Marketing</a></li>
            <li><a href="#">Search Engine Optimization</a></li>
            <li><a href="#">Web Design</a></li>
          </ul>-->
        </li>
        <li class="current_page_item"><a href="articles.html">Pictures</a></li>
        <li><a href="contact.html">Profile</a></li>
      </ul>
    </div>
    <!--end nav-->
  </div>
  <!--end header-->
  <div id="main">
  
    <div id="contact-form-container">
    <h3 class="title">Add A Note</h3>
      <form id="contact-form" method="post" action="#">      
        <fieldset>
          <input id="txtTitle" type="text" runat="server" name="Title" value="Title" onFocus="if(this.value=='Title'){this.value=''};" onBlur="if(this.value==''){this.value='Title'};" />
          <input id="txtDate" type="text" runat="server" name="Date" value="Date" onFocus="if(this.value=='Date'){this.value=''};" onBlur="if(this.value==''){this.value='Date'};" />
          <!--textarea id="txtNote" rows="10" cols="50" name="Note" value="Note">Add note here</!--textarea-->
          <asp:TextBox ID="TextBox1" rows="10" cols="50" runat="server" TextMode="MultiLine">Add note here</asp:TextBox>
          <!--input id="form_submit" class="submit" type="submit" name="submit" value="Submit &raquo;" /-->
          <asp:Button ID="btnSubmit1" Text="Submit &raquo;" runat="server" OnClick="btnSubmit"/>
          <div class="hide">
            <label>Do not fill out this field</label>
            <input name="spam_check" type="text" value="" />
          </div>
        </fieldset>
      </form>
    </div>
    <!--end contact-form-container-->
  </div>
  <!--end main-->
</div>
    </form>
</body>
</html>
