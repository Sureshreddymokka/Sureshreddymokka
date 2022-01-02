<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true"
    CodeFile="dashboard.aspx.cs" Inherits="dashboard" %>

<%@ Register Src="Controls/TitlesDisplay.ascx" TagName="TitlesDisplay" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="conten1" runat="server">
    <style type="text/css">
        .contentdisplay3
        {
            border: 1px solid #ECF4FF;
            background-color: #fbfbff;
            text-align: left;
            color: #4b4b4b;
            font-size: 11px;
            font-weight: normal;
            font-family: verdana, arial, helvetica, sans-serif;
            text-decoration: none;
            width: 650px;
        }
        .style5
        {
            font-weight: bold;
            text-align: center;
            color: #FFFFCC;
            font-size: small;
        }
        .style6
        {
            font-weight: bold;
            text-align: center;
            color: #990033;
            font-size: small;
        }
        .style9
        {
            font-size: small;
        }
    </style>
    <div class="row">
        <div class="col">
             <br />
        </div>
    </div>
    
     
    <div class="row">
        <div class="col-sm-6">
            <table class="table table-bordered" style="border: 1px solid #800000; background-color: #d9edf7;">
                <tbody>
                    <tr align="left">
                        <td colspan="3" bgcolor="#6600FF">
                            <b><font color="#fff">&nbsp; View Profile</font> </b>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="border: 1px solid #800000;">
                            Username.
                        </td>
                        <td style="border: 1px solid #800000;">
                            :
                        </td>
                        <td align="left" style="border: 1px solid #800000;">
                            <asp:Label ID="lblMemberID" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="border: 1px solid #800000;">
                            Name
                        </td>
                        <td style="border: 1px solid #800000;">
                            :
                        </td>
                        <td align="left" style="border: 1px solid #800000;">
                            <asp:Label ID="lblMemdberName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr style="border: 1px solid #800000;">
                        <td align="left" style="border: 1px solid #800000;">
                            Mobile number</td>
                        <td style="border: 1px solid #800000;">
                            :</td>
                        <td align="left" style="border: 1px solid #800000;">
                            <asp:Label ID="lblMemdberName0" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr style="border: 1px solid #800000;">
                        <td align="left" style="border: 1px solid #800000;">
                            Date of Joining
                        </td>
                        <td style="border: 1px solid #800000;">
                            :
                        </td>
                        <td align="left" style="border: 1px solid #800000;">
                            <asp:Label ID="lblDateofJoining" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="border: 1px solid #800000;">
                            State
                        </td>
                        <td style="border: 1px solid #800000;">
                            :
                        </td>
                        <td align="left" style="border: 1px solid #800000;">
                            <asp:Label ID="lblSponsorID" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="border: 1px solid #800000;">
                            City
                        </td>
                        <td style="border: 1px solid #800000;">
                            :
                        </td>
                        <td align="left" style="border: 1px solid #800000;">
                            <asp:Label ID="lblSponsorName" runat="server"></asp:Label><asp:Label ID="lblBplusActivated"
                                Visible="false" runat="server"></asp:Label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <div class="col-sm-6">
           
        </div>
    </div>
     </asp:Content>
