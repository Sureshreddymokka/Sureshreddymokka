<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="BookAppointment.aspx.cs" Inherits="BookAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="conten1" Runat="Server">

    <table border="1" cellpadding="5" cellspacing="5">
        <tr>
            <td>
                Doctor Name</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label></td>
        </tr>
        <tr>
            <td>
                Available Timings</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text=""></asp:Label> </td>
        </tr>
    </table>
     <asp:Label ID="Label3" runat="server" Text=""></asp:Label> 
    <br />
    <asp:Literal ID="Literal1" runat="server"></asp:Literal>
</asp:Content>

