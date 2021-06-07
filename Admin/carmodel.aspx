<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="carmodel.aspx.cs" Inherits="Admin_Default3" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form id="Form1" class="form-horizontal" role="form" runat="server" Autocomplete="off">
  <div class="page-header">
							<h1>
								CAR MODEL PAGE
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
								</small>
							</h1>
						</div>
									<div class="form-group">
										<%--<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> CarModel_ID </label>--%>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Brand_Id" class="col-xs-10 col-sm-5" />--%>
                                            <%--<asp:TextBox ID="txtid" runat="server" placeholder="CarModel_ID" class="col-xs-10 col-sm-5"></asp:TextBox>--%>
										</div>
									</div>

									
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">BrandName</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlbrandid" runat="server" class="col-xs-10 col-sm-5"  
                                                placeholder="BrandId" DataSourceID="SqlDataSource1" DataTextField="brandname" 
                                                DataValueField="brandid">
                                            </asp:DropDownList>
										    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [brand_mstr]"></asp:SqlDataSource>
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Car ModelName</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtbname" runat="server" placeholder="Car_ModelName"  class="col-xs-10 col-sm-5"></asp:TextBox>
										</div>
									</div>
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Price</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtprice" runat="server" placeholder="Price"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Model Year</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtmyear" runat="server" placeholder="M_Year"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Transmission</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										<%--  <asp:TextBox ID="txttransmiss" runat="server" placeholder="Transmission"  class="col-xs-10 col-sm-5"></asp:TextBox>
	--%>
                                            <asp:DropDownList ID="ddltrans" runat="server"  class="col-xs-10 col-sm-5">
                                                <asp:ListItem>automatic</asp:ListItem>
                                                <asp:ListItem>manual</asp:ListItem>
                                            </asp:DropDownList>
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Average</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtaverage" runat="server" placeholder="Average"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Fuel_Type</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										 <asp:DropDownList ID="ddlfuel" runat="server"  class="col-xs-10 col-sm-5">
                                                <asp:ListItem>Petrol</asp:ListItem>
                                                <asp:ListItem>diesel</asp:ListItem>
                                                <asp:ListItem>CNG</asp:ListItem>
                                            </asp:DropDownList>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">No_Of_Gears</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtgear" runat="server" placeholder="No_Of_Gears"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                     <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">CarPhoto</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <%--<asp:TextBox ID="TextBox1" runat="server" placeholder="Average"  class="col-xs-10 col-sm-5"></asp:TextBox>--%>
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
										</div>
									</div>
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<%--<button class="btn btn-info" type="button">
												<i class="ace-icon fa fa-check bigger-110"></i>
												Submit
											</button>
--%>
                                            <asp:Button ID="Button1" runat="server" Text="Button"  class="btn btn-info" onclick="Button1_Click" 
                                                 />
											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>
										</div>
									</div>
                                 
                                   <%--<asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile/<%#Eval("Carphoto") %>' />
                                           </ItemTemplate>--%>
                                 <%--  <div class="table-responsive">--%>
                                   
                                   
                                   <asp:GridView ID="GridView1" runat="server" 
      AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
      BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
      DataSourceID="SqlDataSource2" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Height="156px" Width="1355px"   CssClass="table table-striped table-borderedtable-hover">
                                       <AlternatingRowStyle BackColor="#CCCCCC" />
                                       <Columns>
                                           <asp:BoundField DataField="Modelid" HeaderText="Modelid" ReadOnly="True" 
                                               SortExpression="Modelid" />
                                           <asp:BoundField DataField="Brandid" HeaderText="Brandid" 
                                               SortExpression="Brandid" />
                                           <asp:BoundField DataField="Modelname" HeaderText="Modelname" 
                                               SortExpression="Modelname" />
                                           <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                           <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                                           <asp:BoundField DataField="Transmission" HeaderText="Transmission" 
                                               SortExpression="Transmission" />
                                           <asp:BoundField DataField="Average" HeaderText="Average" 
                                               SortExpression="Average" />
                                           <asp:BoundField DataField="Fueltype" HeaderText="Fueltype" 
                                               SortExpression="Fueltype" />
                                           <asp:BoundField DataField="Noofgears" HeaderText="Noofgears" 
                                               SortExpression="Noofgears" />
                                           <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile/<%#Eval("Carphoto") %>'  height="30px" width="50px" />
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
  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      SelectCommand="SELECT [Modelid], [Brandid], [Modelname], [Price], [Year], [Transmission], [Average], [Fueltype], [Noofgears], [Carphoto] FROM [moderl_mstr]">
  </asp:SqlDataSource>
                                   
                                   
                                   <br />
                                  <%-- <div class="table-responsive">CssClass="table table-striped table-borderedtable-hover"--%>
                                   <br />

                                </form>
</asp:Content>

