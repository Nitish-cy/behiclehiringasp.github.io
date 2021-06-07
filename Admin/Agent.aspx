<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Agent.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat="server" >
  <div class="page-header">
							<h1>
								CAR MODEL PAGE
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
								</small>
							</h1>
						</div>
<%--<asp:ScriptManager ID="ScriptManager1" runat="server">

</asp:ScriptManager>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>

</ContentTemplate>
</asp:UpdatePanel>--%>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Agent Name </label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Brand_Id" class="col-xs-10 col-sm-5" />--%>
                                            <asp:TextBox ID="txtname" runat="server" placeholder="Agent_Name" class="col-xs-10 col-sm-5" Autocomplete="off"></asp:TextBox>
										    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtname" ErrorMessage="This Field is required" 
                                                ForeColor="Red"></asp:RequiredFieldValidator>
										</div>
									</div>

									
                                    	
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Profession</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtprof" runat="server" placeholder="Profession"  class="col-xs-10 col-sm-5" Autocomplete="off"></asp:TextBox>
										    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="txtprof" ErrorMessage="This Field is required" 
                                                ForeColor="#FF3300"></asp:RequiredFieldValidator>
										</div>
									</div>
									<div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Mobile Number</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtmob" runat="server" placeholder="Mobile_ Number"  class="col-xs-10 col-sm-5" Autocomplete="off"></asp:TextBox>
	
										    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="txtmob" ErrorMessage="Mobile Number Is Required" 
                                                ForeColor="Red"></asp:RequiredFieldValidator>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Email</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtemail" runat="server" placeholder="Email"  class="col-xs-10 col-sm-5" Autocomplete="off"></asp:TextBox>
	
										    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="txtemail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                ControlToValidate="txtemail" ErrorMessage="Enter Email In correct formate" 
                                                ForeColor="Red" 
                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Biography</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  <asp:TextBox ID="txtbio" runat="server" placeholder="biography"  
                                                class="col-xs-10 col-sm-5" TextMode="MultiLine" Autocomplete="off"></asp:TextBox>
	
										    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                ControlToValidate="txtbio" ErrorMessage="Biography is required" ForeColor="Red"></asp:RequiredFieldValidator>
	
										</div>
									</div>
                                    <div class="space-4"></div>

									
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Agent Image</label>

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
                                            <asp:Button ID="Button1" runat="server" Text="Button"  class="btn btn-info" onclick="Button1_Click"/>
											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>
										</div>
									</div>
                                   <%-- <div class="table-responsive">   CssClass="table table-striped table-borderedtable-hover" --%>
                                    <br />
                                 <%--   <div class="table-responsive"> --%>
                                    <asp:GridView ID="GridView1" runat="server" 
      AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
      BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
      DataSourceID="SqlDataSource1" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Height="91px" Width="1448px"  CssClass="table table-striped table-borderedtable-hover" >
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="Agentid" HeaderText="Agentid" ReadOnly="True" 
                                                SortExpression="Agentid" />
                                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                            <asp:BoundField DataField="Profession" HeaderText="Profession" 
                                                SortExpression="Profession" />
                                            <asp:BoundField DataField="Mobno" HeaderText="Mobno" SortExpression="Mobno" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:BoundField DataField="Biography" HeaderText="Biography" 
                                                SortExpression="Biography" />
                                            <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile/<%#Eval("Image") %>'height="60px" width="50px"/>
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
      ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
      SelectCommand="SELECT [Agentid], [Name], [Profession], [Mobno], [Email], [Biography], [Image] FROM [Agent_Mstr]">
  </asp:SqlDataSource>
                                    <br />

                                </form>
                               
</asp:Content>

