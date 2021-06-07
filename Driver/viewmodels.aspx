<%@ Page Title="" Language="C#" MasterPageFile="~/Driver/MasterPage2.master" AutoEventWireup="true" CodeFile="viewmodels.aspx.cs" Inherits="Driver_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form runat="server">
                                   <asp:GridView ID="GridView1" runat="server" 
      AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
      BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
      DataSourceID="SqlDataSource2" 
      EmptyDataText="There are no data records to display." ForeColor="Black" 
      GridLines="Vertical" Height="156px" Width="1355px"   CssClass="table table-striped table-borderedtable-hover">
                                       <AlternatingRowStyle BackColor="#CCCCCC" />
                                       <Columns>
                                           <asp:BoundField DataField="Modelid" HeaderText="Modelid" ReadOnly="True" 
                                               SortExpression="Modelid" />
                                           <asp:BoundField DataField="Brandid" HeaderText="Brandid" 
                                               SortExpression="Brandid" />
                                           <asp:BoundField DataField="Modelname" HeaderText="Modelname" 
                                               SortExpression="Modelname" />
                                           <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                                           <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                                           <asp:BoundField DataField="Transmission" HeaderText="Transmission" 
                                               SortExpression="Transmission" />
                                           <asp:BoundField DataField="Average" HeaderText="Average" 
                                               SortExpression="Average" />
                                           <asp:BoundField DataField="Fueltype" HeaderText="Fueltype" 
                                               SortExpression="Fueltype" />
                                           <asp:BoundField DataField="Noofgears" HeaderText="Noofgears" 
                                               SortExpression="Noofgears" />
                                           <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile/<%#Eval("Carphoto") %>'  height="30px" width="50px" />
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
  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      SelectCommand="SELECT [Modelid], [Brandid], [Modelname], [Price], [Year], [Transmission], [Average], [Fueltype], [Noofgears], [Carphoto] FROM [moderl_mstr]">
  </asp:SqlDataSource>

  </form>
</asp:Content>

