<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Admin_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
    CellPadding="3" DataKeyNames="Contactid" DataSourceID="SqlDataSource1" 
    EmptyDataText="There are no data records to display." ForeColor="Black" 
    GridLines="Vertical" Height="140px" Width="1108px" CssClass="table table-striped table-borderedtable-hover">
    <AlternatingRowStyle BackColor="#CCCCCC" />
    <Columns>
        <asp:BoundField DataField="Contactid" HeaderText="Contactid" ReadOnly="True" 
            SortExpression="Contactid" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="Subject" HeaderText="Subject" 
            SortExpression="Subject" />
        <asp:BoundField DataField="Phonno" HeaderText="Phonno" 
            SortExpression="Phonno" />
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
    DeleteCommand="DELETE FROM [ContactUs] WHERE [Contactid] = @Contactid" 
    InsertCommand="INSERT INTO [ContactUs] ([Name], [Email], [Subject], [Phonno], [Msg]) VALUES (@Name, @Email, @Subject, @Phonno, @Msg)" 
    SelectCommand="SELECT [Contactid], [Name], [Email], [Subject], [Phonno], [Msg] FROM [ContactUs]" 
    UpdateCommand="UPDATE [ContactUs] SET [Name] = @Name, [Email] = @Email, [Subject] = @Subject, [Phonno] = @Phonno, [Msg] = @Msg WHERE [Contactid] = @Contactid">
    <DeleteParameters>
        <asp:Parameter Name="Contactid" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Subject" Type="String" />
        <asp:Parameter Name="Phonno" Type="Decimal" />
        <asp:Parameter Name="Msg" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Email" Type="String" />
        <asp:Parameter Name="Subject" Type="String" />
        <asp:Parameter Name="Phonno" Type="Decimal" />
        <asp:Parameter Name="Msg" Type="String" />
        <asp:Parameter Name="Contactid" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<br />
<br />

</form>
</asp:Content>

