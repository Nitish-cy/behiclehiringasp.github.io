<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="services.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat=server Autocomplete="off">
									

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Service Name</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtbname" runat="server" placeholder="Service_Name"  class="col-xs-10 col-sm-5"></asp:TextBox>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Description</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtnummod" runat="server" placeholder="Description"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Profile</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										 
                                            <asp:FileUpload ID="FileUpload1" runat="server" class="col-xs-10 col-sm-5" />
	
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
                                             <asp:Button ID="Button2" runat="server" Text="Reset"  class="btn btn-info " onclick="Button2_Click" 
                                              />
										</div>
                                        </div>
                                        <br />
                                         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        DataKeyNames="ServiceId" DataSourceID="SqlDataSource1" 
                                        EmptyDataText="There are no data records to display." Height="90%" 
                                        Width="1348px"  CssClass="table table-striped table-borderedtable-hover" 
                                                 BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                                 CellPadding="3" ForeColor="Black" GridLines="Vertical">
                                             <AlternatingRowStyle BackColor="#CCCCCC" />
                                             <Columns>
                                                 <asp:BoundField DataField="ServiceId" HeaderText="ServiceId" ReadOnly="True" 
                                                     SortExpression="ServiceId" />
                                                 <asp:BoundField DataField="ServiceName" HeaderText="ServiceName" 
                                                     SortExpression="ServiceName" />
                                                 <asp:BoundField DataField="Description" HeaderText="Description" 
                                                     SortExpression="Description" />
                                               <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../expert/<%#Eval("Image") %>'height="60px" width="50px"/>
                                           </ItemTemplate>
                                           </asp:TemplateField>
                                                 <asp:CommandField EditText="Update" HeaderText="Delete" ShowEditButton="True" />
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
                                        DeleteCommand="DELETE FROM [Service_Mstr] WHERE [ServiceId] = @ServiceId" 
                                        InsertCommand="INSERT INTO [Service_Mstr] ([ServiceName], [Description], [Image]) VALUES (@ServiceName, @Description, @Image)" 
                                        SelectCommand="SELECT [ServiceId], [ServiceName], [Description], [Image] FROM [Service_Mstr]" 
                                        UpdateCommand="UPDATE [Service_Mstr] SET [ServiceName] = @ServiceName, [Description] = @Description, [Image] = @Image WHERE [ServiceId] = @ServiceId">
                                        <DeleteParameters>
                                            <asp:Parameter Name="ServiceId" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="ServiceName" Type="String" />
                                            <asp:Parameter Name="Description" Type="String" />
                                            <asp:Parameter Name="Image" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="ServiceName" Type="String" />
                                            <asp:Parameter Name="Description" Type="String" />
                                            <asp:Parameter Name="Image" Type="String" />
                                            <asp:Parameter Name="ServiceId" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                         <br />
                                       
                                       
                                        <br/>

									    
                                    

                                </form>
</asp:Content>

