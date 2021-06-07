<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="shop-cart.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<form runat="server">
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Shop Cart</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">Shop Cart</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Shop cart start -->
<div class="shop-cart content-area-17">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="heading-4">
                    <h4>Shopping Cart</h4>
                    <p>Lorem ipsum dolor sit amet, consectetu radipisi</p>
                </div>
            </div>
            <div class="col-lg-8">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                 <table class="shop-table cart">
                    <thead>
                    <tr>
                        <th  class="product-name t-600">Product</th>
                        <th class="description t-600">Description</th>
                        <th class="product-price t-600">Price</th>
                        <th class="product-quantity t-600">Qty</th>
                        <th class="product-subtotal t-600">Total</th>
                        <th class="product-remove">&nbsp;</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td class="product-thumbnail">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("image") %>' /></td>
                        <td class="product-name">
                            <a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean ac tortor</a>
                        </td>
                        <td class="d_none">'<%#Eval("Price") %>'</td>
                        <td><input class="qty" type="text" value="+1"></td>
                        <td>£58.00</td>
                        <td class="product-remove"><a href="#"><i class="fa fa-close"></i></a></td>
                    </tr>
                  
                    </tbody>
                </table>
                </ItemTemplate>
                </asp:ListView>
               
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Product_Mtr] WHERE ([ProductId] = @ProductId)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ProductId" QueryStringField="pid" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
               
            </div>
            <div class="col-lg-4">
                <div class="cart-total-box">
                    <h5>Cart Totals</h5>
                    <hr>
                    <ul>
                        <li>
                            Subtotal<span class="pull-right">$170.00</span>
                        </li>
                        <li>
                            Shipping Charge<span class="pull-right">$234.00</span>
                        </li>
                        <li>
                            Local Delivery <span class="pull-right">$334</span>
                        </li>
                        <li>
                            Flat Rate<span class="pull-right">$1234</span>
                        </li>
                        <li>
                            International<span class="pull-right">$652</span>
                        </li>
                    </ul>
                    <hr>
                    <p class="mar-b-50">
                        Grand Total<span class="pull-right">$9531</span>
                    </p>
                    <br>
                    <button class="btn btns-black btn-block btn-md" type="submit">Update Cart</button>
                    <button class="btn  btn-block btn-md button-theme" type="submit">Proceed To Checkout</button>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
</asp:Content>

