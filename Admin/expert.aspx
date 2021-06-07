<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="expert.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat=server Autocomplete="off">
									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Expert Name</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtbname" runat="server" placeholder="Expert_Name"  class="col-xs-10 col-sm-5"></asp:TextBox>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Experience</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtnummod" runat="server" placeholder="Experience"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
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
                                        <div class="table-responsive"> 
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        CellPadding="3" DataKeyNames="ExpertId" DataSourceID="SqlDataSource1" 
                                        EmptyDataText="There are no data records to display." ForeColor="Black" 
                                        GridLines="Vertical" Height="127px" Width="1134px" BackColor="White" 
                                                BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                                            <AlternatingRowStyle BackColor="#CCCCCC" 
                                                CssClass="table table-striped table-borderedtable-hover" />
                                            <Columns>
                                                <asp:BoundField DataField="ExpertId" HeaderText="ExpertId" ReadOnly="True" 
                                                    SortExpression="ExpertId" />
                                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                                <asp:BoundField DataField="Experience" HeaderText="Experience" 
                                                    SortExpression="Experience" />
                                               <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../expert/<%#Eval("Image") %>'height="60px" width="50px"/>
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
                                    </div>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        DeleteCommand="DELETE FROM [Expert_Mstr] WHERE [ExpertId] = @ExpertId" 
                                        InsertCommand="INSERT INTO [Expert_Mstr] ([ExpertId], [Name], [Experience], [Image]) VALUES (@ExpertId, @Name, @Experience, @Image)" 
                                        SelectCommand="SELECT [ExpertId], [Name], [Experience], [Image] FROM [Expert_Mstr]" 
                                        UpdateCommand="UPDATE [Expert_Mstr] SET [Name] = @Name, [Experience] = @Experience, [Image] = @Image WHERE [ExpertId] = @ExpertId">
                                        <DeleteParameters>
                                            <asp:Parameter Name="ExpertId" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="ExpertId" Type="Int32" />
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="Experience" Type="String" />
                                            <asp:Parameter Name="Image" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Name" Type="String" />
                                            <asp:Parameter Name="Experience" Type="String" />
                                            <asp:Parameter Name="Image" Type="String" />
                                            <asp:Parameter Name="ExpertId" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                        <br />
                                       
                                       
                                        <br/>

									    
                                    

                                </form>
</asp:Content>

