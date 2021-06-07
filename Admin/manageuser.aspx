<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="manageuser.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="form1" runat="server" Autocomplete="off">
    <br />
   <br />


    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="userid" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." ForeColor="Black" 
        GridLines="Vertical" Height="213px" Width="1118px" CssClass="table table-striped table-borderedtable-hover">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="userid" HeaderText="userid" ReadOnly="True" 
                SortExpression="userid" />
            <asp:BoundField DataField="UserName" HeaderText="UserName" 
                SortExpression="UserName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
            <asp:BoundField DataField="ConfPass" HeaderText="ConfPass" 
                SortExpression="ConfPass" />
            <asp:BoundField DataField="OTP" HeaderText="OTP" SortExpression="OTP" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
             <asp:TemplateField>
                 <ItemTemplate>
                                   <img  src='../profile/<%#Eval("Profile") %>' height="80px" width="50px" />
                                     </ItemTemplate>
                                          </asp:TemplateField>
            <asp:CommandField EditText="Update" HeaderText="pdate" ShowEditButton="True" />
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
        DeleteCommand="DELETE FROM [User_Reg_Mstr] WHERE [userid] = @userid" 
        InsertCommand="INSERT INTO [User_Reg_Mstr] ([UserName], [Email], [Password], [ConfPass], [OTP], [Status], [Profile]) VALUES (@UserName, @Email, @Password, @ConfPass, @OTP, @Status, @Profile)" 
        SelectCommand="SELECT [userid], [UserName], [Email], [Password], [ConfPass], [OTP], [Status], [Profile] FROM [User_Reg_Mstr]" 
        UpdateCommand="UPDATE [User_Reg_Mstr] SET [UserName] = @UserName, [Email] = @Email, [Password] = @Password, [ConfPass] = @ConfPass, [OTP] = @OTP, [Status] = @Status, [Profile] = @Profile WHERE [userid] = @userid">
        <DeleteParameters>
            <asp:Parameter Name="userid" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="ConfPass" Type="String" />
            <asp:Parameter Name="OTP" Type="Decimal" />
            <asp:Parameter Name="Status" Type="Int32" />
            <asp:Parameter Name="Profile" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="UserName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="ConfPass" Type="String" />
            <asp:Parameter Name="OTP" Type="Decimal" />
            <asp:Parameter Name="Status" Type="Int32" />
            <asp:Parameter Name="Profile" Type="String" />
            <asp:Parameter Name="userid" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>


   </form>
</asp:Content>

