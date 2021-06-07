<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Partner.aspx.cs" Inherits="Admin_Default3" %>

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
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Name</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtbname" runat="server" placeholder="Partner_Name"  class="col-xs-10 col-sm-5"></asp:TextBox>
										</div>
									</div>
									<div class="space-4"></div>
                                     <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Position</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtpos" runat="server" placeholder="Position"  class="col-xs-10 col-sm-5"></asp:TextBox>
										</div>
									</div>
									<div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Graduation</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtgrad" runat="server" placeholder="Graduation"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Post Graduation</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtposg" runat="server" placeholder="Post_Graduation"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Experience</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtex" runat="server" placeholder="Experience"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                     <div class="space-4"></div>
                                        <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Address</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtadd" runat="server" placeholder="Address"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                     <div class="space-4"></div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Photo</label>

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
											<%--<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>--%>
                                            <asp:Button ID="Button2" runat="server" Text="Reset"  class="btn btn-info" 
                                                 />
										</div>
									</div>
                                  
                                    <asp:GridView ID="GridView1" runat="server" 
      AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
      BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="PartId" 
      DataSourceID="SqlDataSource1" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Height="163px" 
       Width="1344px" CssClass="table table-striped table-borderedtable-hover">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="PartId" HeaderText="PartId" ReadOnly="True" 
                                                SortExpression="PartId" />
                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                            <asp:BoundField DataField="Position" HeaderText="Position" 
                                                SortExpression="Position" />
                                            <asp:BoundField DataField="Graduation" HeaderText="Graduation" 
                                                SortExpression="Graduation" />
                                            <asp:BoundField DataField="PostGraduation" HeaderText="PostGraduation" 
                                                SortExpression="PostGraduation" />
                                            <asp:BoundField DataField="Experience" HeaderText="Experience" 
                                                SortExpression="Experience" />
                                           <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile/<%#Eval("Image") %>'height="60px" width="50px"/>
                                           </ItemTemplate>
                                           </asp:TemplateField>
                                            <asp:BoundField DataField="Address" HeaderText="Address" 
                                                SortExpression="Address" />
                                            <asp:CommandField EditText="Update" ShowEditButton="True" />
                                            <asp:CommandField EditText="Delete" ShowDeleteButton="True" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCCCC" />
                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                        <SortedAscendingHeaderStyle BackColor="Gray" />
                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                        <SortedDescendingHeaderStyle BackColor="#383838" />
  </asp:GridView>
 
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      DeleteCommand="DELETE FROM [Partner_Mstr] WHERE [PartId] = @PartId" 
      InsertCommand="INSERT INTO [Partner_Mstr] ([Name], [Position], [Graduation], [PostGraduation], [Experience], [Image], [Address]) VALUES (@Name, @Position, @Graduation, @PostGraduation, @Experience, @Image, @Address)" 
      SelectCommand="SELECT [PartId], [Name], [Position], [Graduation], [PostGraduation], [Experience], [Image], [Address] FROM [Partner_Mstr]" 
      UpdateCommand="UPDATE [Partner_Mstr] SET [Name] = @Name, [Position] = @Position, [Graduation] = @Graduation, [PostGraduation] = @PostGraduation, [Experience] = @Experience, [Image] = @Image, [Address] = @Address WHERE [PartId] = @PartId">
      <DeleteParameters>
          <asp:Parameter Name="PartId" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="Name" Type="String" />
          <asp:Parameter Name="Position" Type="String" />
          <asp:Parameter Name="Graduation" Type="String" />
          <asp:Parameter Name="PostGraduation" Type="String" />
          <asp:Parameter Name="Experience" Type="String" />
          <asp:Parameter Name="Image" Type="String" />
          <asp:Parameter Name="Address" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="Name" Type="String" />
          <asp:Parameter Name="Position" Type="String" />
          <asp:Parameter Name="Graduation" Type="String" />
          <asp:Parameter Name="PostGraduation" Type="String" />
          <asp:Parameter Name="Experience" Type="String" />
          <asp:Parameter Name="Image" Type="String" />
          <asp:Parameter Name="Address" Type="String" />
          <asp:Parameter Name="PartId" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
                                    <br />
                                    <br />

                                  
                                </form>
</asp:Content>

