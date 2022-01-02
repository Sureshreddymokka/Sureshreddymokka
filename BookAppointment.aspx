<%@ Page Title="Book Appointment" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="BookAppointment.aspx.cs" Inherits="BookAppointment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="conten1" Runat="Server">
    <SCRIPT language="JavaScript1.2">
function openwindow()
{
window.open("http://www.javascript-coder.com",
	"mywindow","location=1,status=1,scrollbars=1,width=100,height=100");
}
</SCRIPT>
<center>
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
     <br /><br />
     <span style="color: #000066"><strong>Select Booking Date:</strong></span>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
        BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
        Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
        onselectionchanged="Calendar1_SelectionChanged" ShowGridLines="True" 
        Width="220px">
        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
        <OtherMonthDayStyle ForeColor="#CC9966" />
        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
        <SelectorStyle BackColor="#FFCC66" />
        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
            ForeColor="#FFFFCC" />
        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
    </asp:Calendar>
    <br />
     <asp:Label ID="Label3" runat="server" Text=""></asp:Label> 
    <asp:Literal ID="Literal1" runat="server"></asp:Literal></center>
</asp:Content>

