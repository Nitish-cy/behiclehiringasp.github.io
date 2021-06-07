<%@ Page Title="" Language="C#" MasterPageFile="~/Driver/MasterPage2.master" AutoEventWireup="true" CodeFile="News.aspx.cs" Inherits="Driver_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server">
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
  </form>
</asp:Content>

