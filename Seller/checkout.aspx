<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="checkout.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<form runat="server">
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Shop Checkout</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">Shop Checkout</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Shop checkout start -->
<div class="shop-checkout content-area-5">
    <div class="container">
        <div class="from-checkout">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="heading-4">
                        <h4>Billing Address</h4>
                    </div>
                    <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <%--<input type="text" class="form-control" placeholder="First Name">--%>
                                    <%--<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>--%>
                                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                        DataSourceID="SqlDataSource1" DataTextField="ModelName" 
                                        DataValueField="ModelName"  class="form-control">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [SellCarModel]"></asp:SqlDataSource>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <%--<input type="text" class="form-control" placeholder="Last Name">--%>
                                   <%-- <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>--%>
                                   <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                                        DataSourceID="SqlDataSource2" DataTextField="Price" DataValueField="Price"  class="form-control">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                        SelectCommand="SELECT * FROM [SellCarModel] WHERE ([ModelName] = @ModelName)">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="DropDownList1" Name="ModelName" 
                                                PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <%--<input type="text" class="form-control" placeholder="First Name">--%>
                                    <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <%--<input type="text" class="form-control" placeholder="Last Name">--%>
                                    <asp:TextBox ID="txtlastname" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <%--<input type="text" class="form-control" placeholder="Company Name">--%>
                            <asp:TextBox ID="txtcomp" runat="server" class="form-control" placeholder="Email Address"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtadd" runat="server" class="form-control" placeholder="Address"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txttown" runat="server" class="form-control" placeholder="Town/City"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtcountry" runat="server" class="form-control" placeholder="State / Country"></asp:TextBox>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox ID="txtpost" runat="server" class="form-control" placeholder="Post Code"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                   <asp:TextBox ID="txthone" runat="server" class="form-control" placeholder="Phone"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                 
                    <br>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="heading-4">
                        <h4>Shipping Address</h4>
                    </div>
                    
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox ID="txtsfname" runat="server" class="form-control" placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                   <asp:TextBox ID="txtslname" runat="server" class="form-control" placeholder="Last Name"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                           <asp:TextBox ID="txtscopany" runat="server" class="form-control" placeholder="Email Address"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtsadd" runat="server" class="form-control" placeholder="Address"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtstown" runat="server" class="form-control" placeholder="Town / City"></asp:TextBox>
                        </div>
                        <div class="form-group">
                           <asp:TextBox ID="txtscountry" runat="server" class="form-control" placeholder="State / Country"></asp:TextBox>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:TextBox ID="txtspost" runat="server" class="form-control" placeholder="Post Code"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                  <asp:TextBox ID="txtsphone" runat="server" class="form-control" placeholder="Phone"></asp:TextBox> 
                                                                 </div>
                            </div>
                        </div>
                  
                    <br>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="our-payment">
                        <div class="payment-box mb-40">
                            <label class="form-check-label">
                               <%-- <input type="checkbox" class="form-check-input">--%>
                                <asp:RadioButton ID="rddirect" runat="server" GroupName="trans"/>
                                Direct Bank Transfer
                            </label>
                            <p>If you want then you can transfer money direct to bank</p>
                        </div>
                        <div class="payment-box mb-40">
                            <label class="form-check-label">
                              <asp:RadioButton ID="rdpaypal" runat="server"  GroupName="trans"/>
                               Paypal
                            </label>
                            <p>If you want then you can pay by paypal </p>
                        </div>
                        <div class="payment-box mb-0">
                            <label class="form-check-label">
                               <asp:RadioButton ID="rdpaytm" runat="server"  GroupName="trans"/>
                               Paytm
                            </label>
                            <p>If you want then you can Pay with paytm</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-12">
                    <div class="cart-total-box">
                        <%--<h5>Cart Totals</h5>
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
                        <button class="btn btns-black btn-block btn-md" type="submit">Update Cart</button>--%>
                     <%--   <button class="btn  btn-block btn-md button-theme" type="submit">Proceed To Checkout</button>--%>
                        <asp:Button ID="Button1" runat="server" Text="Proceed To Checkout" 
                            class="btn  btn-block btn-md button-theme" onclick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
</asp:Content>

