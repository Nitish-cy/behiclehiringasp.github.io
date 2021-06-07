<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="driveprice.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat="server" Autocomplete="off">
  <div class="page-header">
							<h1>
								CAR PRICE PAGE
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
                                            <asp:DropDownList ID="ddlbrand" runat="server"  
                                                class="col-xs-10 col-sm-5" DataSourceID="SqlDataSource1" 
                                                DataTextField="brandname" DataValueField="brandid" AutoPostBack="True">
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
                                            <%--<asp:TextBox ID="txtbname" runat="server" placeholder="Car_ModelName"  class="col-xs-10 col-sm-5"></asp:TextBox>--%>
                                            <asp:DropDownList ID="ddlmodel" runat="server" class="col-xs-10 col-sm-5" 
                                                DataSourceID="SqlDataSource2" DataTextField="ModelName" 
                                                DataValueField="ModelName" AutoPostBack="True">
                                            </asp:DropDownList>
										    
										    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [SellCarModel] WHERE ([BrandId] = @BrandId)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="ddlbrand" Name="BrandId" 
                                                        PropertyName="SelectedValue" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
										    
										</div>
									</div>
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Price</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtprice" runat="server" placeholder="Price for one hour"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
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
											<%--<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>--%>
                                            <asp:Button ID="btnreset" runat="server" Text="Reset"   class="btn" 
                                                onclick="btnreset_Click"/>
										</div>
									</div>
                                   
                                    <br />
                                    <br />
                                </form>

    </form>

</asp:Content>

