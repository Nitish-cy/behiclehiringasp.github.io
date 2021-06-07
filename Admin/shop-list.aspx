<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="shop-list.aspx.cs" Inherits="Admin_Default4" %>

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
                                            <asp:TextBox ID="txtname" runat="server"  class="col-xs-10 col-sm-5" placeholder="Product Name"></asp:TextBox> 
     										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Old Price</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           
                                            <asp:TextBox ID="txtoprice" runat="server" class="col-xs-10 col-sm-5" placeholder="Old Price" ></asp:TextBox>
										</div>
									</div>
                                     <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">New Price</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           
                                            <asp:TextBox ID="txtnprice" runat="server" class="col-xs-10 col-sm-5" placeholder="New Price"></asp:TextBox>
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Manufacture</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           
                                            <asp:TextBox ID="txtman" runat="server" class="col-xs-10 col-sm-5" placeholder="Manufacture"></asp:TextBox>
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Availability</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           
                                            <asp:TextBox ID="txtava" runat="server" class="col-xs-10 col-sm-5" placeholder="Availabilty"></asp:TextBox>
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Product Code</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           
                                            <asp:TextBox ID="txtcode" runat="server" class="col-xs-10 col-sm-5" placeholder="Product Code"></asp:TextBox>
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Description</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           
                                            <asp:TextBox ID="txtdesc" runat="server" class="col-xs-10 col-sm-5" placeholder="Description"></asp:TextBox>
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
                                            
                                            <asp:Button ID="Button1" runat="server" Text="Reset"  class="btn btn-info"  
                                                 />
										</div>
									</div>
                                    <br />
                                     <%-- <div class="table-responsive">  <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile/<%#Eval("image") %>'height="60px" width="50px"/>
                                           </ItemTemplate>
                                           </asp:TemplateField>
                                           CssClass="table table-striped table-borderedtable-hover"--%>
                                    <br />
                                    <asp:GridView ID="GridView1" runat="server" 
      AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
      BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="pid" 
      DataSourceID="SqlDataSource1" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Height="90px" Width="1295px"    
      CssClass="table table-striped table-borderedtable-hover">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" 
                                                SortExpression="pid" />
                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                            <asp:BoundField DataField="Oldprice" HeaderText="Oldprice" 
                                                SortExpression="Oldprice" />
                                            <asp:BoundField DataField="Newprice" HeaderText="Newprice" 
                                                SortExpression="Newprice" />
                                            <asp:BoundField DataField="Manufacture" HeaderText="Manufacture" 
                                                SortExpression="Manufacture" />
                                            <asp:BoundField DataField="Availability" HeaderText="Availability" 
                                                SortExpression="Availability" />
                                            <asp:BoundField DataField="Prodcode" HeaderText="Prodcode" 
                                                SortExpression="Prodcode" />
                                            <asp:BoundField DataField="Description" HeaderText="Description" 
                                                SortExpression="Description" />
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
      DeleteCommand="DELETE FROM [Shop_List] WHERE [pid] = @pid" 
      InsertCommand="INSERT INTO [Shop_List] ([Name], [Oldprice], [Newprice], [Manufacture], [Availability], [Prodcode], [Description], [Image]) VALUES (@Name, @Oldprice, @Newprice, @Manufacture, @Availability, @Prodcode, @Description, @Image)" 
      SelectCommand="SELECT [pid], [Name], [Oldprice], [Newprice], [Manufacture], [Availability], [Prodcode], [Description], [Image] FROM [Shop_List]" 
      UpdateCommand="UPDATE [Shop_List] SET [Name] = @Name, [Oldprice] = @Oldprice, [Newprice] = @Newprice, [Manufacture] = @Manufacture, [Availability] = @Availability, [Prodcode] = @Prodcode, [Description] = @Description, [Image] = @Image WHERE [pid] = @pid">
      <DeleteParameters>
          <asp:Parameter Name="pid" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="Name" Type="String" />
          <asp:Parameter Name="Oldprice" Type="Decimal" />
          <asp:Parameter Name="Newprice" Type="Decimal" />
          <asp:Parameter Name="Manufacture" Type="String" />
          <asp:Parameter Name="Availability" Type="String" />
          <asp:Parameter Name="Prodcode" Type="String" />
          <asp:Parameter Name="Description" Type="String" />
          <asp:Parameter Name="Image" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="Name" Type="String" />
          <asp:Parameter Name="Oldprice" Type="Decimal" />
          <asp:Parameter Name="Newprice" Type="Decimal" />
          <asp:Parameter Name="Manufacture" Type="String" />
          <asp:Parameter Name="Availability" Type="String" />
          <asp:Parameter Name="Prodcode" Type="String" />
          <asp:Parameter Name="Description" Type="String" />
          <asp:Parameter Name="Image" Type="String" />
          <asp:Parameter Name="pid" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
                                    <br />

                                  </form>
                                    
</asp:Content>

