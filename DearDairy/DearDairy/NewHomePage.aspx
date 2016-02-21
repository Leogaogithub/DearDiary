<%@ Page Language="C#" AutoEventWireup="true" CodeFile="NewHomePage.aspx.cs" Inherits="NewHomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Dear Diary</title>

<link type="text/css" rel="stylesheet" href="css/homepage.css" />
<!-- Google Fonts -->
<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css' />
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<!--[if IE 6]>
<style>body { behavior: url("styles/ie6-hover-fix.htc"); }</style>
<script type="text/javascript" src="js/ie6-transparency.js"></script>
<script>DD_belatedPNG.fix('.circle, .read-more, .blue-bullets li, #sidebar .sidebar-button');</script>
<link type="text/css" rel="stylesheet" href="styles/ie6.css" />
<![endif]-->
<!--[if IE 7]><link type="text/css" rel="stylesheet" href="styles/ie7.css" /><![endif]-->
</head>
<body class="page">
<div id="wrap">

  <div id="header">
    <h1 id="title" class="hidden"><span id="logo">Dear <span>Diary</span></span></h1>
    <div id="nav">
      <ul class="menu">
        <li class="current_page_item"><a href="homepage.html">Home</a></li>
        <!--<li><a href="Birthdays.html">Birthdays</a></li>-->
        <li><a href="Events.html">Events</a>
         <!-- <ul class="sub-menu">
            <li><a href="project.html">Latest Project</a></li>
            <li><a href="#">Branding</a></li>
            <li><a href="#">Online Marketing</a></li>
            <li><a href="#">Search Engine Optimization</a></li>
            <li><a href="#">Web Design</a></li>
          </ul>-->
        </li>
        <li><a href="Pictures.html">Pictures</a></li>
        <li><a href="Profile.html">Notes</a></li>
          <li><a href="Index.aspx">Sign Out</a></li>
      </ul>
    </div>
    <!--end nav-->
  </div>
  <!--end header-->  
  <div id="banner">
  </div>
  <div id="featured-section">
    
    <div id="circles" >  
    <!--<a href="AddBirthday.html">
      <div class="red-circle circle first"  >        
        <h3><em>ADD BIRTHDAY</em></h3>
        <p>[ADD OVERVIEW]</p>            
      </div>
      </a>-->
        
      <!--end red-circle-->
      <a href="CreateEvent.aspx">
      <div class="pink-circle circle">
        <h3><em>CREAT EVENT</em></h3>
        <p></p>
      </div>
      </a>
      <!--end red-circle-->
      <a href="AddPicture.html">
      <div class="orange-circle circle">
        <h3><em>ADD PICTURE</em></h3>
        <p></p>
      </div>
      </a>
      <!--end red-circle-->
      <a href="AddNotes.aspx">
      <div class="yellow-circle circle">
        <h3><em>ADD NOTES</em></h3>
        <p></p>
      </div>
      </a>
      <!--end red-circle-->
    </div>
    <!--end circles-->
  </div>
  <!--end featured-section-->

</div>
<!--end wrap-->
</body>
</html>
