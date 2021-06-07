<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat="server" Autocomplete="off">
  <div class="page-header">
							<h1>
								Products PAGE
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
								</small>
							</h1>
						</div>
								

									
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Name</label>

										<div class="col-sm-9" >
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtname" runat="server"  class="col-xs-10 col-sm-5" ></asp:TextBox> 
     										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Price</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           
                                            <asp:TextBox ID="txtprice" runat="server" class="col-xs-10 col-sm-5" ></asp:TextBox>
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Image</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:FileUpload ID="FileUpload1" runat="server" class="col-xs-10 col-sm-5"  />
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
                                    <br />
                                      
                                    <asp:GridView ID="GridView1" runat="server" 
      AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
      BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="ProductId" 
      DataSourceID="SqlDataSource1" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Width="1361px"  CssClass="table table-striped table-borderedtable-hover">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="ProductId" HeaderText="ProductId" ReadOnly="True" 
                                                SortExpression="ProductId" />
                                            <asp:BoundField DataField="ProductName" HeaderText="ProductName" 
                                                SortExpression="ProductName" />
                                            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                            <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile/<%#Eval("image") %>'height="60px" width="50px"/>
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
 
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      DeleteCommand="DELETE FROM [Product_Mtr] WHERE [ProductId] = @ProductId" 
      InsertCommand="INSERT INTO [Product_Mtr] ([ProductName], [Price], [image]) VALUES (@ProductName, @Price, @image)" 
      SelectCommand="SELECT [ProductId], [ProductName], [Price], [image] FROM [Product_Mtr]" 
      UpdateCommand="UPDATE [Product_Mtr] SET [ProductName] = @ProductName, [Price] = @Price, [image] = @image WHERE [ProductId] = @ProductId">
      <DeleteParameters>
          <asp:Parameter Name="ProductId" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="ProductName" Type="String" />
          <asp:Parameter Name="Price" Type="Decimal" />
          <asp:Parameter Name="image" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="ProductName" Type="String" />
          <asp:Parameter Name="Price" Type="Decimal" />
          <asp:Parameter Name="image" Type="String" />
          <asp:Parameter Name="ProductId" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
                                    <br />
                                  </form>
                                    

</asp:Content>

