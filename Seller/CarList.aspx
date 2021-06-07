<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="CarList.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 
    
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Car List</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">List</li>
            </ul>
        </div>
    </div>
</div>    
 
<div class="featured-car content-area">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12"> 
                <!-- Option bar start -->
                <div class="option-bar clearfix">
                    <div class="row">
                        <div class="col-lg-5 col-md-6 col-sm-12">
                            <div class="sorting-options2">
                                <h5>Showing 1-15 of 69 Listings</h5>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-6 col-sm-12">
                            <div class="sorting-options float-right">
                                <a href="#" class="change-view-btn active-view-btn float-right"><i class="fa fa-th-list"></i></a>
                                <a href="#" class="change-view-btn float-right"><i class="fa fa-th-large"></i></a>
                            </div>
                            <%--<div class="sorting-options-3 float-right">
                                <select class="selectpicker search-fields" name="default-order">
                                    <option>Default Order</option>
                                    <option>Price High to Low</option>
                                    <option>Price: Low to High</option>
                                    <option>Newest Properties</option>
                                    <option>Oldest Properties</option>
                                </select>
                            </div>--%>
                        </div>
                    </div>
                </div>
                   
                <!-- Car box 2 start -->
                <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                  <div class="car-box-2" >
                    <div class="row">
                        <div class="col-lg-5 col-md-5 col-pad">
                            <div class="car-thumbnail">
                                <a href="car-details.html" class="car-img">
                                    <div class="for">For sale</div>
                                    <div class="price-box">
                                        <span class="del"><del>$950.00</del></span>
                                        <br>
                                        <span>$<%#Eval("Price") %></span>
                                    </div>
                                    <img class="d-block w-100" src='../profile/<%#Eval("Image") %>' alt="car">
                                </a>
                                &nbsp;<div class="carbox-overlap-wrapper">
                                    <div class="overlap-box">
                                        <div class="overlap-btns-area">
                                            <a class="overlap-btn" data-toggle="modal" data-target="#carOverviewModal">
                                                <i class="fa fa-eye-slash"></i>
                                            </a>
                                            <a class="overlap-btn wishlist-btn">
                                                <i class="fa fa-heart-o"></i>
                                            </a>
                                            <a class="overlap-btn compare-btn">
                                                <i class="fa fa-balance-scale"></i>
                                            </a>
                                            <div class="car-magnify-gallery">
                                                <a href="img/car/car-1.jpg" class="overlap-btn" data-sub-html="<h4>Lamborghini</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>">
                                                    <i class="fa fa-expand"></i>
                                                    <img class="hidden" src="img/car/car-1.jpg" alt="hidden-img">
                                                </a>
                                                &nbsp;<a href="img/car/car-2.jpg" class="hidden" data-sub-html="<h4>Ferrari Red Car</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>"><img class="hidden" src="img/car/car-2.jpg" alt="hidden-img">
                                                </a>
                                                &nbsp;<a href="img/car/car-3.jpg" class="hidden" data-sub-html="<h4>Bmw e46 m3 Diski Serie</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>"><img class="hidden" src="img/car/car-3.jpg" alt="hidden-img">
                                                </a>
                                                &nbsp;<a href="img/car/car-4.jpg" class="hidden" data-sub-html="<h4>Volkswagen Scirocco 2016</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>"><img class="hidden" src="img/car/car-4.jpg" alt="hidden-img">
                                                </a>
                                                &nbsp;<a href="img/car/car-5.jpg" class="hidden" data-sub-html="<h4>Porsche Cayen Last</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>"><img class="hidden" src="img/car/car-5.jpg" alt="hidden-img">
                                                </a>
                                            &nbsp;</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-7 col-pad align-self-center">
                            <div class="detail">
                                <h3 class="title">
                                    <a href='car-details.aspx?modid=<%#Eval("ModelId")%>'><%#Eval("ModelName") %></a>
                                </h3>
                                <ul class="custom-list">
                                    <li>
                                        <a href="#"><%#Eval("CarType") %></a> /
                                    </li>
                                    <li>
                                        <a href="#"><%#Eval("Transmission") %></a> /
                                    </li>
                                    <li>
                                        <a href="#"><%#Eval("Location") %></a> 
                                    </li>
                                    <li>
                                        <a href="#">Sports</a>
                                    </li>
                                </ul>
                                <ul class="facilities-list clearfix">
                                    <li>
                                        <i class="flaticon-way"></i> <%#Eval("Mileage") %> km
                                    </li>
                                    <li>
                                        <i class="flaticon-manual-transmission"></i>  <%#Eval("Transmission") %>
                                    </li>
                                    <li>
                                        <i class="flaticon-calendar-1"></i><%#Eval("Year") %>
                                    </li>
                                    <li>
                                        <i class="flaticon-fuel"></i><%#Eval("FuelType") %>
                                    </li>
                                    <li>
                                        <i class="flaticon-car"></i> Sport
                                    </li>
                                    <li>
                                        <i class="flaticon-gear"></i> <%#Eval("Color") %>
                                    </li>
                                </ul>
                            </div>
                            <a class="btn btn-border btn-sm" role="button" href="checkout.aspx">Buy Now</a>
                        </div>
                    </div>
                </div>
                
           
                </ItemTemplate>


                </asp:ListView>

                
              
                


                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [SellCarModel]"></asp:SqlDataSource>

                    <div class="pagination-box p-box-2 text-center">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <li class="page-item">
                                <a class="page-link" href="#"><i class="fa fa-angle-left"></i></a>
                            </li>
                            <li class="page-item"><a class="page-link active" href="#">1</a></li>
                            <li class="page-item"><a class="page-link" href="#">2</a></li>
                            <li class="page-item"><a class="page-link" href="#">3</a></li>
                            <li class="page-item">
                                <a class="page-link" href="#"><i class="fa fa-angle-right"></i></a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="sidebar-right">
                    <!-- Advanced search start -->
                    <div class="widget advanced-search2">
                        <h3 class="sidebar-title">Search Cars</h3>
                        <div class="s-border"></div>
                        <div class="m-border"></div>
                        <form runat="server">
                            <div class="form-group">
                                 <asp:DropDownList ID="ddlname" runat="server" class="form-control" 
                                DataSourceID="SqlDataSource6" DataTextField="ModelName" 
                                DataValueField="ModelName">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [SellCarModel]"></asp:SqlDataSource>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList ID="ddltype" runat="server" class="form-control" >
                                <asp:ListItem>New Car</asp:ListItem>
                                <asp:ListItem>Old Car</asp:ListItem>
                              
                               
                            </asp:DropDownList>
                           
                            </div>
                            <div class="form-group">
                             <asp:DropDownList ID="ddlfuel" runat="server" class="form-control" >
                               <asp:ListItem>Petrol</asp:ListItem>
                               <asp:ListItem>diesel</asp:ListItem>
                                
                            </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:DropDownList ID="ddlyear" runat="server" class="form-control" >
                                <asp:ListItem>2016</asp:ListItem>
                                <asp:ListItem>2017</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>
                                <asp:ListItem>2019</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>
                                <asp:ListItem>2021</asp:ListItem>
                                
                            </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                 <asp:DropDownList ID="ddltrans" runat="server" class="form-control">
                                <asp:ListItem>Automatic</asp:ListItem>
                                <asp:ListItem>Mannual</asp:ListItem>
                                
                            </asp:DropDownList>
                            </div>
                            <div class="range-slider clearfix">
                                <label>Price</label>
                                <div data-min="0" data-max="150000"  data-min-name="min_price" data-max-name="max_price" data-unit="USD" class="range-slider-ui ui-slider" aria-disabled="false"></div>
                                <div class="clearfix"></div>
                            </div>
                            <a class="show-more-options" data-toggle="collapse" data-target="#options-content">
                                <i class="fa fa-plus-circle"></i> Other Features
                            </a>
                            <div id="options-content" class="collapse">
                                <h3 class="sidebar-title">Brands</h3>
                                <div class="s-border"></div>
                                <div class="m-border"></div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox2" type="checkbox">
                                    <label for="checkbox2">
                                        Audi
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox3" type="checkbox">
                                    <label for="checkbox3">
                                        BMW
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox4" type="checkbox">
                                    <label for="checkbox4">
                                        Honda
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox1" type="checkbox">
                                    <label for="checkbox1">
                                        Lamborghini
                                    </label>
                                </div>
                                <div class="checkbox checkbox-theme checkbox-circle">
                                    <input id="checkbox5" type="checkbox">
                                    <label for="checkbox5">
                                        Toyota
                            Toyota
                                    </label>
                                </div>
                                <br>
                            </div>
                            <div class="form-group mb-0">
                                <asp:Button ID="Button1" runat="server" Text="Search" class="search-button btn" onclick="Button1_Click"
                                />
                            </div>
                        </form>
                    </div>
                    <!-- Recent posts start -->
                      <div class="widget recent-posts">
                        <h3 class="sidebar-title">Recent Posts</h3>
                      <div  class="s-border"></div>
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
                    <!-- Posts By Category Start -->
                   
                    <!-- Question start -->
                    <div class="widget question widget-3">
                        <h5 class="sidebar-title">Get a Question?</h5>
                        <div class="s-border"></div>
                        <div class="m-border"></div>
                        <ul class="contact-info">
                            <li>
                                <i class="flaticon-pin"></i>B-204 Shashiroop Homes Udhna Surat
                            </li>
                            <li>
                                <i class="flaticon-mail"></i><a href="mailto:info@themevessel.com">mishranitish457@gmail.com</a>
                            </li>
                            <li>
                                <i class="flaticon-phone"></i><a href="tel:+0477-85x6-552">7359698432</a>
                            </li>
                        </ul>
                        <div class="social-list clearfix">
                            <ul>
                                <li><a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" class="google-bg"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#" class="rss-bg"><i class="fa fa-rss"></i></a></li>
                                <li><a href="#" class="linkedin-bg"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

  
</asp:Content>

