<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="event.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat=server Autocomplete="off">
									

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Event Name</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtbname" runat="server" placeholder="Event_Name"  class="col-xs-10 col-sm-5" Autocomplete="off"></asp:TextBox>
										</div>
									</div>

									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Date</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtdate" runat="server" placeholder="Event Date"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
										</div>
									</div>
                                    
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Event Address</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										 
                                            <asp:TextBox ID="txtadd" runat="server" placeholder="Event_Address" class="col-xs-10 col-sm-5" ></asp:TextBox>
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Website</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										 
                                            <asp:TextBox ID="txtsite" runat="server" placeholder="Event_Website" class="col-xs-10 col-sm-5" ></asp:TextBox>
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
                                        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                        CellPadding="3" DataKeyNames="Eid" DataSourceID="SqlDataSource1" 
                                        EmptyDataText="There are no data records to display." ForeColor="Black" 
                                        GridLines="Vertical" Height="16px" Width="1329px" 
                                                  CssClass="table table-striped table-borderedtable-hover">
                                             <AlternatingRowStyle BackColor="#CCCCCC" />
                                             <Columns>
                                                 <asp:BoundField DataField="Eid" HeaderText="Eid" ReadOnly="True" 
                                                     SortExpression="Eid" />
                                                 <asp:BoundField DataField="Ename" HeaderText="Ename" SortExpression="Ename" />
                                                 <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                                 <asp:BoundField DataField="Eadd" HeaderText="Eadd" SortExpression="Eadd" />
                                                 <asp:BoundField DataField="Website" HeaderText="Website" 
                                                     SortExpression="Website" />
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
                                        DeleteCommand="DELETE FROM [Event_Mstr] WHERE [Eid] = @Eid" 
                                        InsertCommand="INSERT INTO [Event_Mstr] ([Ename], [Date], [Eadd], [Website]) VALUES (@Ename, @Date, @Eadd, @Website)" 
                                        SelectCommand="SELECT [Eid], [Ename], [Date], [Eadd], [Website] FROM [Event_Mstr]" 
                                        UpdateCommand="UPDATE [Event_Mstr] SET [Ename] = @Ename, [Date] = @Date, [Eadd] = @Eadd, [Website] = @Website WHERE [Eid] = @Eid">
                                        <DeleteParameters>
                                            <asp:Parameter Name="Eid" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="Ename" Type="String" />
                                            <asp:Parameter Name="Date" Type="String" />
                                            <asp:Parameter Name="Eadd" Type="String" />
                                            <asp:Parameter Name="Website" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="Ename" Type="String" />
                                            <asp:Parameter Name="Date" Type="String" />
                                            <asp:Parameter Name="Eadd" Type="String" />
                                            <asp:Parameter Name="Website" Type="String" />
                                            <asp:Parameter Name="Eid" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>
                                         
                                         <br />
                                       
                                       
                                        <br/>

									    
                                    

                                </form>
</asp:Content>

