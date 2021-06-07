<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="color_mstr.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat="server" Autocomplete="off">
  <div class="page-header">
							<h1>
								CAR COLOR
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
								</small>
							</h1>
						</div>
                        <div class="form-group">
										<%--<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> CarModel_ID </label>--%>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1" placeholder="Brand_Id" class="col-xs-10 col-sm-5" />--%>
                                            <%--<asp:TextBox ID="txtid" runat="server" placeholder="CarModel_ID" class="col-xs-10 col-sm-5"></asp:TextBox>--%>
										</div>
									</div>

									
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">ModelName</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlmodelid" runat="server" class="col-xs-10 col-sm-5" 
                                                DataSourceID="SqlDataSource1" DataTextField="Modelname" 
                                                DataValueField="Modelid" >
                                            </asp:DropDownList>
										    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [moderl_mstr]"></asp:SqlDataSource>
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Color Name</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtbname" runat="server" placeholder="Car_Colorname"  class="col-xs-10 col-sm-5"></asp:TextBox>
										</div>
									</div>
								

									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-2">Status</label>

										<div class="col-sm-9">
											<%--<input type="password" id="form-field-2" placeholder="Number_Model" class="col-xs-10 col-sm-5" />
--%>										  
                                            <asp:DropDownList ID="ddlstatus" runat="server" class="col-xs-10 col-sm-5">
                                                <asp:ListItem>yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
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
      AutoGenerateColumns="False" DataKeyNames="colorid" 
      DataSourceID="SqlDataSource2" 
      EmptyDataText="There are no data records to display." Width="1241px" 
      CssClass="table table-striped table-borderedtable-hover" BackColor="White" 
      BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
      ForeColor="Black" GridLines="Vertical">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="colorid" HeaderText="colorid" ReadOnly="True" 
                                                SortExpression="colorid" />
                                            <asp:BoundField DataField="modelid" HeaderText="modelid" 
                                                SortExpression="modelid" />
                                            <asp:BoundField DataField="colorname" HeaderText="colorname" 
                                                SortExpression="colorname" />
                                            <asp:BoundField DataField="status" HeaderText="status" 
                                                SortExpression="status" />
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
  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      DeleteCommand="DELETE FROM [tab_color] WHERE [colorid] = @colorid" 
      InsertCommand="INSERT INTO [tab_color] ([modelid], [colorname], [status]) VALUES (@modelid, @colorname, @status)" 
      SelectCommand="SELECT [colorid], [modelid], [colorname], [status] FROM [tab_color]" 
      UpdateCommand="UPDATE [tab_color] SET [colorname] = @colorname, [status] = @status WHERE [colorid] = @colorid">
      <DeleteParameters>
          <asp:Parameter Name="colorid" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="modelid" Type="Int32" />
          <asp:Parameter Name="colorname" Type="String" />
          <asp:Parameter Name="status" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="colorname" Type="String" />
          <asp:Parameter Name="status" Type="String" />
          <asp:Parameter Name="colorid" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
                                    <br />
                                    <br />

    </form>
</asp:Content>

