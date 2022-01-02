<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="DeletedAppointments.aspx.cs" Inherits="DeletedAppointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="conten1" Runat="Server"><center><span style="color: #333399; font-size: medium"><strong>Cancelled Appointments</strong></span>
<asp:GridView ID="GridView1" runat="server" BackColor="White" DataKeyNames="id"
        BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
        EnableModelValidation="True" AutoGenerateColumns="False" 
        onrowdeleting="GridView1_RowDeleting" Width="600px">
        <Columns>     <asp:TemplateField HeaderText="Slno">
        <ItemTemplate>
             <%#Container.DataItemIndex+1 %>
        </ItemTemplate>
    </asp:TemplateField>

            <asp:BoundField DataField="id" Visible="False" />
            <asp:BoundField DataField="dt_booked" HeaderText="Date Booked" />
            <asp:BoundField DataField="slottime" HeaderText="Slot time" />
            <asp:BoundField DataField="Name" HeaderText="Doctor Name" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
              
             
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
    </asp:GridView></center>
 
</asp:Content>

