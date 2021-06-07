<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="verifydriver.aspx.cs" Inherits="Admin_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
     <div class="page-header">
							<h1>
								VERYFIED DREVERS PAGE
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
								</small>
							</h1>
						</div>
    <br />
   <br />
    <div class="table-responsive">  
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="DriverId" DataSourceID="SqlDataSource1" 
        EmptyDataText="There are no data records to display." 
            CssClass="table table-striped table-borderedtable-hover" Width="1781px" 
            BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
            CellPadding="3" ForeColor="Black" GridLines="Vertical"  >
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="DriverId" HeaderText="DriverId" ReadOnly="True" 
                SortExpression="DriverId" InsertVisible="False" />
            <asp:BoundField DataField="DriverName" HeaderText="DriverName" 
                SortExpression="DriverName" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Password" HeaderText="Password" 
                SortExpression="Password" />
            <asp:BoundField DataField="ConPassword" HeaderText="ConPassword" 
                SortExpression="ConPassword" />
            <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" 
                SortExpression="MobileNo" />
            <asp:BoundField DataField="AdharNumber" HeaderText="AdharNumber" 
                SortExpression="AdharNumber" />
            <asp:BoundField DataField="Address" HeaderText="Address" 
                SortExpression="Address" />
            <asp:BoundField DataField="Country" HeaderText="Country" 
                SortExpression="Country" />
            <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
            <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            <asp:BoundField DataField="OTP" HeaderText="OTP" SortExpression="OTP" />
            <asp:BoundField DataField="Status" HeaderText="Status" 
                SortExpression="Status" />
          <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile2/<%#Eval("Prifile") %>' height="80px" width="50px" />
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
     </div>  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Driver_Reg_Mstr] WHERE [DriverId] = @DriverId" 
        InsertCommand="INSERT INTO [Driver_Reg_Mstr] ([DriverName], [Email], [Password], [ConPassword], [MobileNo], [AdharNumber], [Address], [Country], [State], [City], [OTP], [Status], [Prifile]) VALUES (@DriverName, @Email, @Password, @ConPassword, @MobileNo, @AdharNumber, @Address, @Country, @State, @City, @OTP, @Status, @Prifile)" 
        SelectCommand="SELECT [DriverId], [DriverName], [Email], [Password], [ConPassword], [MobileNo], [AdharNumber], [Address], [Country], [State], [City], [OTP], [Status], [Prifile] FROM [Driver_Reg_Mstr] where Status=1" 
        
        UpdateCommand="UPDATE [Driver_Reg_Mstr] SET [DriverName] = @DriverName, [Email] = @Email, [Password] = @Password, [ConPassword] = @ConPassword, [MobileNo] = @MobileNo, [AdharNumber] = @AdharNumber, [Address] = @Address, [Country] = @Country, [State] = @State, [City] = @City, [OTP] = @OTP, [Status] = @Status, [Prifile] = @Prifile WHERE [DriverId] = @DriverId">
        <DeleteParameters>
            <asp:Parameter Name="DriverId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="DriverName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="ConPassword" Type="String" />
            <asp:Parameter Name="MobileNo" Type="Decimal" />
            <asp:Parameter Name="AdharNumber" Type="Decimal" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="OTP" Type="Decimal" />
            <asp:Parameter Name="Status" Type="Int32" />
            <asp:Parameter Name="Prifile" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="DriverName" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="ConPassword" Type="String" />
            <asp:Parameter Name="MobileNo" Type="Decimal" />
            <asp:Parameter Name="AdharNumber" Type="Decimal" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Country" Type="String" />
            <asp:Parameter Name="State" Type="String" />
            <asp:Parameter Name="City" Type="String" />
            <asp:Parameter Name="OTP" Type="Decimal" />
            <asp:Parameter Name="Status" Type="Int32" />
            <asp:Parameter Name="Prifile" Type="String" />
            <asp:Parameter Name="DriverId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
   
    </form>
</asp:Content>

