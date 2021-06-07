<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Gallary.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat="server" Autocomplete="off">
  <div class="page-header">
							<h1>
								CARS Gallary PAGE
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
								</small>
							</h1>
						</div>
								

									
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">BrandName</label>

										<div class="col-sm-9" >
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlbrand" runat="server"  class="col-xs-10 col-sm-5" 
                                                AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="brandname" 
                                                DataValueField="brandid" >
                                            </asp:DropDownList>
                                            
										    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [brand_mstr]"></asp:SqlDataSource>
                                            
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">ModelName</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           <asp:DropDownList ID="ddlmodel" runat="server"  class="col-xs-10 col-sm-5" 
                                                DataSourceID="SqlDataSource2" DataTextField="Modelname" 
                                                DataValueField="Modelid" >
                                            </asp:DropDownList>
                                            
										   
										    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [moderl_mstr] WHERE ([Brandid] = @Brandid)">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="ddlbrand" Name="Brandid" 
                                                        PropertyName="SelectedValue" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            
										   
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Status</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlstatus" runat="server" class="col-xs-10 col-sm-5"  >
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
										</div>
									</div>
                                   <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">ModelName</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
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
                                    
                                    <asp:GridView ID="GridView1" runat="server" 
      AutoGenerateColumns="False" DataKeyNames="gallaryid" 
      DataSourceID="SqlDataSource3" 
      EmptyDataText="There are no data records to display." Height="86px" 
      Width="1434px"  CssClass="table table-striped table-borderedtable-hover" BackColor="White" BorderColor="#999999" 
                                             BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" 
                                             GridLines="Vertical" >
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="gallaryid" HeaderText="gallaryid" ReadOnly="True" 
                                                SortExpression="gallaryid" />
                                            <asp:BoundField DataField="modelid" HeaderText="modelid" 
                                                SortExpression="modelid" />
                                            <asp:BoundField DataField="brandid" HeaderText="brandid" 
                                                SortExpression="brandid" />
                                            <asp:BoundField DataField="status" HeaderText="status" 
                                                SortExpression="status" />
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
  
  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      DeleteCommand="DELETE FROM [Gallary_Mstr] WHERE [gallaryid] = @gallaryid" 
      InsertCommand="INSERT INTO [Gallary_Mstr] ([modelid], [brandid], [status], [image]) VALUES (@modelid, @brandid, @status, @image)" 
      SelectCommand="SELECT [gallaryid], [modelid], [brandid], [status], [image] FROM [Gallary_Mstr]" 
      UpdateCommand="UPDATE [Gallary_Mstr] SET [modelid] = @modelid, [brandid] = @brandid, [status] = @status, [image] = @image WHERE [gallaryid] = @gallaryid">
      <DeleteParameters>
          <asp:Parameter Name="gallaryid" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="modelid" Type="Int32" />
          <asp:Parameter Name="brandid" Type="Int32" />
          <asp:Parameter Name="status" Type="String" />
          <asp:Parameter Name="image" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="modelid" Type="Int32" />
          <asp:Parameter Name="brandid" Type="Int32" />
          <asp:Parameter Name="status" Type="String" />
          <asp:Parameter Name="image" Type="String" />
          <asp:Parameter Name="gallaryid" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
                                    <br />
                                    <br />
                                  </form>
                                    

                                  

</asp:Content>

