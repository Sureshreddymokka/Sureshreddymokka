<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="SearchDoctors.aspx.cs" Inherits="SearchDoctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="conten1" Runat="Server">

    <table cellpadding="5" cellspacing="5" width="100%" border=0>
        <tr>
            <td width="50%">
                Enter Disease Name: 
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1"
        runat="server" Text="Search" onclick="Button1_Click" /></td>
            <td align="left" width="50%">
                 Select Doctor: 
                <asp:DropDownList ID="DropDownList1" runat="server">
                </asp:DropDownList>
                <asp:Button ID="Button2" runat="server" Text="Go" onclick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" EnableModelValidation="True" Font-Size="13px" Width="90%" 
                    EmptyDataText="No Data found">
                    <Columns>
                        <asp:BoundField DataField="name" HeaderText="Doctor Name" /><asp:BoundField DataField="diseasename" HeaderText="Disease Name" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile No" />
                        <asp:BoundField DataField="Address" HeaderText="City" />
                        <asp:HyperLinkField
                    DataNavigateUrlFields="id"
                    DataNavigateUrlFormatString="~/bookAppointment.aspx?ID={0}" Text="Book Appointment"
                    >
            <ItemStyle ForeColor="#333399" />
            </asp:HyperLinkField>
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                </asp:GridView>
            </td>
        </tr>
    </table>


</asp:Content>

