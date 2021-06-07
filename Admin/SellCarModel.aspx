<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="SellCarModel.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


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
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1">Car Brand</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Brand_Id" class="col-xs-10 col-sm-5" />--%>
                                            <%--<asp:TextBox ID="txtid" runat="server" placeholder="CarModel_ID" class="col-xs-10 col-sm-5"></asp:TextBox>--%>
                                            <asp:DropDownList ID="ddlbrand" runat="server" class="col-xs-10 col-sm-5" 
                                                DataSourceID="SqlDataSource1" DataTextField="brandname" 
                                                DataValueField="brandid">
                                            </asp:DropDownList>
										    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [brand_mstr]"></asp:SqlDataSource>
										</div>
									</div>

									
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1" >Model name</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtname" runat="server" class="col-xs-10 col-sm-5" placeholder="Model Name"></asp:TextBox>
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Car Type</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddltype" runat="server"  class="col-xs-10 col-sm-5">
                                                <asp:ListItem>New Car</asp:ListItem>
                                                <asp:ListItem>Old Car</asp:ListItem>
                                            </asp:DropDownList>
										</div>
									</div>
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Transmission</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txttrans" runat="server" placeholder="Transmission"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Fuel Type</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtfuel" runat="server" placeholder="Fuel Type"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Mileage</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtmil" runat="server" placeholder="Mileage"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Color</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtcolor" runat="server" placeholder="Car Color"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Year</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtyear" runat="server" placeholder="Year"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Location</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  
                                            <asp:DropDownList ID="ddlloc" runat="server" class="col-xs-10 col-sm-5" 
                                                DataSourceID="SqlDataSource2" DataTextField="CountryName" 
                                                DataValueField="countryId">
                                            </asp:DropDownList>
	
										    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [Country_mstr]"></asp:SqlDataSource>
	
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">No_Of_Gears</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										   <asp:TextBox ID="txtgear" runat="server" placeholder="Number of Gears"  class="col-xs-10 col-sm-5"></asp:TextBox>
                                           
	
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
                                            <asp:Button ID="Button1" runat="server" Text="Submit"  class="btn btn-info" onclick="Button1_Click" 
                                                 />
											&nbsp; &nbsp; &nbsp;
											<%--<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>--%>
                                            <asp:Button ID="Button2" runat="server" Text="Reset"  class="btn btn-info" 
                                                 />
										</div>
									</div>
                                   
                                    <asp:GridView ID="GridView1" runat="server" 
      AutoGenerateColumns="False" DataKeyNames="ModelId" 
      DataSourceID="SqlDataSource3" 
      EmptyDataText="There are no data records to display." Height="400px" 
      Width="1340px" CssClass="table table-striped table-borderedtable-hover" BackColor="White" BorderColor="#999999" 
                                            BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
                                            GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="ModelId" HeaderText="ModelId" ReadOnly="True" 
                                                SortExpression="ModelId" />
                                            <asp:BoundField DataField="BrandId" HeaderText="BrandId" 
                                                SortExpression="BrandId" />
                                            <asp:BoundField DataField="ModelName" HeaderText="ModelName" 
                                                SortExpression="ModelName" />
                                            <asp:BoundField DataField="CarType" HeaderText="CarType" 
                                                SortExpression="CarType" />
                                            <asp:BoundField DataField="Transmission" HeaderText="Transmission" 
                                                SortExpression="Transmission" />
                                            <asp:BoundField DataField="FuelType" HeaderText="FuelType" 
                                                SortExpression="FuelType" />
                                            <asp:BoundField DataField="Mileage" HeaderText="Mileage" 
                                                SortExpression="Mileage" />
                                            <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                                            <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                                            <asp:BoundField DataField="Location" HeaderText="Location" 
                                                SortExpression="Location" />
                                            <asp:BoundField DataField="NoOfGears" HeaderText="NoOfGears" 
                                                SortExpression="NoOfGears" />
                                          <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile/<%#Eval("Image") %>'height="60px" width="50px"/>
                                           </ItemTemplate>
                                           </asp:TemplateField>
                                            <asp:CommandField EditText="Update" ShowEditButton="True" />
                                            <asp:CommandField EditText="Delete" ShowDeleteButton="True" />
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
      DeleteCommand="DELETE FROM [SellCarModel] WHERE [ModelId] = @ModelId" 
      InsertCommand="INSERT INTO [SellCarModel] ([BrandId], [ModelName], [CarType], [Transmission], [FuelType], [Mileage], [Color], [Year], [Location], [NoOfGears], [Image]) VALUES (@BrandId, @ModelName, @CarType, @Transmission, @FuelType, @Mileage, @Color, @Year, @Location, @NoOfGears, @Image)" 
      SelectCommand="SELECT [ModelId], [BrandId], [ModelName], [CarType], [Transmission], [FuelType], [Mileage], [Color], [Year], [Location], [NoOfGears], [Image] FROM [SellCarModel]" 
      UpdateCommand="UPDATE [SellCarModel] SET [BrandId] = @BrandId, [ModelName] = @ModelName, [CarType] = @CarType, [Transmission] = @Transmission, [FuelType] = @FuelType, [Mileage] = @Mileage, [Color] = @Color, [Year] = @Year, [Location] = @Location, [NoOfGears] = @NoOfGears, [Image] = @Image WHERE [ModelId] = @ModelId">
      <DeleteParameters>
          <asp:Parameter Name="ModelId" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="BrandId" Type="Int32" />
          <asp:Parameter Name="ModelName" Type="String" />
          <asp:Parameter Name="CarType" Type="String" />
          <asp:Parameter Name="Transmission" Type="String" />
          <asp:Parameter Name="FuelType" Type="String" />
          <asp:Parameter Name="Mileage" Type="String" />
          <asp:Parameter Name="Color" Type="String" />
          <asp:Parameter Name="Year" Type="String" />
          <asp:Parameter Name="Location" Type="String" />
          <asp:Parameter Name="NoOfGears" Type="Int32" />
          <asp:Parameter Name="Image" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="BrandId" Type="Int32" />
          <asp:Parameter Name="ModelName" Type="String" />
          <asp:Parameter Name="CarType" Type="String" />
          <asp:Parameter Name="Transmission" Type="String" />
          <asp:Parameter Name="FuelType" Type="String" />
          <asp:Parameter Name="Mileage" Type="String" />
          <asp:Parameter Name="Color" Type="String" />
          <asp:Parameter Name="Year" Type="String" />
          <asp:Parameter Name="Location" Type="String" />
          <asp:Parameter Name="NoOfGears" Type="Int32" />
          <asp:Parameter Name="Image" Type="String" />
          <asp:Parameter Name="ModelId" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
                                    <br />
                                    <br />

                                </form>
</asp:Content>

