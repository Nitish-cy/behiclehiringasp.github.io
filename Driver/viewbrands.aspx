<%@ Page Title="" Language="C#" MasterPageFile="~/Driver/MasterPage2.master" AutoEventWireup="true" CodeFile="viewbrands.aspx.cs" Inherits="Driver_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form runat="server">
 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                                        CellPadding="3" DataKeyNames="brandid" DataSourceID="SqlDataSource1" 
                                        EmptyDataText="There are no data records to display." ForeColor="Black" 
                                        GridLines="Vertical" Height="16px" Width="1106px" 
                                        CssClass="table table-striped table-borderedtable-hover">
                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:BoundField DataField="brandid" HeaderText="brandid" ReadOnly="True" 
                                                    SortExpression="brandid" />
                                                <asp:BoundField DataField="brandname" HeaderText="brandname" 
                                                    SortExpression="brandname" />
                                                <asp:BoundField DataField="numberofmodel" HeaderText="numberofmodel" 
                                                    SortExpression="numberofmodel" />
                                                <asp:TemplateField>
                                           <ItemTemplate>
                                           <img  src='../profile/<%#Eval("Logo") %>' height="30px" width="50px" />
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
                                        DeleteCommand="DELETE FROM [brand_mstr] WHERE [brandid] = @brandid" 
                                        InsertCommand="INSERT INTO [brand_mstr] ([brandname], [numberofmodel], [Logo]) VALUES (@brandname, @numberofmodel, @Logo)" 
                                        SelectCommand="SELECT [brandid], [brandname], [numberofmodel], [Logo] FROM [brand_mstr]" 
                                        UpdateCommand="UPDATE [brand_mstr] SET [brandname] = @brandname, [numberofmodel] = @numberofmodel, [Logo] = @Logo WHERE [brandid] = @brandid">
                                        <DeleteParameters>
                                            <asp:Parameter Name="brandid" Type="Int32" />
                                        </DeleteParameters>
                                        <InsertParameters>
                                            <asp:Parameter Name="brandname" Type="String" />
                                            <asp:Parameter Name="numberofmodel" Type="String" />
                                            <asp:Parameter Name="Logo" Type="String" />
                                        </InsertParameters>
                                        <UpdateParameters>
                                            <asp:Parameter Name="brandname" Type="String" />
                                            <asp:Parameter Name="numberofmodel" Type="String" />
                                            <asp:Parameter Name="Logo" Type="String" />
                                            <asp:Parameter Name="brandid" Type="Int32" />
                                        </UpdateParameters>
                                    </asp:SqlDataSource>

</form>
</asp:Content>

