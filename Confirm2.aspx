<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirm2.aspx.cs" Inherits="Confirm2" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Welcome to Online Cosultation</title>
    <style type="text/css">
        .style1
        {
            text-align: justify;
        }
        .style2
        {
            font-weight: bold;
            text-align: left;
        }
        .style3
        {
            text-align: left;
        }
    </style>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		
		 
		
		  
    <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
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
      </style>
        <!--[if lt IE 9]>
            <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
            <script>window.html5 || document.write('<script src="js/vendor/html5shiv.js"><\/script>')</script>
        <![endif]-->
</head>
<body><div id="preloader">
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
                            <ul class="nav nav-pills navbar-right">  <li><a href="index.html" >Home</a></li><li><a href="#">|</a></li>
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
                  
                </div><!-- /.container -->
            </nav>
        </header>
    <form id="form1" runat="server">

    <div align="center">
       <%
            if (strCustomerPhoneNo != "")
            {
                var Internet = "KUSHIE";
                var userName = "raghusurisetty";
                var password = "12345678";
                var track = 1;
            
             %>

     
      <%} %>

      <table border="0" width="75%" id="table1">
	<tr>
		<td align="center"><img src=images/wl1.png border=0></td>
	</tr>
	<tr>
		<td align="right"><b><asp:Label ID="lblDOJ" runat="server"></asp:Label></b></td>
	</tr>
	<tr>
		<td class="style3"><b style="text-align: left">Dear <asp:Label ID="lblCustName" runat="server"></asp:Label><br /><br />Username:<asp:Label ID="lblCustomerNo" runat="server"></asp:Label>,<br />Password:<asp:Label ID="lblpwd" runat="server"></asp:Label>
            </b></td>
	</tr>
	<tr>
		<td class="style1">On behalf of the entire <b> Online Cosultation</b> , I’d like to take this opportunity to welcome you as a new member. We are thrilled to have with us.
		<br>
		<br>
		At <b> Online Cosultation</b>, we provide ourselves on offering our members responsive, 
		courteous and professional services. We look forward to meeting all of 
		residential, commercial and industrial needs in each area. <br>
		<br>
		We are providing  as well as extra income opportunity 
		for your family needs. As we began to serve our services we ask that you 
		show us grace as we provide the type of excellent service that you would 
		expect from yours. If you have any constructive feedback or suggestions 
		that you feel would help us to improve our service. Please call our 
		office or mail.</td>
	</tr>
	<tr>
		<td>&nbsp;</td>
	</tr>
	<tr>
		<td class="style2">Warm regards, <br>
		 Online Cosultation </td>
	</tr>
	<tr>
		<td><asp:ImageButton ID="btnPrint" runat="server" OnClientClick="javascript:return fnPrint();" ImageUrl="~/images/print.png" /></td>
	</tr>
</table>
<br /><br />
    
    
 <script type="text/javascript" language="JavaScript">
     function fnPrint() {
         window.print();
     }
        </script>
    </div>
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