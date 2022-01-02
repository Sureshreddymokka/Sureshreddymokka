<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dapplication.aspx.cs" Inherits="Dapplication" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<%@ Register Src="Controls/TitlesDisplay.ascx" TagName="TitlesDisplay" TagPrefix="uc1" %>
<%@ Register Assembly="AjaxControls" Namespace="AjaxControls" TagPrefix="asp1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
   
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat=server>
    <title>Welcome to Online Cosultation</title>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <link href="Styles/Style.css" rel="Stylesheet" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="rform/images/icons/favicon.ico" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="rform1/vendor/bootstrap/css/bootstrap.min.css">
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
          }.navbar {
  position: relative;
  display: flex;
  flex-wrap: wrap; // allow us to do the line break for collapsing content
  align-items: center;
  justify-content: space-between; // space out brand from logo
  padding: $navbar-padding-y $navbar-padding-x;

  // Because flex properties aren't inherited, we need to redeclare these first
  // few properities so that content nested within behave properly.
  > .container,
  > .container-fluid {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: start;
  }
}
      </style>
        <!--[if lt IE 9]>
            <script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>
            <script>window.html5 || document.write('<script src="js/vendor/html5shiv.js"><\/script>')</script>
        <![endif]--></head>
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
    <asp:ScriptManager ID="scriptManager" runat="server"></asp:ScriptManager>
      <style type="text/css">
        #Background
        {
            position: fixed;
            top: 0px;
            bottom: 0px;
            left: 0px;
            right: 0px;
            background-color: Gray;
            filter: alpha(opacity=40);
            opacity: 0.4;
        }
        
        #Progress
        {
            position: fixed;
            top: 10%;
            left: 10px;
            width: 300px;
            height: 50px;
            text-align: center;
            background-color: White;
            border: solid 3px black;
        }
        .modalProgressGreyBackground
        {
            position: fixed;
            top: 0px;
            bottom: 0px;
            left: 0px;
            right: 0px;
            background-color: Gray;
            filter: alpha(opacity=40);
            opacity: 0.4;
        }
        .updateProgress
        {
            border-width: 1px;
            border-style: solid;
            background-color: #FFFFFF;
            position: absolute;
            width: 180px;
            height: 65px;
        }
    </style>
    <asp1:ModalUpdateProgress ID="ModalUpdateProgress12" runat="server" DisplayAfter="0"
        BackgroundCssClass="modalProgressGreyBackground">
        <ProgressTemplate>
            <div class="updateProgress" style="height: 60px; background-image: url(Images/bk.gif);
                width: 221px;">
                <div class="mepprogressposition" style="text-align: center">
                    <br />
                    <img src="Images/indicator.gif" />
                    <span class="updateProgressMessage">Processing...</span>
                </div>
            </div>
        </ProgressTemplate>
    </asp1:ModalUpdateProgress>
    <asp:UpdatePanel ID="upd" runat="server">
        <ContentTemplate>         
	<div class="container-login100" style="width: 100%; background-color: #086684; background-size: 100% 100%;
                    border: 0px solid red;">
                 <div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">				 
 
  <asp:Label ID="lblMessage" runat="server"></asp:Label>
				 
					<div class="wrap-input100 rs1 validate-input" data-validate="Member Name is required">
                    
						 <asp:TextBox ID="txtCustomer" runat="server"  placeholder="Enter  Name" CssClass="input100"></asp:TextBox>
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>
                    <br />

                    <div class="wrap-input100 rs1 validate-input" data-validate="Mobile No is required">
                     <asp:DropDownList ID="ddlCodes" runat="server" Width="100px" Visible=false>
                                            <asp:ListItem Value="93" Text="Afghanistan-(+93)"></asp:ListItem>
                                            <asp:ListItem Value="61" Text="Australia-(+61)"></asp:ListItem>
                                            <asp:ListItem Value="880" Text="Bangladesh-(+880)"></asp:ListItem>
                                            <asp:ListItem Value="852" Text="Hong Kong-(+852)"></asp:ListItem>
                                            <asp:ListItem Value="91"  Selected="True" Text="India-(+91)" ></asp:ListItem>
                                            <asp:ListItem Value="965" Text="Kuwait-(+965)"></asp:ListItem>
                                            <asp:ListItem Value="60" Text="Malaysia-(+60)"></asp:ListItem>
                                            <asp:ListItem Value="977" Text="Nepal-(+977)"></asp:ListItem>
                                            <asp:ListItem Value="64" Text="New Zealand-(+64)"></asp:ListItem>
                                            <asp:ListItem Value="968" Text="Oman-(+968)"></asp:ListItem>
                                            <asp:ListItem Value="92" Text="Pakistan-(+92)"></asp:ListItem>
                                            <asp:ListItem Value="974" Text="Qatar-(+974)"></asp:ListItem>
                                            <asp:ListItem Value="966" Text="Saudi Arabia-(+966)"></asp:ListItem>
                                            <asp:ListItem Value="65" Text="Singapore-(+65)"></asp:ListItem>
                                            <asp:ListItem Value="94" Text="Sri Lanka-(+94)"></asp:ListItem>
                                            <asp:ListItem Value="971" Text="UAE(Dubai)-(+971)"></asp:ListItem>
                                            <asp:ListItem Value="44" Text="United Kingdom-(+44)"></asp:ListItem>
                                            <asp:ListItem Value="1" Text="United States-(+1)"></asp:ListItem>
                                            <asp:ListItem Value="263" Text="Zimbabwe-(+263)"></asp:ListItem>
                                        </asp:DropDownList>

						 <asp:TextBox ID="txtMobileNo" runat="server"  placeholder="Enter Mobile No" CssClass="input100"></asp:TextBox>
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>
                    <br>

                    <div class="wrap-input100 validate-input" data-validate = "Valid Email is required">
                     <asp:TextBox ID="txtSponsor" placeholder="Enter Email ID" runat="server" CssClass="input100" required
                                              ></asp:TextBox>
                                                <span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
                                             
                                         
                                            <asp:Label ID="Label1" runat="server"></asp:Label>

						 

						
						
					</div>
 <br>
					<div class="wrap-input100 rs1 validate-input" data-validate="State is required">
                                   <asp:DropDownList runat="server" ID="ddlState" placeholder="Select State" 
                                       CssClass="input100" ForeColor="Gray" style="border-style: solid;border-width: 0.5px;height:40px;">
                                   <asp:ListItem Text="-Select-" Value="0"></asp:ListItem>
                                   <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"></asp:ListItem>
                                   <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh"></asp:ListItem> 
                                   <asp:ListItem Text="Assam" Value="Assam"></asp:ListItem> 
                                   <asp:ListItem Text="Bihar" Value="Bihar"></asp:ListItem> 
                                   <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh"></asp:ListItem> 
                                   <asp:ListItem Text="Goa" Value="Goa"></asp:ListItem> 
                                   <asp:ListItem Text="Gujarat" Value="Gujarat"></asp:ListItem> 
                                   <asp:ListItem Text="Haryana" Value="Haryana"></asp:ListItem> 
                                   <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh"></asp:ListItem>  
                                   <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir"></asp:ListItem> 
                                   <asp:ListItem Text="Jharkhand" Value="Jharkhand"></asp:ListItem> 
                                   <asp:ListItem Text="Karnataka" Value="Karnataka"></asp:ListItem> 
                                   <asp:ListItem Text="Kerala" Value="Kerala"></asp:ListItem> 
                                   <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh"></asp:ListItem> 
                                   <asp:ListItem Text="Maharashtra" Value="Maharashtra"></asp:ListItem>
                                   <asp:ListItem Text="Manipur" Value="Manipur"></asp:ListItem> 
                                   <asp:ListItem Text="Meghalaya" Value="Meghalaya"></asp:ListItem> 
                                   <asp:ListItem Text="Mizoram" Value="Mizoram"></asp:ListItem> 
                                   <asp:ListItem Text="Nagaland" Value="Nagaland"></asp:ListItem> 
                                   <asp:ListItem Text="Odisha" Value="Odisha"></asp:ListItem> 
                                   <asp:ListItem Text="Punjab" Value="Punjab"></asp:ListItem> 
                                   <asp:ListItem Text="Rajasthan" Value="Rajasthan"></asp:ListItem> 
                                   <asp:ListItem Text="Sikkim" Value="Sikkim"></asp:ListItem>  
                                   <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu"></asp:ListItem> 
                                    <asp:ListItem Text="Telangana" Value="Telangana"></asp:ListItem> 
                                   <asp:ListItem Text="Tripura" Value="Tripura"></asp:ListItem> 
                                   <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh"></asp:ListItem> 
                                   <asp:ListItem Text="Uttarakhand" Value="Uttarakhand"></asp:ListItem> 
                                   <asp:ListItem Text="West Bengal" Value="West Bengal"></asp:ListItem>
                                   </asp:DropDownList>


						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>
                    <br /><div class="wrap-input100 rs1 validate-input" data-validate="City is required">
                    
						 <asp:TextBox ID="txtPinnum" runat="server"  placeholder="Enter City" CssClass="input100"></asp:TextBox>
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>
                 
                    </br>
                    
                    <div class="wrap-input100 rs1 validate-input" data-validate="State is required" style="border-width: 0px;">
                    <asp:CheckBox ID="chkAccept" runat="server" Text=" Accepted the terms and conditions" 
                                            CssClass="input100" Checked="True" style="border-width: 0px;" Enabled="False" />
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>
                    <br />
                    
                    <div class="container-login100-form-btn m-t-20">
                      <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit"
                                            OnClientClick="javascript:return checkFields();" 
                                            CssClass="login100-form-btn" />

						 
					</div>
                    <div class="text-center p-t-45 p-b-4">
						<span class="txt1">
							Forgot
						</span>

						<a href="forgetpwd.aspx" class="txt2 hov1">
							Username / Password?
						</a>
					</div>

					<div class="text-center">
						<span class="txt1">
							Create an account?
						</span>

						<a href="index.aspx" class="txt2 hov1">
							Sign in
						</a>
					</div><div class="text-center">
						<span class="txt1">
							Go to homepage?
						</span>

						<a href="http://www.Online Cosultation.CO.IN" class="txt2 hov1">
						Online Cosultation
						</a>
					</div>
					 
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript" language="JavaScript">

	    function checkFields() {

	       



	        if (document.getElementById("<%=txtCustomer.ClientID%>").value == "Customer Name" || document.getElementById("<%=txtCustomer.ClientID%>").value == "") {
	            alert("Enter Firstname")
	            document.getElementById("<%=txtCustomer.ClientID%>").focus()
	            return false;
	        }
  if (document.getElementById("<%=txtMobileNo.ClientID%>").value == "") {
	            alert("Enter Mobile Number")
	            document.getElementById("<%=txtMobileNo.ClientID%>").focus()
	            return false;
	        }
	        if (document.getElementById("<%=txtSponsor.ClientID%>").value == "" || document.getElementById("<%=txtSponsor.ClientID%>").value == "") {
	            alert("Enter your sponsor Id")
	            document.getElementById("<%=txtSponsor.ClientID%>").focus()
	            return false;
	        }


	        if (document.getElementById("<%=ddlState.ClientID%>").value == "0") {
	            alert("Select State")
	            document.getElementById("<%=ddlState.ClientID%>").focus()
	            return false;
	        }

	      
	        if (document.getElementById("<%=txtPinnum.ClientID%>").value == "Pin Number" || document.getElementById("<%=txtPinnum.ClientID%>").value == "") {
	            alert("Please Enter Pin Number")
	            document.getElementById("<%=txtPinnum.ClientID%>").focus()
	            return false;
	        }
	        
	        




	        if (!document.getElementById("<%=chkAccept.ClientID%>").checked) {
	            alert("You have to accept the terms and conditions by clicking the checkbox")
	            document.getElementById("<%=chkAccept.ClientID%>").focus()
	            return false;
	        }



	    }


        </script>

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

      
                 
                                    </form> <footer class="footer">
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
 