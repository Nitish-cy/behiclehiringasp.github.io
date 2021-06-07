<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="country.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat="server" Autocomplete="off">
  <div class="page-header">
							<h1>
								Country PAGE
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
								</small>
							</h1>
						</div>
									

									
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Country Code</label>

										<div class="col-sm-9" >
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control"  class="col-xs-10 col-sm-5"/>--%>
                                            <asp:DropDownList ID="ddlconcode" runat="server" class="col-xs-10 col-sm-5" >
                                                <asp:ListItem>India(1001)</asp:ListItem>
                                                <asp:ListItem>England(1002)</asp:ListItem>
                                                <asp:ListItem>United State(1003)</asp:ListItem>
                                                <asp:ListItem>Russia(1004)</asp:ListItem>
                                                <asp:ListItem>Japan(1005)</asp:ListItem>
                                                <asp:ListItem>France(1006)</asp:ListItem>
                                            </asp:DropDownList>
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Country Name</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           
                                           <asp:DropDownList ID="ddlconname" runat="server" class="col-xs-10 col-sm-5" >
                                               <asp:ListItem>India</asp:ListItem>
                                               <asp:ListItem>England</asp:ListItem>
                                               <asp:ListItem>United State</asp:ListItem>
                                               <asp:ListItem>Russia</asp:ListItem>
                                               <asp:ListItem>Japan</asp:ListItem>
                                               <asp:ListItem>France</asp:ListItem>
                                               <asp:ListItem></asp:ListItem>
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
                                            <asp:Button ID="btnsub" runat="server" Text="Submit"  class="btn btn-info" onclick="btnsub_Click" 
                                                 />
											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>
										</div>
									</div>
                                    <asp:GridView ID="GridView1" runat="server" 
      AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
      BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="countryId" 
      DataSourceID="SqlDataSource1" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Height="209px" Width="1328px" 
      CssClass="table table-striped table-borderedtable-hover" 
      >
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="countryId" HeaderText="countryId" ReadOnly="True" 
                                                SortExpression="countryId" />
                                            <asp:BoundField DataField="CountryCode" HeaderText="CountryCode" 
                                                SortExpression="CountryCode" />
                                            <asp:BoundField DataField="CountryName" HeaderText="CountryName" 
                                                SortExpression="CountryName" />
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
      DeleteCommand="DELETE FROM [Country_mstr] WHERE [countryId] = @countryId" 
      InsertCommand="INSERT INTO [Country_mstr] ([CountryCode], [CountryName]) VALUES (@CountryCode, @CountryName)" 
      SelectCommand="SELECT [countryId], [CountryCode], [CountryName] FROM [Country_mstr]" 
      UpdateCommand="UPDATE [Country_mstr] SET [CountryCode] = @CountryCode, [CountryName] = @CountryName WHERE [countryId] = @countryId">
      <DeleteParameters>
          <asp:Parameter Name="countryId" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="CountryCode" Type="String" />
          <asp:Parameter Name="CountryName" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="CountryCode" Type="String" />
          <asp:Parameter Name="CountryName" Type="String" />
          <asp:Parameter Name="countryId" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
                                    <br />
                                    <br />

                                    </form>
</asp:Content>

