<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Feature.aspx.cs" Inherits="Admin_Default2" %>

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
                                            <asp:DropDownList ID="ddlbrand" runat="server" DataSourceID="SqlDataSource1" 
                                                DataTextField="brandname" DataValueField="brandname" class="col-xs-10 col-sm-5"  >
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
                                           
                                            <asp:DropDownList ID="ddlmodel" runat="server" DataSourceID="SqlDataSource2" 
                                                DataTextField="Modelname" DataValueField="Modelname" class="col-xs-10 col-sm-5"  >
                                            </asp:DropDownList>
										   
										    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [moderl_mstr]"></asp:SqlDataSource>
										   
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Air Condition</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlac" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>
									</div>
                                   <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Climate_Control</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlclimate" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Cd Player</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlcd" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Power Steering</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlpower" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Power Window</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlpowerwin" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Centeral Locking</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlcenteral" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Steering Adjustment</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlsteering" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Electrically Adjustable Driver Seat</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlelectrically" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Steering Mounted Control</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlmounted" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Rear Ac Vent</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlvent" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Remote Controlled Boot</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlboot" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Rear Wiper</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlwiper" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Elecrtically Adjustable Mirror</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlmirror" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Anti Lock Breaking System</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddllock" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Air Bag</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlairbag" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Parking Sensor</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlparking" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
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
                                     <div class="table-responsive">  
                                    <asp:GridView ID="GridView1" runat="server" 
      AutoGenerateColumns="False" DataKeyNames="FeatureID" 
      DataSourceID="SqlDataSource3" 
      EmptyDataText="There are no data records to display."  CssClass="table table-striped table-borderedtable-hover" 
                                             BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                             CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="FeatureID" HeaderText="FeatureID" ReadOnly="True" 
                                                SortExpression="FeatureID" />
                                            <asp:BoundField DataField="BrandId" HeaderText="BrandId" 
                                                SortExpression="BrandId" />
                                            <asp:BoundField DataField="ModelId" HeaderText="ModelId" 
                                                SortExpression="ModelId" />
                                            <asp:BoundField DataField="Ac" HeaderText="Ac" SortExpression="Ac" />
                                            <asp:BoundField DataField="Climate_Control" HeaderText="Climate_Control" 
                                                SortExpression="Climate_Control" />
                                            <asp:BoundField DataField="Cd_Player" HeaderText="Cd_Player" 
                                                SortExpression="Cd_Player" />
                                            <asp:BoundField DataField="Power_Steering" HeaderText="Power_Steering" 
                                                SortExpression="Power_Steering" />
                                            <asp:BoundField DataField="Power_Window" HeaderText="Power_Window" 
                                                SortExpression="Power_Window" />
                                            <asp:BoundField DataField="Centeral_locking" HeaderText="Centeral_locking" 
                                                SortExpression="Centeral_locking" />
                                            <asp:BoundField DataField="Steering_Adjustment" 
                                                HeaderText="Steering_Adjustment" SortExpression="Steering_Adjustment" />
                                            <asp:BoundField DataField="Electrically_Adjustable_Driver_Seat" 
                                                HeaderText="Electrically_Adjustable_Driver_Seat" 
                                                SortExpression="Electrically_Adjustable_Driver_Seat" />
                                            <asp:BoundField DataField="Steering_Mounted_Control" 
                                                HeaderText="Steering_Mounted_Control" 
                                                SortExpression="Steering_Mounted_Control" />
                                            <asp:BoundField DataField="Rear_Ac_Vent" HeaderText="Rear_Ac_Vent" 
                                                SortExpression="Rear_Ac_Vent" />
                                            <asp:BoundField DataField="Remote_Controlled_Boot" 
                                                HeaderText="Remote_Controlled_Boot" SortExpression="Remote_Controlled_Boot" />
                                            <asp:BoundField DataField="Rear_Wiper" HeaderText="Rear_Wiper" 
                                                SortExpression="Rear_Wiper" />
                                            <asp:BoundField DataField="Seather_Seatelectrically_Electricaly_Adjustable_Mirror" 
                                                HeaderText="Seather_Seatelectrically_Electricaly_Adjustable_Mirror" 
                                                SortExpression="Seather_Seatelectrically_Electricaly_Adjustable_Mirror" />
                                            <asp:BoundField DataField="Anti_Lock_Breaking_System" 
                                                HeaderText="Anti_Lock_Breaking_System" 
                                                SortExpression="Anti_Lock_Breaking_System" />
                                            <asp:BoundField DataField="Air_Bag" HeaderText="Air_Bag" 
                                                SortExpression="Air_Bag" />
                                            <asp:BoundField DataField="Parking_Sensor" HeaderText="Parking_Sensor" 
                                                SortExpression="Parking_Sensor" />
                                            <asp:CommandField EditText="Delete" HeaderText="Delete" 
                                                ShowDeleteButton="True" />
                                            <asp:CommandField EditText="Update" HeaderText="Update" ShowEditButton="True" />
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
  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      DeleteCommand="DELETE FROM [Feature_Mstr] WHERE [FeatureID] = @FeatureID" 
      InsertCommand="INSERT INTO [Feature_Mstr] ([BrandId], [ModelId], [Ac], [Climate_Control], [Cd_Player], [Power_Steering], [Power_Window], [Centeral_locking], [Steering_Adjustment], [Electrically_Adjustable_Driver_Seat], [Steering_Mounted_Control], [Rear_Ac_Vent], [Remote_Controlled_Boot], [Rear_Wiper], [Seather_Seatelectrically_Electricaly_Adjustable_Mirror], [Anti_Lock__Breaking_System], [Air_Bag], [Parking_Sensor]) VALUES (@BrandId, @ModelId, @Ac, @Climate_Control, @Cd_Player, @Power_Steering, @Power_Window, @Centeral_locking, @Steering_Adjustment, @Electrically_Adjustable_Driver_Seat, @Steering_Mounted_Control, @Rear_Ac_Vent, @Remote_Controlled_Boot, @Rear_Wiper, @Seather_Seatelectrically_Electricaly_Adjustable_Mirror, @Anti_Lock_Breaking_System, @Air_Bag, @Parking_Sensor)" 
      SelectCommand="SELECT [FeatureID], [BrandId], [ModelId], [Ac], [Climate_Control], [Cd_Player], [Power_Steering], [Power_Window], [Centeral_locking], [Steering_Adjustment], [Electrically_Adjustable_Driver_Seat], [Steering_Mounted_Control], [Rear_Ac_Vent], [Remote_Controlled_Boot], [Rear_Wiper], [Seather_Seatelectrically_Electricaly_Adjustable_Mirror], [Anti_Lock__Breaking_System] AS Anti_Lock_Breaking_System, [Air_Bag], [Parking_Sensor] FROM [Feature_Mstr]" 
      UpdateCommand="UPDATE [Feature_Mstr] SET [BrandId] = @BrandId, [ModelId] = @ModelId, [Ac] = @Ac, [Climate_Control] = @Climate_Control, [Cd_Player] = @Cd_Player, [Power_Steering] = @Power_Steering, [Power_Window] = @Power_Window, [Centeral_locking] = @Centeral_locking, [Steering_Adjustment] = @Steering_Adjustment, [Electrically_Adjustable_Driver_Seat] = @Electrically_Adjustable_Driver_Seat, [Steering_Mounted_Control] = @Steering_Mounted_Control, [Rear_Ac_Vent] = @Rear_Ac_Vent, [Remote_Controlled_Boot] = @Remote_Controlled_Boot, [Rear_Wiper] = @Rear_Wiper, [Seather_Seatelectrically_Electricaly_Adjustable_Mirror] = @Seather_Seatelectrically_Electricaly_Adjustable_Mirror, [Anti_Lock__Breaking_System] = @Anti_Lock_Breaking_System, [Air_Bag] = @Air_Bag, [Parking_Sensor] = @Parking_Sensor WHERE [FeatureID] = @FeatureID">
      <DeleteParameters>
          <asp:Parameter Name="FeatureID" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="BrandId" Type="String" />
          <asp:Parameter Name="ModelId" Type="String" />
          <asp:Parameter Name="Ac" Type="String" />
          <asp:Parameter Name="Climate_Control" Type="String" />
          <asp:Parameter Name="Cd_Player" Type="String" />
          <asp:Parameter Name="Power_Steering" Type="String" />
          <asp:Parameter Name="Power_Window" Type="String" />
          <asp:Parameter Name="Centeral_locking" Type="String" />
          <asp:Parameter Name="Steering_Adjustment" Type="String" />
          <asp:Parameter Name="Electrically_Adjustable_Driver_Seat" Type="String" />
          <asp:Parameter Name="Steering_Mounted_Control" Type="String" />
          <asp:Parameter Name="Rear_Ac_Vent" Type="String" />
          <asp:Parameter Name="Remote_Controlled_Boot" Type="String" />
          <asp:Parameter Name="Rear_Wiper" Type="String" />
          <asp:Parameter Name="Seather_Seatelectrically_Electricaly_Adjustable_Mirror" 
              Type="String" />
          <asp:Parameter Name="Anti_Lock_Breaking_System" Type="String" />
          <asp:Parameter Name="Air_Bag" Type="String" />
          <asp:Parameter Name="Parking_Sensor" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="BrandId" Type="String" />
          <asp:Parameter Name="ModelId" Type="String" />
          <asp:Parameter Name="Ac" Type="String" />
          <asp:Parameter Name="Climate_Control" Type="String" />
          <asp:Parameter Name="Cd_Player" Type="String" />
          <asp:Parameter Name="Power_Steering" Type="String" />
          <asp:Parameter Name="Power_Window" Type="String" />
          <asp:Parameter Name="Centeral_locking" Type="String" />
          <asp:Parameter Name="Steering_Adjustment" Type="String" />
          <asp:Parameter Name="Electrically_Adjustable_Driver_Seat" Type="String" />
          <asp:Parameter Name="Steering_Mounted_Control" Type="String" />
          <asp:Parameter Name="Rear_Ac_Vent" Type="String" />
          <asp:Parameter Name="Remote_Controlled_Boot" Type="String" />
          <asp:Parameter Name="Rear_Wiper" Type="String" />
          <asp:Parameter Name="Seather_Seatelectrically_Electricaly_Adjustable_Mirror" 
              Type="String" />
          <asp:Parameter Name="Anti_Lock_Breaking_System" Type="String" />
          <asp:Parameter Name="Air_Bag" Type="String" />
          <asp:Parameter Name="Parking_Sensor" Type="String" />
          <asp:Parameter Name="FeatureID" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
                                    <br />

                                </form>
</asp:Content>

