<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="city.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat="server" Autocomplete="off">
  <div class="page-header">
							<h1>
								City Page
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
								</small>
							</h1>
						</div>
									

									
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Country Name</label>

										<div class="col-sm-9" >
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control"  class="col-xs-10 col-sm-5"/>--%>
                                            <asp:DropDownList ID="ddlconname" runat="server" class="col-xs-10 col-sm-5" 
                                                AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CountryName" 
                                                DataValueField="countryId">
                                            </asp:DropDownList>
										    

										    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [Country_mstr]"></asp:SqlDataSource>
										    

										</div>
									</div>
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">State Name</label>

										<div class="col-sm-9" >
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control"  class="col-xs-10 col-sm-5"/>--%>
                                            <asp:DropDownList ID="ddlstate" runat="server" class="col-xs-10 col-sm-5" 
                                                AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="StateName" 
                                                DataValueField="StateId">
                                            </asp:DropDownList>
										    

										    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [state_mstr] WHERE ([CountryId] = @CountryId)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="ddlconname" Name="CountryId" 
                                                        PropertyName="SelectedValue" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
										    

										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">City Name</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           
                                            <asp:TextBox ID="txtcity" runat="server" placeholder="City Name" class="col-xs-10 col-sm-5" Autocomplete="off"></asp:TextBox>
                                           										</div>
									</div>
                                    
								
                                    <div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<%--<button class="btn btn-info" type="button">
												<i class="ace-icon fa fa-check bigger-110"></i>
												Submit
											</button>
--%>
                                            <asp:Button ID="btnsub" runat="server" Text="Submit"  class="btn btn-info" onclick="btnsub_Click"   
                                                 />
											&nbsp; &nbsp; &nbsp;
											<%--<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>--%>
                                            <asp:Button ID="Button1" runat="server" Text="Reset"  class="btn btn-info" onclick="Button1_Click"   
                                                 />
										</div>
									</div>
                                    <asp:GridView ID="GridView1" runat="server" 
      AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
      BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="CityId" 
      DataSourceID="SqlDataSource3" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Height="143px" Width="1175px">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="CityId" HeaderText="CityId" ReadOnly="True" 
                                                SortExpression="CityId" />
                                            <asp:BoundField DataField="CountryId" HeaderText="CountryId" 
                                                SortExpression="CountryId" />
                                            <asp:BoundField DataField="StateId" HeaderText="StateId" 
                                                SortExpression="StateId" />
                                            <asp:BoundField DataField="CityName" HeaderText="CityName" 
                                                SortExpression="CityName" />
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
      DeleteCommand="DELETE FROM [city_mstr] WHERE [CityId] = @CityId" 
      InsertCommand="INSERT INTO [city_mstr] ([CountryId], [StateId], [CityName]) VALUES (@CountryId, @StateId, @CityName)" 
      SelectCommand="SELECT [CityId], [CountryId], [StateId], [CityName] FROM [city_mstr]" 
      UpdateCommand="UPDATE [city_mstr] SET [CountryId] = @CountryId, [StateId] = @StateId, [CityName] = @CityName WHERE [CityId] = @CityId">
      <DeleteParameters>
          <asp:Parameter Name="CityId" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="CountryId" Type="Int32" />
          <asp:Parameter Name="StateId" Type="Int32" />
          <asp:Parameter Name="CityName" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="CountryId" Type="Int32" />
          <asp:Parameter Name="StateId" Type="Int32" />
          <asp:Parameter Name="CityName" Type="String" />
          <asp:Parameter Name="CityId" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
                                    <br />
                                    <br />

                                    </form>
</asp:Content>

