<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="byercontact.aspx.cs" Inherits="Admin_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<br />
 <div class="table-responsive">  
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
    CellPadding="3" DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display." ForeColor="Black" 
    GridLines="Vertical" Height="187px" Width="1180px"  CssClass="table table-striped table-borderedtable-hover">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="ContactId" HeaderText="ContactId" ReadOnly="True" 
            SortExpression="ContactId" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Subject" HeaderText="Subject" 
            SortExpression="Subject" />
        <asp:BoundField DataField="MobileNum" HeaderText="MobileNum" 
            SortExpression="MobileNum" />
        <asp:BoundField DataField="Msg" HeaderText="Msg" SortExpression="Msg" />
        <asp:CommandField EditText="Update" HeaderText="Update" ShowEditButton="True" />
        <asp:CommandField EditText="Delete" HeaderText="Delete" 
            ShowDeleteButton="True" />
    </Columns>
    <FooterStyle BackColor="#CCCCCC" />
    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F1F1F1" />
    <SortedAscendingHeaderStyle BackColor="#808080" />
    <SortedDescendingCellStyle BackColor="#CAC9C9" />
    <SortedDescendingHeaderStyle BackColor="#383838" />
</asp:GridView>
</div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    SelectCommand="SELECT [ContactId], [Name], [Email], [Subject], [MobileNum], [Msg] FROM [AgentContact]">
</asp:SqlDataSource>
<br />

</form>
</asp:Content>

