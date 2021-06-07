<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="shop-list.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Shop List</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">Shop List</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Shop list start -->
<div class="shop-list content-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="heading-4">
                    <h4>Shop List</h4>
                    <p>Mishra Nitish</p>
                </div>
            </div>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
             <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="shop-box">
                    <div class="shop-theme">
                        <img class="img-fluid" src='../profile/<%#Eval("image") %>' alt="shop-theme">
                        <div class="price-box">
                            <span class="del"><del>$<%#Eval("Oldprice") %></del></span><br>
                            <span>$<%#Eval("Newprice") %></span></div>
                    </div>
                    <div class="shop-details">
                        <h3><a href="shop-detail.aspx?pid=<%#Eval("pid") %>"><%#Eval("Name") %></a></h3>
                        <a class="btn btn-border btn-sm" role="button">Add to Cart</a>
                    </div>
                </div>
            </div>
            </ItemTemplate>
            </asp:ListView>
       
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Shop_List]"></asp:SqlDataSource>
       
        </div>
    </div>
</div>
    </form>
</asp:Content>

