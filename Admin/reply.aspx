<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="reply.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat="server" Autocomplete="off">
  <div class="page-header">
							<h1>
								Reply PAGE
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
								</small>
							</h1>
						</div>
								

									
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Replied By</label>

										<div class="col-sm-9" >
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:DropDownList ID="ddlname" runat="server"  placeholder="Admin_Name" 
                                                DataSourceID="SqlDataSource1" DataTextField="aname" DataValueField="aname"  class="col-xs-10 col-sm-3">
                                            </asp:DropDownList>
                                            
										    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                                SelectCommand="SELECT * FROM [admin_mstr]"></asp:SqlDataSource>
                                            
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Reply Time</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           
										   <p class="input-group clockpicker" data-placement="bottom" data-align="top" data-autoclose="true">
                                    <%--<input type="text" class="form-control" placeholder="Journey Time" />--%>
                                    <asp:TextBox ID="txtclock" runat="server" class="form-control" 
                                                   placeholder="Reply Time..................." Height="38px" Width="247px" ></asp:TextBox>
                                 </p>
										</div>

									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">User Email</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txteamil" runat="server" placeholder="User Email" 
                                                class="col-xs-10 col-sm-3" Height="36px" Width="247px" ></asp:TextBox>
										</div>
									</div>
                                   <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Message</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtmsg" runat="server" placeholder="Reply..............." 
                                                class="col-xs-10 col-sm-3" Height="160px" TextMode="MultiLine" 
                                                Width="247px"></asp:TextBox>
										   
										</div>
									</div
                                    <br />
                                    <br />
                                    <div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<%--<button class="btn btn-info" type="button">
												<i class="ace-icon fa fa-check bigger-110"></i>
												Submit
											</button>
--%>
                                            <asp:Button ID="btnsub" runat="server" Text="Submit"  class="btn btn-info" 
                                                onclick="btnsub_Click" 
                                                 />
											&nbsp; &nbsp; &nbsp;
											<%--<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>--%>
                                            
                                            <asp:Button ID="Button1" runat="server" Text="Reset"  class="btn btn-info" 
                                                onclick="Button1_Click" 
                                                 />
										</div>
									</div>
                                     <br />
                                       <div class="table-responsive">  
                                     <asp:GridView ID="GridView1" runat="server" 
      AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
      BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Contactid" 
      DataSourceID="SqlDataSource2" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Height="116px" Width="1351px"  CssClass="table table-striped table-borderedtable-hover">
                                         <AlternatingRowStyle BackColor="#CCCCCC" />
                                         <Columns>
                                             <asp:BoundField DataField="Contactid" HeaderText="Contactid" ReadOnly="True" 
                                                 SortExpression="Contactid" />
                                             <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                             <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                             <asp:BoundField DataField="Subject" HeaderText="Subject" 
                                                 SortExpression="Subject" />
                                             <asp:BoundField DataField="Phonno" HeaderText="Phonno" 
                                                 SortExpression="Phonno" />
                                             <asp:BoundField DataField="Msg" HeaderText="Msg" SortExpression="Msg" />
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
  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      DeleteCommand="DELETE FROM [ContactUs] WHERE [Contactid] = @Contactid" 
      InsertCommand="INSERT INTO [ContactUs] ([Name], [Email], [Subject], [Phonno], [Msg]) VALUES (@Name, @Email, @Subject, @Phonno, @Msg)" 
      SelectCommand="SELECT [Contactid], [Name], [Email], [Subject], [Phonno], [Msg] FROM [ContactUs]" 
      UpdateCommand="UPDATE [ContactUs] SET [Name] = @Name, [Email] = @Email, [Subject] = @Subject, [Phonno] = @Phonno, [Msg] = @Msg WHERE [Contactid] = @Contactid">
      <DeleteParameters>
          <asp:Parameter Name="Contactid" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="Name" Type="String" />
          <asp:Parameter Name="Email" Type="String" />
          <asp:Parameter Name="Subject" Type="String" />
          <asp:Parameter Name="Phonno" Type="Decimal" />
          <asp:Parameter Name="Msg" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="Name" Type="String" />
          <asp:Parameter Name="Email" Type="String" />
          <asp:Parameter Name="Subject" Type="String" />
          <asp:Parameter Name="Phonno" Type="Decimal" />
          <asp:Parameter Name="Msg" Type="String" />
          <asp:Parameter Name="Contactid" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
                                     <br />
 <br />
 <br />
 <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; VIEW REPLY</h2>
 <div class="table-responsive">  
  <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
      BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
      CellPadding="3" DataKeyNames="Rep_id" DataSourceID="SqlDataSource3" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Height="158px" Width="1344px"  CssClass="table table-striped table-borderedtable-hover">
      <AlternatingRowStyle BackColor="#CCCCCC" />
      <Columns>
          <asp:BoundField DataField="Rep_id" HeaderText="Rep_id" ReadOnly="True" 
              SortExpression="Rep_id" />
          <asp:BoundField DataField="Replied_by" HeaderText="Replied_by" 
              SortExpression="Replied_by" />
          <asp:BoundField DataField="Time" HeaderText="Time" SortExpression="Time" />
          <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
          <asp:BoundField DataField="Rep_msg" HeaderText="Rep_msg" 
              SortExpression="Rep_msg" />
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
  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      DeleteCommand="DELETE FROM [Reply_Mstr] WHERE [Rep_id] = @Rep_id" 
      InsertCommand="INSERT INTO [Reply_Mstr] ([Replied_by], [Time], [Email], [Rep_msg]) VALUES (@Replied_by, @Time, @Email, @Rep_msg)" 
      SelectCommand="SELECT [Rep_id], [Replied_by], [Time], [Email], [Rep_msg] FROM [Reply_Mstr]" 
      UpdateCommand="UPDATE [Reply_Mstr] SET [Replied_by] = @Replied_by, [Time] = @Time, [Email] = @Email, [Rep_msg] = @Rep_msg WHERE [Rep_id] = @Rep_id">
      <DeleteParameters>
          <asp:Parameter Name="Rep_id" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="Replied_by" Type="String" />
          <asp:Parameter Name="Time" Type="String" />
          <asp:Parameter Name="Email" Type="String" />
          <asp:Parameter Name="Rep_msg" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="Replied_by" Type="String" />
          <asp:Parameter Name="Time" Type="String" />
          <asp:Parameter Name="Email" Type="String" />
          <asp:Parameter Name="Rep_msg" Type="String" />
          <asp:Parameter Name="Rep_id" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
  <br />
   <h3>Contact From Buyer To Agent</h3>
  <br />
   <div class="table-responsive">  
  <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
      BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
      CellPadding="3" DataSourceID="SqlDataSource4" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Height="131px" Width="1491px">
      <AlternatingRowStyle BackColor="#CCCCCC"  CssClass="table table-striped table-borderedtable-hover"/>
      <Columns>
          <asp:BoundField DataField="ContactId" HeaderText="ContactId" ReadOnly="True" 
              SortExpression="ContactId" />
          <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
          <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
          <asp:BoundField DataField="Subject" HeaderText="Subject" 
              SortExpression="Subject" />
          <asp:BoundField DataField="MobileNum" HeaderText="MobileNum" 
              SortExpression="MobileNum" />
          <asp:BoundField DataField="Msg" HeaderText="Msg" SortExpression="Msg" />
          <asp:CommandField EditText="Update" ShowEditButton="True" />
          <asp:CommandField EditText="Delete" ShowDeleteButton="True" />
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
  <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
      SelectCommand="SELECT [ContactId], [Name], [Email], [Subject], [MobileNum], [Msg] FROM [AgentContact]">
  </asp:SqlDataSource>
  <br />
  <br />
  <h3>Subscriber Page</h3>
  <br />
   <div class="table-responsive">  
  <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
      BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
      CellPadding="3" DataKeyNames="SubId" DataSourceID="SqlDataSource5" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Width="1398px">
      <AlternatingRowStyle BackColor="#CCCCCC"  CssClass="table table-striped table-borderedtable-hover"/>
      <Columns>
          <asp:BoundField DataField="SubId" HeaderText="SubId" ReadOnly="True" 
              SortExpression="SubId" />
          <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
          <asp:CommandField EditText="update" ShowEditButton="True" />
          <asp:CommandField EditText="Delete" ShowDeleteButton="True" />
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
  <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      DeleteCommand="DELETE FROM [Subscriber_Mstr] WHERE [SubId] = @SubId" 
      InsertCommand="INSERT INTO [Subscriber_Mstr] ([Email]) VALUES (@Email)" 
      SelectCommand="SELECT [SubId], [Email] FROM [Subscriber_Mstr]" 
      UpdateCommand="UPDATE [Subscriber_Mstr] SET [Email] = @Email WHERE [SubId] = @SubId">
      <DeleteParameters>
          <asp:Parameter Name="SubId" Type="Int32" />
      </DeleteParameters>
      <InsertParameters>
          <asp:Parameter Name="Email" Type="String" />
      </InsertParameters>
      <UpdateParameters>
          <asp:Parameter Name="Email" Type="String" />
          <asp:Parameter Name="SubId" Type="Int32" />
      </UpdateParameters>
  </asp:SqlDataSource>
  <br />
  <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
      DataSourceID="SqlDataSource6" 
      EmptyDataText="There are no data records to display." Width="1404px"  
      CssClass="table table-striped table-borderedtable-hover" BackColor="White" 
      BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
      ForeColor="Black" GridLines="Vertical">
      <AlternatingRowStyle BackColor="#CCCCCC" />
      <Columns>
          <asp:BoundField DataField="Sellid" HeaderText="Sellid" ReadOnly="True" 
              SortExpression="Sellid" />
          <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
          <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
          <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
          <asp:BoundField DataField="Country" HeaderText="Country" 
              SortExpression="Country" />
          <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
          <asp:BoundField DataField="Average" HeaderText="Average" 
              SortExpression="Average" />
          <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
          <asp:BoundField DataField="Fuel" HeaderText="Fuel" SortExpression="Fuel" />
          <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
          <asp:BoundField DataField="Adhar" HeaderText="Adhar" SortExpression="Adhar" />
          <asp:BoundField DataField="Address" HeaderText="Address" 
              SortExpression="Address" />
          <asp:TemplateField>
            <ItemTemplate>
                   <img  src='../profile/<%#Eval("Carimg") %>'height="60px" width="50px"/>
                     </ItemTemplate>
                   </asp:TemplateField>
          <asp:TemplateField>
            <ItemTemplate>
               <img  src='../profile/<%#Eval("Docimg") %>'height="60px" width="50px"/>
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
  <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
      SelectCommand="SELECT [Sellid], [Name], [Email], [Phone], [Country], [Model], [Average], [Type], [Fuel], [Year], [Adhar], [Address], [Carimg], [Docimg] FROM [Old_Car_Sell_Mstr]">
  </asp:SqlDataSource>
  <br />
  
 

                                  </form>
</asp:Content>

