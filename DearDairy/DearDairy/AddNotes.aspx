﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddNotes.aspx.cs" Inherits="AddNotes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Add Notes</title>

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
          <input id="form_name" type="text" name="Title" value="Title" onFocus="if(this.value=='Title'){this.value=''};" onBlur="if(this.value==''){this.value='Title'};" />
          <input id="form_email" type="text" name="Date" value="Date" onFocus="if(this.value=='Date'){this.value=''};" onBlur="if(this.value==''){this.value='Date'};" />
          <textarea id="form_message" rows="10" cols="50" name="Note" value="Note">Add note here</textarea>
          <input id="form_submit" class="submit" type="submit" name="submit" value="Submit &raquo;" />
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
</body>
</html>
