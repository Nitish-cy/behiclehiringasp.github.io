<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="Admin_Default3" %>

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
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">News</label>

										<div class="col-sm-9" >
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtnews" runat="server"  class="col-xs-10 col-sm-5" ></asp:TextBox> 
     										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Detail Of News</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           
                                            <asp:TextBox ID="txtdetail" runat="server" class="col-xs-10 col-sm-5" 
                                                TextMode="MultiLine"  ></asp:TextBox>
										</div>
									</div>
                                     <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Date</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           
                                            <asp:TextBox ID="txtdate" runat="server" class="col-xs-10 col-sm-5" 
                                                ></asp:TextBox>
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
                                    <br />
                                   
                                    <asp:GridView ID="GridView1" runat="server" 
      AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
      BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="nid" 
      DataSourceID="SqlDataSource1" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Height="84px" Width="1183px" CssClass="table table-striped table-borderedtable-hover">
                                        <AlternatingRowStyle BackColor="#CCCCCC" />
                                        <Columns>
                                            <asp:BoundField DataField="nid" HeaderText="nid" ReadOnly="True" 
                                                SortExpression="nid" />
                                            <asp:BoundField DataField="news" HeaderText="news" SortExpression="news" />
                                            <asp:BoundField DataField="detail" HeaderText="detail" 
                                                SortExpression="detail" />
                                            <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                          <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile/<%#Eval("photo") %>'height="60px" width="50px"/>
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
      DeleteCommand="DELETE FROM [news_mstr] WHERE [nid] = @nid" 
      InsertCommand="INSERT INTO [news_mstr] ([news], [detail], [date], [photo]) VALUES (@news, @detail, @date, @photo)" 
      SelectCommand="SELECT [nid], [news], [detail], [date], [photo] FROM [news_mstr]" 
      
      UpdateCommand="UPDATE [news_mstr] SET [news] = @news, [detail] = @detail, [date] = @date, [photo] = @photo WHERE [nid] = @nid">
      <DeleteParameters>
          <asp:Parameter Name="nid" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="news" Type="String" />
          <asp:Parameter Name="detail" Type="String" />
          <asp:Parameter DbType="Date" Name="date" />
          <asp:Parameter Name="photo" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="news" Type="String" />
          <asp:Parameter Name="detail" Type="String" />
          <asp:Parameter DbType="Date" Name="date" />
          <asp:Parameter Name="photo" Type="String" />
          <asp:Parameter Name="nid" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
                                    <br />
                                      
                                  </form>
                                    

</asp:Content>

