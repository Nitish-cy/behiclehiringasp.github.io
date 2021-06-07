<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="cardriver.aspx.cs" Inherits="Admin_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat="server" Autocomplete="off">
  <div class="page-header">
							<h1>
								CARS FEATURES PAGE
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
								</small>
							</h1>
						</div>
								<div>
                                <div>
                                </div>
                                </div>	

									
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">BrandName</label>

										<div class="col-sm-9" >
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlbrand" runat="server" class="col-xs-10 col-sm-5" 
                                                AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="brandname" 
                                                DataValueField="brandid" >
                                                
                                            </asp:DropDownList>
										    
										    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [brand_mstr]"></asp:SqlDataSource>
										    
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">ModelName</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           <asp:DropDownList ID="ddlmodel" runat="server" class="col-xs-10 col-sm-5" 
                                                AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Modelname" 
                                                DataValueField="Modelid"  >
                                                
                                             
                                     
                                            </asp:DropDownList>
                                         
										 
										    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [moderl_mstr] WHERE ([Brandid] = @Brandid)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="ddlbrand" Name="Brandid" 
                                                        PropertyName="SelectedValue" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                         
										 
										</div>
									</div>
                                   

							
                                      <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Driver Name</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlcity" runat="server" class="col-xs-10 col-sm-5" 
                                                AutoPostBack="True" DataSourceID="SqlDataSource8" DataTextField="DriverName" 
                                                DataValueField="DriverId"  >
                                                
                                            </asp:DropDownList>
										    <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [Driver_Reg_Mstr]"></asp:SqlDataSource>
										</div>

									</div>
                                   
                                    <div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<%--<button class="btn btn-info" type="button">
												<i class="ace-icon fa fa-check bigger-110"></i>
												Submit
											</button>
--%>
                                            <asp:Button ID="Button1" runat="server" Text="Submit"  class="btn btn-info" onclick="Button1_Click" 
                                                 />
											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>
										</div>
									</div>
                                    <br />
                                    <br />
            <br />
                                   <%--  <div class="table-responsive">  CssClass="table table-striped table-borderedtable-hover"--%> 
                                   

                                   <br />
                                   <asp:GridView ID="GridView3" runat="server" 
      AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
      BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="cid" 
      DataSourceID="SqlDataSource3" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Height="213px" Width="1288px" CssClass="table table-striped table-borderedtable-hover">
                                       <AlternatingRowStyle BackColor="#CCCCCC" />
                                       <Columns>
                                           <asp:BoundField DataField="cid" HeaderText="cid" ReadOnly="True" 
                                               SortExpression="cid" />
                                           <asp:BoundField DataField="bname" HeaderText="bname" SortExpression="bname" />
                                           <asp:BoundField DataField="mname" HeaderText="mname" SortExpression="mname" />
                                           <asp:BoundField DataField="drivername" HeaderText="drivername" 
                                               SortExpression="drivername" />
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
  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      DeleteCommand="DELETE FROM [cardriver] WHERE [cid] = @cid" 
      InsertCommand="INSERT INTO [cardriver] ([bname], [mname], [drivername]) VALUES (@bname, @mname, @drivername)" 
      SelectCommand="SELECT [cid], [bname], [mname], [drivername] FROM [cardriver]" 
      UpdateCommand="UPDATE [cardriver] SET [bname] = @bname, [mname] = @mname, [drivername] = @drivername WHERE [cid] = @cid">
      <DeleteParameters>
          <asp:Parameter Name="cid" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="bname" Type="String" />
          <asp:Parameter Name="mname" Type="String" />
          <asp:Parameter Name="drivername" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="bname" Type="String" />
          <asp:Parameter Name="mname" Type="String" />
          <asp:Parameter Name="drivername" Type="String" />
          <asp:Parameter Name="cid" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
                                   <br />
                                   <br />
                                   <br />
                                   <br />

                                   <h3>View Driver Detail</h3>
  <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
      BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
      CellPadding="3" DataKeyNames="DriverId" DataSourceID="SqlDataSource4" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Height="141px" Width="1378px"  CssClass="table table-striped table-borderedtable-hover" >
      <AlternatingRowStyle BackColor="#CCCCCC" />
      <Columns>
          <asp:BoundField DataField="DriverId" HeaderText="DriverId" ReadOnly="True" 
              SortExpression="DriverId" />
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
                                           <img  src='../profile2/<%#Eval("Prifile") %>' height="30px" width="50px" />
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
  <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      DeleteCommand="DELETE FROM [Driver_Reg_Mstr] WHERE [DriverId] = @DriverId" 
      InsertCommand="INSERT INTO [Driver_Reg_Mstr] ([DriverName], [Email], [Password], [ConPassword], [MobileNo], [AdharNumber], [Address], [Country], [State], [City], [OTP], [Status], [Prifile]) VALUES (@DriverName, @Email, @Password, @ConPassword, @MobileNo, @AdharNumber, @Address, @Country, @State, @City, @OTP, @Status, @Prifile)" 
      SelectCommand="SELECT [DriverId], [DriverName], [Email], [Password], [ConPassword], [MobileNo], [AdharNumber], [Address], [Country], [State], [City], [OTP], [Status], [Prifile] FROM [Driver_Reg_Mstr]" 
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
  <br />
                                   <br />

                                </form>
</asp:Content>

