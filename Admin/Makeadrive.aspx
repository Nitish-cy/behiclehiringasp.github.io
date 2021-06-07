<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Makeadrive.aspx.cs" Inherits="Admin_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
    CellPadding="3" DataKeyNames="DriveId" DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display." ForeColor="Black" 
    GridLines="Vertical" Height="10px" Width="1143px" 
        CssClass="table table-striped table-borderedtable-hover">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="DriveId" HeaderText="DriveId" ReadOnly="True" 
            SortExpression="DriveId" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
        <asp:BoundField DataField="Mobileno" HeaderText="Mobileno" 
            SortExpression="Mobileno" />
        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
        <asp:BoundField DataField="JourTime" HeaderText="JourTime" 
            SortExpression="JourTime" />
        <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        <asp:BoundField DataField="Message" HeaderText="Message" 
            SortExpression="Message" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [Drive_mstr] WHERE [DriveId] = @DriveId" 
    InsertCommand="INSERT INTO [Drive_mstr] ([Name], [Email], [Time], [Mobileno], [Date], [JourTime], [Brand], [Model], [Price], [Message]) VALUES (@Name, @Email, @Time, @Mobileno, @Date, @JourTime, @Brand, @Model, @Price, @Message)" 
    SelectCommand="SELECT [DriveId], [Name], [Email], [Time], [Mobileno], [Date], [JourTime], [Brand], [Model], [Price], [Message] FROM [Drive_mstr]" 
    UpdateCommand="UPDATE [Drive_mstr] SET [Name] = @Name, [Email] = @Email, [Time] = @Time, [Mobileno] = @Mobileno, [Date] = @Date, [JourTime] = @JourTime, [Brand] = @Brand, [Model] = @Model, [Price] = @Price, [Message] = @Message WHERE [DriveId] = @DriveId">
    <DeleteParameters>
        <asp:Parameter Name="DriveId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Time" Type="String" />
        <asp:Parameter Name="Mobileno" Type="Decimal" />
        <asp:Parameter Name="Date" Type="String" />
        <asp:Parameter DbType="Time" Name="JourTime" />
        <asp:Parameter Name="Brand" Type="String" />
        <asp:Parameter Name="Model" Type="String" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="Message" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Time" Type="String" />
        <asp:Parameter Name="Mobileno" Type="Decimal" />
        <asp:Parameter Name="Date" Type="String" />
        <asp:Parameter DbType="Time" Name="JourTime" />
        <asp:Parameter Name="Brand" Type="String" />
        <asp:Parameter Name="Model" Type="String" />
        <asp:Parameter Name="Price" Type="Decimal" />
        <asp:Parameter Name="Message" Type="String" />
        <asp:Parameter Name="DriveId" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<br />

</form>
</asp:Content>

