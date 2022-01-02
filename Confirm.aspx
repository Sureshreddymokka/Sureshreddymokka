<%@ Page Language="C#" AutoEventWireup="true" Inherits="ViewRender.ConfirmViewRender"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Welcome to Online Cosultation</title>
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
                      <iframe align="top" frameborder="0" height="1" name="f1" scrolling="no" src="http://www.vnssms.in/quicksms/api.php?username=maxbulksms&password=123456789&to=<%=strCustomerPhoneNo%>&from=BNPLOY&message=<%=strSMSMessage%>"></iframe>
                      </font></td>
                  </tr>
     </table>
      <%} %>
        <table border="0" cellpadding="0" cellspacing="0" width="69%" height="912">
            <tbody>
                <tr>
                    <td height="189" bgcolor="#FFFFFF" width="100%">
                        <div align="CENTER">
                            <blockquote>
                                </blockquote>
                        </div>
                        <blockquote>
                            <p align="CENTER">
                                <strong><font color="#FF0000" size="3" face="Verdana, Arial, Helvetica, sans-serif">
                                    Online Cosultation </font><br>
                                </strong>------------------------------------------------------------------------------------------<br>
                            </p>
                        </blockquote>
                    </td>
                    <td width="0%" height="189" bgcolor="#FFFFFF">
                       
                    </td>
                </tr>
                <tr bgcolor="#FFFFFF">
                    <td colspan="2" height="2" align="right">
                       
                       <asp:ImageButton ID="btnPrint" runat="server" OnClientClick="javascript:return fnPrint();" />
                    </td>
                </tr>
                <tr>
                    <td width="100%" height="20" valign="top" bgcolor="#FFFFFF">
                        <div align="center">
                            <table width="599" border="0" align="center" cellpadding="0" cellspacing="2" style="width: 582px;
                                height: 489px">
                                <tbody>
                                    <tr>
                                        <td width="595" height="20">
                                            <div align="center">
                                                <strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Customer Confirmation
                                                    Letter</font></strong></div>
                                            <div align="center">
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="20" align="left">
                                            <blockquote>
                                                <p>
                                                    <strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">To,<br />
                                                    <asp:Label ID="lblCustName" runat="server"></asp:Label>
                                                    </font></strong></p>
                                            </blockquote>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="20" align="left">
                                            <blockquote>
                                                <p>
                                                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">Dear Customer,</font></p>
                                            </blockquote>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height="20" align="left">
                                            <blockquote>
                                                <p>
                                                    <font size="2" face="Verdana, Arial, Helvetica, sans-serif">Congratulations !!!</font></p>
                                            </blockquote>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                            <table width="434" border="0" align="center" cellpadding="0" cellspacing="1">
                                <tr>
                                    <td width="142" align="left">
                                        <font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>
                                            <b>Customer</b></strong></font> <font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                                <strong>No.</strong></font>
                                    </td>
                                    <td width="289" align="left">
                                        <font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>
                                            : <asp:Label ID="lblCustomerNo" runat="server"></asp:Label></strong></font> <font size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                        </font>
                                       
                                    </td>                                   
                                </tr>
                                <tr>
                                    <td width="142" align="left">
                                        <font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>
                                            <b><strong><b>Customer</b></strong> Name&nbsp;</b> </strong></font>
                                    </td>
                                    <td width="289" align="left">
                                        <font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>
                                            : <asp:Label ID="lblCustomerName" runat="server"></asp:Label> </strong></font>
                                            
                                    </td>
                                </tr>
                                <tr>
                                    <td width="142" align="left">
                                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong><font color="#000000">
                                            Sponsor <strong>No.</strong></font></strong></font>
                                    </td>
                                    <td width="289" align="left">
                                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>: <asp:Label ID="lblSponsorNo" runat="server"></asp:Label><font color="#000000"><strong>
                                        </strong></font></strong></font>
                                       
                                    </td>
                                </tr>
                                <tr>
                                    <td width="142" align="left">
                                        <font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong><font color="#000000">
                                            Left </font></strong><font color="#000000">/<strong> Right</strong></font></font>
                                    </td>
                                    <td width="289" align="left">
                                        <strong><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                            : <asp:Label ID="lblLeg" runat="server"></asp:Label> <strong></strong></font></strong>
                                            
                                    </td>
                                </tr>
                                <tr>
                                    <td width="142" align="left">
                                        <strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Date of Entry</font></strong>
                                    </td>
                                    <td width="289" align="left">
                                        <strong><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                            <strong>: <asp:Label ID="lblDOJ" runat="server"></asp:Label><strong><strong> </strong></strong></strong></font></strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="142" height="1" align="left">
                                        <strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Password</font></strong>
                                    </td>
                                    <td width="289" height="1" align="left">
                                        <strong><font color="#000000" size="2" face="Verdana, Arial, Helvetica, sans-serif">
                                            <strong>: <asp:Label ID="lblPassword" runat="server"></asp:Label><strong> </strong><font size="1">( You can change password ) </font></strong>
                                        </font></strong>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="1" colspan="2">
                                        <div align="left">

                                            <script type="text/vbscript">
document.write("Today's date is " & date())
document.write(" The time is " & time())
                                            </script>

                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FFFFFF" height="20" width="100%">
                        <div align="left">
                            <font size="2" face="Verdana, Arial, Helvetica, sans-serif">Note: System 
                            generated report does not require signature.</font></div>
                    </td>
                </tr>
                <tr>
                    <td valign="top" bgcolor="#FFFFFF" height="20" width="100%">
                       
                    </td>
                </tr>
                  <%--<tr>
                <td>
               <a href="javascript:history.go(-1)">Go Back</a>
                </td>
                </tr>--%>
            </tbody>
        </table>
    
 <script type="text/javascript" language="JavaScript">
    function fnPrint()
    {
        window.print();
	}
        </script>
    </div>
    </form>
</body>
</html>
