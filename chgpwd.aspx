<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="chgpwd.aspx.cs" Inherits="chgpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="conten1" Runat="Server">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
            <tr align="left">
                <td class="tdheading" style="text-align: center">
                    <span style="color: #FF0066"><strong>Change Admin Password</strong></span>
                </td>
                
            </tr>
            <tr>
            <td>
  <table  border="0" cellpadding="0" cellspacing="0" align="center">
        <tbody>
           
                            <tr>
                    <td align="left" class="label" colspan="3">
                        <asp:Label ID="lblErrorMessage" runat="server" CssClass="style55"></asp:Label>
                    </td>
                </tr>
            <tr>
                <td align="left" class="label" style="width: 45%; text-align: right;">
                    <span><b>Enter Old Username<span style="color: #FF0000; width: 36%; border-left-color: #ACA899;
                        border-right-color: #C0C0C0; border-top-color: #ACA899; border-bottom-color: #C0C0C0">*</span></b></span>
                </td>
                <td style="width: 9px">
                    &nbsp;</td>
                <td align="left">
                    <asp:TextBox ID="txtoldusername" runat="server" CssClass="inputtextbox" required></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" class="label" style="width: 45%; text-align: right;">
                    <span><b>Enter Old Password<span style="color: #FF0000; width: 36%; border-left-color: #ACA899;
                        border-right-color: #C0C0C0; border-top-color: #ACA899; border-bottom-color: #C0C0C0">*</span></b></span>
                </td>
                <td style="width: 9px">
                    :
                </td>
                <td align="left">
                    <asp:TextBox ID="txtOldPassword" required runat="server" CssClass="inputtextbox" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="1" align="left" class="label" 
                    style="width: 45%; text-align: right;">
                    <span class="style19"><font color="#000000"><strong>Enter New Pasword&nbsp; <span
                        style="color: #FF0000; width: 36%; border-left-color: #ACA899; border-right-color: #C0C0C0;
                        border-top-color: #ACA899; border-bottom-color: #C0C0C0">*</span></strong></font></span>
                </td>
                <td class="style24" style="width: 9px">
                    :
                </td>
                <td align="left">
                    <asp:TextBox ID="txtNewPassword" runat="server" CssClass="inputtextbox" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td height="1" align="left" class="label" 
                    style="width: 45%; text-align: right;">
                    <span class="style22" style="font-weight: bold">Confirm Password</span> <span style="color: #FF0000;
                        width: 36%; border-left-color: #ACA899; border-right-color: #C0C0C0; border-top-color: #ACA899;
                        border-bottom-color: #C0C0C0">*</span>
                </td>
                <td class="style24" style="width: 9px">
                    :
                </td>
                <td align="left">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="inputtextbox" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="left" class="label" style="width: 45%; text-align: right;">
                   
                </td>
                <td class="style24" style="width: 9px">
                   
                </td>
                <td align="left" class="style23">
                    <asp:Button ID="btnUpdate" runat="server" Text="Update" 
                        OnClientClick="javascript:return checkFields();" OnClick="btnUpdate_Click" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </tbody>
    </table>
</td></tr></table>
    <script type="text/javascript" language="JavaScript">

        function checkFields() {

            if (document.getElementById("<%=txtOldPassword.ClientID%>").value == "") {
                alert("Please Enter Old Password")
                document.getElementById("<%=txtOldPassword.ClientID%>").focus()
                return false;
            }

            if (document.getElementById("<%=txtNewPassword.ClientID%>").value == "") {
                alert("Please Enter New Password")
                document.getElementById("<%=txtNewPassword.ClientID%>").focus()
                return false;
            }

            if (document.getElementById("<%=txtConfirmPassword.ClientID%>").value == "") {
                alert("Please Enter Confirm Password")
                document.getElementById("<%=txtConfirmPassword.ClientID%>").focus()
                return false;
            }


            if (document.getElementById("<%=txtConfirmPassword.ClientID%>").value != document.getElementById("<%=txtNewPassword.ClientID%>").value) {
                alert("New and Confirm Passwords are mismatch")
                document.getElementById("<%=txtConfirmPassword.ClientID%>").focus()
                return false;
            }



        }
    </script></asp:Content>

