<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="buyerservices.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat="server">
									

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
--%>										  <asp:TextBox ID="txtdes" runat="server" placeholder="Description"  class="col-xs-10 col-sm-5"></asp:TextBox>
	
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
                                            <asp:Button ID="Button1" runat="server" Text="Submit"  class="btn btn-info" 
                                                onclick="Button1_Click"                                               />
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
                                       <%--  <%--<div class="table-responsive">--%>  
                                         <br />
                                         <br />

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="DescriptionId"
    DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display."  CssClass="table table-striped table-borderedtable-hover">
    <Columns>
        <asp:BoundField DataField="DescriptionId" HeaderText="DescriptionId" ReadOnly="True"
            SortExpression="DescriptionId" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
        <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile/<%#Eval("Image") %>' height="80px" width="50px" />
                                           </ItemTemplate>
                                           </asp:TemplateField>
        <asp:BoundField DataField="iconclass" HeaderText="iconclass" SortExpression="iconclass" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
    DeleteCommand="DELETE FROM [buyerservice] WHERE [DescriptionId] = @DescriptionId"
    InsertCommand="INSERT INTO [buyerservice] ([Name], [Description], [Image], [iconclass]) VALUES (@Name, @Description, @Image, @iconclass)"
    ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [DescriptionId], [Name], [Description], [Image], [iconclass] FROM [buyerservice]"
    UpdateCommand="UPDATE [buyerservice] SET [Name] = @Name, [Description] = @Description, [Image] = @Image, [iconclass] = @iconclass WHERE [DescriptionId] = @DescriptionId">
    <DeleteParameters>
        <asp:Parameter Name="DescriptionId" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Image" Type="String" />
        <asp:Parameter Name="iconclass" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="Description" Type="String" />
        <asp:Parameter Name="Image" Type="String" />
        <asp:Parameter Name="iconclass" Type="String" />
        <asp:Parameter Name="DescriptionId" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</form>

</asp:Content>

