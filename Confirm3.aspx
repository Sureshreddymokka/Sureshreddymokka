<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Confirm3.aspx.cs" Inherits="Confirm3" %>


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
</head>
<body>
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

     <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                  <tr> 
                    <td><font color="#FFFFFF"> 
                      
                      </font></td>
                  </tr>
     </table>
      <%} %>

      <table border="0" width="75%" id="table1">
	<tr>
		<td align="center"><img src=images/wl1.png border=0></td>
	</tr>
	<tr>
		<td align="right"><b><asp:Label ID="lblDOJ" runat="server"></asp:Label></b></td>
	</tr>
	<tr>
		<td class="style3"><b style="text-align: left">Dear <asp:Label ID="lblCustName" runat="server"></asp:Label>(<asp:Label ID="lblCustomerNo" runat="server"></asp:Label>),<br />
            </b></td>
	</tr>
	<tr>
		<td class="style1">On behalf of the entire <b> Online Cosultation</b>, I’d like to take this opportunity to welcome you as a new member. We are thrilled to have with us.
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

    
    
 <script type="text/javascript" language="JavaScript">
     function fnPrint() {
         window.print();
     }
        </script>
    </div>
    </form>
</body>
</html>
