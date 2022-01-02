<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat=server>
    <title>Welcome to Online Cosultation</title>
   
        <link rel="stylesheet" href="css/style.css">
      <style type="text/css">
          .auto-style1 {
              width: 100%;
          }

          .auto-style2 {
              color: #CC6600;
          }

          .auto-style3 {
              color: #0066CC;
          }

          .auto-style4 {
              color: #FF00FF;
          }

          .auto-style5 {
              color: #006600;
          }

          .auto-style6 {
              color: #990000;
          }
      </style>
      <style type="text/css">
          .auto-style1 {
              width: 100%;
          }

          .auto-style2 {
              color: #CC6600;
          }

          .auto-style3 {
              color: #0066CC;
          }

          .auto-style4 {
              color: #FF00FF;
          }

          .auto-style5 {
              color: #006600;
          }

          .auto-style6 {
              color: #990000;
          }

          .auto-style7 {
              background-color: #339966;
              height: 25px;
              color: yellow;
          }

          .auto-style8 {
              background-color: #FFD7AE;
              text-align: center;
          }

          .auto-style8a {
              background-color: #FFD7AE;
              text-align: left;
          }
          .auto-style9 {
              background-color: #339966;
              height: 25px;
              font-weight: bold;
              text-align: center;
              color: yellow;
          }
      </style> <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link href="Styles/Style.css" rel="Stylesheet" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="rform/images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="rform/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="rform/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="rform/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="rform/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="rform/vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="rform/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="rform/vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="rform/css/util.css">
    <link rel="stylesheet" type="text/css" href="rform/css/main.css">
    <!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="rform1/vendor/bootstrap/css/bootstrap.min.css">
   
        <!--[if lt IE 9]>
            <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
            <script>window.html5 || document.write('<script src="js/vendor/html5shiv.js"><\/script>')</script>
        <![endif]--></head>
<body>    <div id="preloader">
            <div class="preloader-area">
            	<div class="preloader-box">
            		<div class="preloader"></div>
            	</div>
            </div>
        </div>

        
        <section class="header-top-section">
            <div class="container">
                <div class="row">
                 <div  class="col-md-6"><div class="header-top-menu"><ul class="nav nav-pills navbar-left">                                 
                               <li><a href="#" >MOB:89779 XXXXX</a></li>                                                            </ul></div>
                 </div>
                    <div  class="col-md-6">
                        <div class="header-top-menu">
                            <ul class="nav nav-pills navbar-right"> <li><a href="index.html" >Home</a></li><li><a href="#">|</a></li>
                                <li><a href="index.aspx" >Login</a></li><li><a href="#">|</a></li><li><a href="dapplication.aspx" >Register</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <header class="header-section">
            <nav class="navbar navbar-default">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#"><img src="images/logo1.png" /></a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                           
                            <li><a href="#about">About Us</a></li>
                            <li><a href="#Service">Services</a></li>
                            <li><a href="#Opportunity">Our Doctors</a></li>
 <li><a href="#Terms">Testimonnials</a></li>
                             
                            
                            <li><a href="#Contact">Contact</a></li>
                        </ul>
                        
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container -->
            </nav>
        </header>

          <form id="form1" runat="server">
    
    <asp:ScriptManager ID="scriptManager" runat="server">
    </asp:ScriptManager>
    <!-- ImageReady Slices (index.psd) -->
    <script src="scripts/wz_tooltip.js" type="text/javascript"></script>
    <script language="JavaScript" type="text/javascript">
        function checkFields() {
            var username = document.getElementById('<%=txtUsername.ClientID %>');
            var password = document.getElementById('<%=txtPassword.ClientID %>');
            if (username.value == "") {
                alert("Enter Id")
                username.focus()
                return false;
            }


            fieldName = username;
            fieldValue = username.value;
            fieldLength = username.value.length;

            var err01 = "Please enter the ID.";
            var err02 = "Please enter numbers only for the ID.";

            if (fieldValue == "") {
                alert(err01);
                fieldName.focus();
                return false;

            }
            if (password.value == "") {
                alert("Enter password")
                password.focus()
                return false;
            }
        }

    </script>
    <asp:UpdatePanel ID="upd" runat="server">
        <ContentTemplate>
            <div class="limiter">
                <div class="container-login100" style="width: 100%; background-color: #086684; background-size: 100% 100%;
                    border: 0px solid red;">
                    <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
                        
                        <asp:Label ID="lblDtTime" runat="server" CssClass="style50" ForeColor="Black" Visible="False"></asp:Label>
                        <p align="center">
                            <asp:Label ID="lblMessage" runat="server" CssClass="style55"></asp:Label></p>
                        <div class="wrap-input100 validate-input" data-validate="Valid membership no is required">
                            <asp:TextBox ID="txtUsername" placeholder="Membership no" CssClass="input100" runat="server"></asp:TextBox>
                            <span class="focus-input100-1"></span><span class="focus-input100-2"></span>
                        </div>
                        <br>
                        <div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
                            <asp:TextBox ID="txtPassword" CssClass="input100" TextMode="Password" runat="server"
                                placeholder="Password"></asp:TextBox>
                            <span class="focus-input100-1"></span><span class="focus-input100-2"></span>
                        </div>
                        <div class="container-login100-form-btn m-t-20">
                            <asp:Button ID="imgSubmit" runat="server" OnClientClick="javascript:return checkFields();"
                                Text="Sign in" CssClass="login100-form-btn" onclick="imgSubmit_Click" /><br />

                        </div>
                        <div class="text-center p-t-45 p-b-4">
                            <span class="txt1">Forgot </span><a href="forgetpwd.aspx" class="txt2 hov1">Username
                                / Password? </a>
                        </div>
                        <div class="text-center">
                            <span class="txt1">Create an account? </span><a href="Dapplication.aspx" class="txt2 hov1">
                                Register </a>
                        </div>
                        <div class="text-center">
                            <span class="txt1">Go to homepage? </span><a href="http://Online Cosultation.co.in/"
                                class="txt2 hov1">Online Cosultation </a>
                        </div>
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/daterangepicker/moment.min.js"></script>
    <script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>
    </form> 

    <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <p class="center">All Rights Reserved &copy; <a href="#" target="_blank" >Online Cosultation</a></p>
                    </div>
                </div>
            </div> 
        </footer>

        <!-- JQUERY -->
        <script src="js/vendor/jquery-1.11.2.min.js"></script>
        <script src="js/vendor/bootstrap.min.js"></script>
        <script src="js/isotope.pkgd.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/wow.min.js"></script>
        <script src="js/custom.js"></script>
</body>
</html>
