<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DearDiary-login</title>

	<!-- Google Fonts -->
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css' />

	
	<!-- Custom Stylesheet -->
	<link rel="stylesheet" href="css/index.css" />

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
	<link rel="shortcut icon" type="image/png" href="images/logo4.png"/>
</head>
<body>
    <div class="container">
		<div class="top">
			<h1 id="title" class="hidden"><span id="logo">Dear <span>Diary</span></span></h1>
			
		</div>
		<form id="Form1" runat="server">
	<div class="form">
      
      <ul class="tab-group">
         <li class="tab active"><a href="#login">Log In</a></li>
          <li class="tab"><a href="#signup">Sign Up</a></li>
      </ul>
      
      <div class="tab-content">
          <div id="login">   
          <h1>Welcome Back!</h1>
          
          
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" id="txtloginemail" runat="server" name="loginemail"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" id="txtloginPass" runat="server" name="loginPass"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <asp:Button ID="btnLogin" Text="Login" runat="server" OnClick="btnLoginClick"/>
          
          <asp:Label ID="lblErrorHandling" runat="server" ForeColor="Red" Visible="false"></asp:Label>

        </div>
        <div id="signup">   
          <h1>Sign Up for Free</h1>
          
          
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                First Name<span class="req">*</span>
              </label>
              <input type="text" id="txtFirstName" runat="server" name="FirstName" />
            </div>
        
            <div class="field-wrap">
              <label>
                Last Name<span class="req">*</span>
              </label>
              <input type="text" id="txtLastName" runat="server" name="LastName"/>
            </div>
          </div>

          <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" id="txtEmail" runat="server" name="Email"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Set A Password<span class="req">*</span>
            </label>
            <input type="password" id="txtPassword" runat="server" name="Pass"/>
          </div>
          
          <asp:Button ID="btnRegister" Text="Get Started" runat="server" OnClick="btnRegisterClick"/>
          
          

        </div>
        
        
        
      </div><!-- tab-content -->
      
	</div> <!-- /form -->
            </form>
        </div>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

 <script src="js/index.js"></script>
</body>
</html>
