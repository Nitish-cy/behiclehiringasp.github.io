<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="carspecification.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat="server" Autocomplete="off">
  <div class="page-header">
							<h1>
								CAR SPECIFICATION PAGE
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
								</small>
							</h1>
						</div>
									<div class="form-group">
										<%--<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Specification_ID </label>--%>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Brand_Id" class="col-xs-10 col-sm-5" />--%>
                                           <%-- <asp:TextBox ID="txtspid" runat="server" placeholder="Specification_ID" class="col-xs-10 col-sm-5"></asp:TextBox>--%>
										</div>
									</div>

									
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">ModelName</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlmodelid" runat="server" class="col-xs-10 col-sm-5" 
                                                DataSourceID="SqlDataSource2" DataTextField="Modelname" 
                                                DataValueField="Modelid">
                                            </asp:DropDownList>
										    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [moderl_mstr]"></asp:SqlDataSource>
										    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [moderl_mstr]"></asp:SqlDataSource>
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Virson_Id</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtvirid" runat="server" placeholder="Car_VirsionId"  class="col-xs-10 col-sm-5"></asp:TextBox>
										</div>
									</div>
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Height</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtheight" runat="server" placeholder="Height"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Length</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtlength" runat="server" placeholder="length"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Width</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtwidth" runat="server" placeholder="Width"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Door</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtdoor" runat="server" placeholder="Door"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Seating_capacity</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtseating" runat="server" placeholder="Seating_capacity"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Fuel_Capacity</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtfuel" runat="server" placeholder="Fuel_Capacity"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                     
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<%--<button class="btn btn-info" type="button">
												<i class="ace-icon fa fa-check bigger-110"></i>
												Submit
											</button>
--%>
                                            <asp:Button ID="btnsubmit" runat="server" Text="Button"  class="btn btn-info" onclick="btnsubmit_Click" 
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
                                          <div class="table-responsive"> 
									    <asp:GridView ID="GridView1" 
      runat="server" AutoGenerateColumns="False" 
                                            BackColor="#DEBA84" 
      BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                                            CellPadding="3" CellSpacing="2" DataKeyNames="specification_id" 
                                            DataSourceID="SqlDataSource3" 
                                            
      EmptyDataText="There are no data records to display." Height="16px" 
                                            Width="914px" CssClass="table table-striped table-borderedtable-hover">
                                            <Columns>
                                                <asp:BoundField DataField="specification_id" HeaderText="specification_id" 
                                                    ReadOnly="True" SortExpression="specification_id" />
                                                <asp:BoundField DataField="model_id" HeaderText="model_id" 
                                                    SortExpression="model_id" />
                                                <asp:BoundField DataField="virsion_id" HeaderText="virsion_id" 
                                                    SortExpression="virsion_id" />
                                                <asp:BoundField DataField="height" HeaderText="height" 
                                                    SortExpression="height" />
                                                <asp:BoundField DataField="length" HeaderText="length" 
                                                    SortExpression="length" />
                                                <asp:BoundField DataField="width" HeaderText="width" SortExpression="width" />
                                                <asp:BoundField DataField="door" HeaderText="door" SortExpression="door" />
                                                <asp:BoundField DataField="seating_capacity" HeaderText="seating_capacity" 
                                                    SortExpression="seating_capacity" />
                                                <asp:BoundField DataField="fuel_capacity" HeaderText="fuel_capacity" 
                                                    SortExpression="fuel_capacity" />
                                                <asp:CommandField EditText="Update" HeaderText="Update" ShowEditButton="True" />
                                                <asp:CommandField EditText="Delete" HeaderText="Delete" 
                                                    ShowDeleteButton="True" />
                                            </Columns>
                                            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                                            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                                            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                                            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#FFF1D4" />
                                            <SortedAscendingHeaderStyle BackColor="#B95C30" />
                                            <SortedDescendingCellStyle BackColor="#F1E5CE" />
                                            <SortedDescendingHeaderStyle BackColor="#93451F" />
                                        </asp:GridView>
                                        </div>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                            DeleteCommand="DELETE FROM [specification_mstr] WHERE [specification_id] = @specification_id" 
                                            InsertCommand="INSERT INTO [specification_mstr] ([model_id], [virsion_id], [height], [length], [width], [door], [seating_capacity], [fuel_capacity]) VALUES (@model_id, @virsion_id, @height, @length, @width, @door, @seating_capacity, @fuel_capacity)" 
                                            SelectCommand="SELECT [specification_id], [model_id], [virsion_id], [height], [length], [width], [door], [seating_capacity], [fuel_capacity] FROM [specification_mstr]" 
                                            UpdateCommand="UPDATE [specification_mstr] SET  [virsion_id] = @virsion_id, [height] = @height, [length] = @length, [width] = @width, [door] = @door, [seating_capacity] = @seating_capacity, [fuel_capacity] = @fuel_capacity WHERE [specification_id] = @specification_id">
                                            <DeleteParameters>
                                                <asp:Parameter Name="specification_id" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters>
                                                <asp:Parameter Name="model_id" Type="Int32" />
                                                <asp:Parameter Name="virsion_id" Type="Int32" />
                                                <asp:Parameter Name="height" Type="Int32" />
                                                <asp:Parameter Name="length" Type="Int32" />
                                                <asp:Parameter Name="width" Type="Int32" />
                                                <asp:Parameter Name="door" Type="Int32" />
                                                <asp:Parameter Name="seating_capacity" Type="Int32" />
                                                <asp:Parameter Name="fuel_capacity" Type="Int32" />
                                            </InsertParameters>
                                            <UpdateParameters>
                                                <asp:Parameter Name="virsion_id" Type="Int32" />
                                                <asp:Parameter Name="height" Type="Int32" />
                                                <asp:Parameter Name="length" Type="Int32" />
                                                <asp:Parameter Name="width" Type="Int32" />
                                                <asp:Parameter Name="door" Type="Int32" />
                                                <asp:Parameter Name="seating_capacity" Type="Int32" />
                                                <asp:Parameter Name="fuel_capacity" Type="Int32" />
                                                <asp:Parameter Name="specification_id" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
						
                                    <br />
                                    <br />

                                </form>
</asp:Content>

