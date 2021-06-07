<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="buyerblog.aspx.cs" Inherits="Admin_Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<form id="Form1" class="form-horizontal" role="form" runat="server">
  <div class="page-header">
							<h1>
								CAR Blog PAGE
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
								</small>
							</h1>
						</div>
								

									
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1" >Blog Name</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtfac" runat="server" class="col-xs-10 col-sm-5" placeholder="Facility"></asp:TextBox>
										</div>
									</div>
                                    <div class="form-group">
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">CarPhoto</label>

										<div class="col-sm-9">
											
                                            <asp:FileUpload ID="FileUpload1" runat="server" />
										</div>
									</div>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Description</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtdesc" runat="server" class="col-xs-20 col-sm-15" 
                                                placeholder="Description" Height="167px" TextMode="MultiLine" Width="238px"   
                                               ></asp:TextBox>
										</div>
									</div>
									<div class="space-4"></div>

                                   
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
                                            <asp:Button ID="Button2" runat="server" Text="Reset"  class="btn btn-info" onclick="Button2_Click" 
                                                 />
										</div>
									</div>
                                   <%-- <div class="table-responsive">  CssClass="table table-striped table-borderedtable-hover"--%>
                                    <asp:GridView ID="GridView1" runat="server" 
      AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
      BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="blogid" 
      DataSourceID="SqlDataSource1" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Height="141px" Width="1286px"  CssClass="table table-striped table-borderedtable-hover">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="blogid" HeaderText="blogid" ReadOnly="True" 
                                                SortExpression="blogid" />
                                            <asp:BoundField DataField="blogname" HeaderText="blogname" 
                                                SortExpression="blogname" />
                                            <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile/<%#Eval("image") %>'height="60px" width="50px"/>
                                           </ItemTemplate>
                                           </asp:TemplateField>
                                            <asp:BoundField DataField="description" HeaderText="description" 
                                                SortExpression="description" />
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
      DeleteCommand="DELETE FROM [buyerblog] WHERE [blogid] = @blogid" 
      InsertCommand="INSERT INTO [buyerblog] ([blogname], [image], [description]) VALUES (@blogname, @image, @description)" 
      SelectCommand="SELECT [blogid], [blogname], [image], [description] FROM [buyerblog]" 
      UpdateCommand="UPDATE [buyerblog] SET [blogname] = @blogname, [image] = @image, [description] = @description WHERE [blogid] = @blogid">
      <DeleteParameters>
          <asp:Parameter Name="blogid" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="blogname" Type="String" />
          <asp:Parameter Name="image" Type="String" />
          <asp:Parameter Name="description" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="blogname" Type="String" />
          <asp:Parameter Name="image" Type="String" />
          <asp:Parameter Name="description" Type="String" />
          <asp:Parameter Name="blogid" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
                                    <br />
                                    <br />

                                </form>
</asp:Content>

