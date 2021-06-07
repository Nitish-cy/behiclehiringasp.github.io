<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Showsellcarrecord.aspx.cs" Inherits="Admin_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." ForeColor="Black" 
        GridLines="Vertical" Height="149px" Width="1270px"  CssClass="table table-striped table-borderedtable-hover">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="Sellid" HeaderText="Sellid" ReadOnly="True" 
                SortExpression="Sellid" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
            <asp:BoundField DataField="Country" HeaderText="Country" 
                SortExpression="Country" />
            <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
            <asp:BoundField DataField="Average" HeaderText="Average" 
                SortExpression="Average" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Fuel" HeaderText="Fuel" SortExpression="Fuel" />
            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
            <asp:BoundField DataField="Adhar" HeaderText="Adhar" SortExpression="Adhar" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
           <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile/<%#Eval("Carimg") %>'height="60px" width="50px"/>
                                           </ItemTemplate>
                                           </asp:TemplateField>
           <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile/<%#Eval("Docimg") %>'height="60px" width="50px"/>
                                           </ItemTemplate>
                                           </asp:TemplateField>
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
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT [Sellid], [Name], [Email], [Phone], [Country], [Model], [Average], [Type], [Fuel], [Year], [Adhar], [Address], [Carimg], [Docimg] FROM [Old_Car_Sell_Mstr]">
    </asp:SqlDataSource>
    </form>


</asp:Content>

