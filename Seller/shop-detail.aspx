<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="shop-detail.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <form id="form1" runat="server">

<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Shop Details</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">Shop Details</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Shop details start -->
<div class="car-details-page content-area shop-details">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12 col-xs-12">
                <div class="car-details-section">
                    <div id="carDetailsSlider" class="carousel car-details-sliders slide mb-40">
                        <!-- main slider carousel items -->
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" >
                        <ItemTemplate>
                         <div class="carousel-inner">
                            <div class="active item carousel-item" data-slide-number="0">
                                <img src='../profile/<%#Eval("Image") %>' class="img-fluid" alt="slider-photo">
                            </div>
                            
                        </div>
                         <ul class="carousel-indicators car-properties list-inline nav nav-justified">
                            
                              <li class="list-inline-item active">
                                <a id="carousel-selector-0" class="selected" data-slide-to="0" data-target="#carDetailsSlider">
                                    <img src='../profile/<%#Eval("Image") %>' class="img-fluid" alt="small-photo">
                                </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                           
                        </ul>
                        <asp:ListView ID="ListView3" runat="server">
                        <ItemTemplate>
                        
                        </ItemTemplate>
                        </asp:ListView>
                        <div class="heading-car-2">
                            <h3><%#Eval("Name") %></h3>
                            <div class="price-location"><span class="car-price">$<%#Eval("Newprice") %></span><span class="rent">For Sale</span> <span class="location"><i class="flaticon-pin"></i>123 Kathal St. Tampa City,</span></div>
                        </div>
                    </div>
                    <!-- Car description start -->
                    <div class="car-description mb-50">
                        <h3 class="heading-2">
                            Description
                        </h3>
                        <p><%#Eval("Description") %></p>
                        <p><%#Eval("Description") %></p>
                            <p><%#Eval("Description") %></p>
                        <p><%#Eval("Description") %></p>
                    </div>
                        </ItemTemplate>
                        </asp:ListView>
                       
                        
                       
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Shop_List] WHERE ([pid] = @pid)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="pid" QueryStringField="pid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                       
                        
                       
                        <!-- main slider carousel nav controls -->
                       
                </div>
                </div>
            
            <div class="col-lg-4 col-md-12">
                <div class="sidebar-right">
                    <!-- Shop info start -->
                    <div class="widget shop-info">
                        <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource3">
                        <ItemTemplate>
                         <h3 class="sidebar-title">Automotive Door</h3>
                        <div class="s-border"></div>
                        <div class="m-border"></div>
                        <div class="reviews-box clearfix">
                            <ul class="reviews-star-list">
                                <li><i class="fa fa-star"> </i></li>
                                <li><i class="fa fa-star"> </i></li>
                                <li><i class="fa fa-star"> </i></li>
                                <li><i class="fa fa-star"> </i></li>
                                <li><i class="fa fa-star"> </i></li>
                            </ul>
                            <div class="reviews">
                                <a href="#">15 Review(s)</a>
                                <a href="#">
                                    <i class="fa fa-pencil"></i>write a review
                                </a>
                            </div>
                        </div>
                        <div class="price">
                            <del>$<%#Eval("Oldprice") %></del>$<%#Eval("Newprice") %></div>
                        <div class="horizontal">
                            <ul>
                                <li><span>Manufacturer :</span> <%#Eval("Manufacture") %></li>
                                <li><span>Availability :</span> <%#Eval("Availability") %>(s)</li>
                                <li><span>product code :</span> <%#Eval("Prodcode") %></li>
                            </ul>
                        </div>
                        <p class="lead"><%#Eval("Description") %></p>

                           
                            <div class="row">
                               
                                <div class="col-md-7 col-sm-7 form-group">
                                <a href="shop-cart.aspx">    <button class="btn btn-block btn-md button-theme">Add to cart</button></a>
                                </div>
                            </div>
                       </ItemTemplate>

                        </asp:ListView>
                       
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Shop_List] WHERE ([pid] = @pid)">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="pid" QueryStringField="pid" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                       
                    </div>
                    <!-- Recent posts start -->
                    <div class="widget recent-posts">
                        <h3 class="sidebar-title">Recent Posts</h3>
                        <div class="s-border"></div>
                        <div class="m-border"></div>
                        
                            <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource4">
                            <ItemTemplate>
                            <div class="media mb-4">
                             <a class="pr-3" href="car-details.aspx?modid=<%#Eval("ModelId") %>">
                                <img class="media-object" src='../profile/<%#Eval("Image") %>' alt="small-car">
                            </a>
                            &nbsp;<div class="media-body align-self-center">
                                <h5>
                                    <a href="car-details.aspx?modid=<%#Eval("ModelId") %>"><%#Eval("ModelName") %></a>
                                </h5>
                                <div class="listing-post-meta">
                                    <%#Eval("FuelType") %> | <a href="#"><i class="fa fa-calendar"></i> Jan 12, 2020</a>
                                </div>
                            </div>
                        </div>
                            </ItemTemplate>
                            </asp:ListView>
                           
                        
                        
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [SellCarModel]"></asp:SqlDataSource>
                           
                        
                        
                    <br />
                    <!-- Financing calculator start -->
                   
                </div>
            </div>
        </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h3 class="heading-2">Related Products       </div>
            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" 
               >
            <ItemTemplate>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="shop-box">
                    <div class="shop-theme">
                        <img class="img-fluid" src='../profile/<%#Eval("Image") %>' alt="shop-theme">
                        <div class="price-box">
                            <span class="del"><del>$<%#Eval("Oldprice")%></del></span><br>
                            <span>$<%#Eval("Newprice")%><span>
                        </div>
                    </div>
                    <div class="shop-details">
                        <h3><a href="shop-detail.aspx?pid=<%#Eval("pid")%>"><%#Eval("Name")%></a></h3>
                        <a class="btn btn-border btn-sm" role="button">Add to Cart</a>
                    </div>
                </div>
            </div>
            
            </ItemTemplate>
            </asp:ListView>
            
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Shop_List] WHERE ([pid] &lt;&gt; @pid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="pid" QueryStringField="pid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
        </div>
        </div>
    </div>
</div>
    </form>
</asp:Content>

