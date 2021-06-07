<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="Car-Details.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<form runat=server Autocomplete="off">
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Car Details</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">Car Details</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Car details page start -->
<div class="car-details-page content-area-6">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12 col-xs-12">
                <div class="car-details-section">
                    <!-- Heading start -->
                    <div class="heading-car clearfix">
                        <div class="pull-left">
                            <h3>Porsche Cayen Last</h3>
                            <h6>
                                <i class="flaticon-pin"></i>123 Kathal St. Tampa City,
                            </h6>
                        </div>
                        <div class="pull-right">
                            <div class="price-box-3"><sup>$</sup>650<span>/month</span></div>
                        </div>
                    </div>
                    <!-- carDetailsSlider start -->
                    
                        <!-- main slider carousel items -->
                        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                        <div id="carDetailsSlider" class="carousel car-details-sliders slide slide-2">
                         <div class="carousel-inner">
                            <div class="active item carousel-item" data-slide-number="0">
                                <img src='../profile/<%#Eval("Image") %>' class="img-fluid" alt="slider-car">
                            </div>
                           
                        </div>
                        <!-- main slider carousel nav controls -->
                            
                        <ul class="carousel-indicators car-properties list-inline nav nav-justified">
                            <li class="list-inline-item active">
                                <a id="carousel-selector-0" class="selected" data-slide-to="0" data-target="#carDetailsSlider">
                                    <img src='../profile/<%#Eval("Image") %>' class="img-fluid" alt="small-car">
                                </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
                           
                        </ul>    
                    
                        
                    </div>
                    <!-- Advanced search start -->
                    <div class="widget-2 advanced-search bg-grea-2 as-2">
                        <h3 class="sidebar-title">Refine Your Search</h3>
                        <div class="s-border"></div>
                        <div class="m-border"></div>
                        <ul>
                            <li>
                                <span>Make</span>Ferrari
                            </li>
                            <li>
                                <span>Model</span><%#Eval("ModelName") %>'
                            </li>
                            <li>
                                <span>Body Style</span>Convertible
                            </li>
                            <li>
                                <span>Year</span><%#Eval("Year") %>'
                            </li>
                            <li>
                                <span>Condition</span><%#Eval("CarType") %>'
                            </li>
                            <li>
                                <span>Mileage</span><%#Eval("Mileage") %>'
                            </li>
                            <li>
                                <span>Interior Color</span><%#Eval("Color") %>'
                            </li>
                            <li>
                                <span>Transmission</span><%#Eval("Transmission") %>'
                            </li>
                            <li>
                                <span>Engine</span>3.4L Mid-Engine V6
                            </li>
                            <li>
                                <span>No. of Gears:</span><%#Eval("NoOfGears") %>'
                            </li>
                            <li>
                                <span>Location</span><%#Eval("Location") %>'
                            </li>
                            <li>
                                <span>Fuel Type</span><%#Eval("FuelType") %>'
                            </li>
                        </ul>
                    </div>
                       
                        
                    <!-- Tabbing box start -->
                    <div class="tabbing tabbing-box mb-40">
                        <ul class="nav nav-tabs" id="carTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active show" id="one-tab" data-toggle="tab" href="#one" role="tab" aria-controls="one" aria-selected="false">Description</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="two-tab" data-toggle="tab" href="#two" role="tab" aria-controls="two" aria-selected="false">Features</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="6-tab" data-toggle="tab" href="#6" role="tab" aria-controls="6" aria-selected="true">Specifications</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="three-tab" data-toggle="tab" href="#three" role="tab" aria-controls="three" aria-selected="true">Related Car</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="5-tab" data-toggle="tab" href="#5" role="tab" aria-controls="5" aria-selected="true">Location</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="4-tab" data-toggle="tab" href="#4" role="tab" aria-controls="4" aria-selected="true">Video</a>
    
                            </li>
                        </ul>
                        <div class="tab-content" id="carTabContent">
                            <div class="tab-pane fade active show" id="one" role="tabpanel" aria-labelledby="one-tab">
                                <div class="car-description mb-50">
                                    <h3 class="heading-2">
                                        Description
                                    </h3>
                                  <p>This is an amazing car . If you want then you can buy it it ia available in stock </p>
                                </div>
                            </div>
                            
                                     <div class="tab-pane fade" id="two" role="tabpanel" aria-labelledby="two-tab">
                                <div class="features-info mb-50">
                                    <h3 class="heading-2">Features</h3>
                                    
                           <div class="row">
                               <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                               <ul>
                               <li>
                                <span>Make</span>Ferrari
                            </li>
                            <li>
                                <span>Model</span><%#Eval("ModelName") %>'
                            </li>
                            <li>
                                <span>Body Style</span>Convertible
                            </li>
                            <li>
                                <span>Year</span><%#Eval("Year") %>'
                            </li>
                            <li>
                                <span>Condition</span><%#Eval("CarType") %>'
                            </li>
                            <li>
                                <span>Mileage</span><%#Eval("Mileage") %>'
                            </li>
                            <li>
                                <span>Interior Color</span><%#Eval("Color") %>'
                            </li>
                            <li>
                                <span>Transmission</span><%#Eval("Transmission") %>'
                            </li>
                            <li>
                                <span>Engine</span>3.4L Mid-Engine V6
                            </li>
                            <li>
                                <span>No. of Gears:</span><%#Eval("NoOfGears") %>'
                            </li>
                            <li>
                                <span>Location</span><%#Eval("Location") %>'
                            </li>
                            <li>
                                <span>Fuel Type</span><%#Eval("FuelType") %>'
                            </li>
                                            </ul>
                                        </div>
                                         </div>
                                       
                                </div>
                            </div>
                            
                           </ItemTemplate>
                        </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [SellCarModel] WHERE ([ModelId] = @ModelId)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="ModelId" QueryStringField="modid" 
                                Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                                    <asp:ListView ID="ListView2" runat="server" 
                                DataSourceID="SqlDataSource2"  >
                              
                                    <ItemTemplate>
                                     <div class="tab-pane fade " id="three" role="tabpanel" aria-labelledby="three-tab">
                                <div class="related-car mb-40">
                                    <h3 class="heading-2">Related Car</h3>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="car-box-3">
                                                <div class="car-thumbnail">
                                                    <a href="car-Details.aspx" class="car-img">
                                                        <div class="for">For </div>
                                                        <div class="price-box">
                                                            <span class="del"><del>$950.00</del></span>
                                                            <br>
                                                            <span>$1050.00</span>
                                                        </div>
                                                        <img class="d-block w-100" src='../profile/<%#Eval("Image") %>' alt="car">
                                                    </a>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="carbox-overlap-wrapper">
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
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="img/car/car-2.jpg" class="hidden" data-sub-html="<h4>Ferrari Red Car</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>"><img class="hidden" src="img/car/car-2.jpg" alt="hidden-img">
                                                                    </a>
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="img/car/car-3.jpg" class="hidden" data-sub-html="<h4>Bmw e46 m3 Diski Serie</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>"><img class="hidden" src="img/car/car-3.jpg" alt="hidden-img">
                                                                    </a>
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="img/car/car-4.jpg" class="hidden" data-sub-html="<h4>Volkswagen Scirocco 2016</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>"><img class="hidden" src="img/car/car-4.jpg" alt="hidden-img">
                                                                    </a>
                                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="img/car/car-5.jpg" class="hidden" data-sub-html="<h4>Porsche Cayen Last</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>"><img class="hidden" src="img/car/car-5.jpg" alt="hidden-img">
                                                                    </a>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="detail">
                                                    <h1 class="title">
                                                        <a href="car-Details.aspx"><%#Eval("ModelName") %></a>
                                                    </h1>
                                                    <ul class="custom-list">
                                                        <li>
                                                            <a href="#"><%#Eval("CarType") %></a> /
                                                        </li>
                                                        <li>
                                                            <a href="#"><%#Eval("Transmission") %></a> /
                                                        </li>
                                                        <li>
                                                            <a href="#">Sports</a>
                                                        </li>
                                                    </ul>
                                                    <ul class="facilities-list clearfix">
                                                        <li>
                                                            <i class="flaticon-fuel"></i><%#Eval("FuelType") %>
                                                        </li>
                                                        <li>
                                                            <i class="flaticon-way"></i> <%#Eval("Mileage") %> km
                                                        </li>
                                                        <li>
                                                            <i class="flaticon-manual-transmission"></i> Manual
                                                        </li>
                                                        <li>
                                                            <i class="flaticon-car"></i> Sport
                                                        </li>
                                                        <li>
                                                            <i class="flaticon-gear"></i> <%#Eval("Color") %>
                                                        </li>
                                                        <li>
                                                            <i class="flaticon-calendar-1"></i> <%#Eval("FuelType") %>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="footer clearfix">
                                                    <div class="pull-left ratings">
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star-o"></i>
                                                        <span>(65 Reviews)</span>
                                                    </div>
                                                    <ul class="pull-right icon">
                                                        <li><a href="#"><i class="fa fa-heart-o"></i></a></li>
                                                        <li><a href="#"><i class="fa fa-share-square-o"></i></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                        </div>
                                        </div>
                                        </div>
                                    </ItemTemplate>
                                    </asp:ListView>


                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [SellCarModel] WHERE ([ModelId] &lt;&gt; @ModelId)">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="ModelId" QueryStringField="modid" 
                                        Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>


                            <div class="tab-pane fade " id="6" role="tabpanel" aria-labelledby="6-tab">
                                <div class="car-amenities mb-30">
                                    <h3 class="heading-2">Specifications</h3>
                                    <div class="row">
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <ul class="amenities">
                                                <li>
                                                    <i class="fa fa-check"></i>Top Speed: 270
                                                </li>
                                                <li>
                                                    <i class="fa fa-check"></i>Fuel Type: Diesel
                                                </li>
                                                <li>
                                                    <i class="fa fa-check"></i>Mileage: 35,200 KM
                                                </li>
                                                <li>
                                                    <i class="fa fa-check"></i>Engine: 2901
                                                </li>
                                                <li>
                                                    <i class="fa fa-check"></i>Gear: 4
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <ul class="amenities">
                                                <li>
                                                    <i class="fa fa-check"></i>Drive Train: Front Wheel
                                                </li>
                                                <li>
                                                    <i class="fa fa-check"></i>Body Style: Sedan
                                                </li>
                                                <li>
                                                    <i class="fa fa-check"></i>Year:2019
                                                </li>
                                                <li>
                                                    <i class="fa fa-check"></i>Fuel Type: Diesel
                                                </li>
                                                <li>
                                                    <i class="fa fa-check"></i>Interior Color: White
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                                            <ul class="amenities">
                                                <li>
                                                    <i class="fa fa-check"></i>Doors: 4
                                                </li>
                                                <li>
                                                    <i class="fa fa-check"></i>Horse Power: 310
                                                </li>
                                                <li>
                                                    <i class="fa fa-check"></i>Location: Florisa, USA
                                                </li>
                                                <li>
                                                    <i class="fa fa-check"></i>Interior Color: Black
                                                </li>
                                                <li>
                                                    <i class="fa fa-check"></i>Security
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade " id="5" role="tabpanel" aria-labelledby="5-tab">
                                <div class="location mb-50">
                                    <div class="map">
                                        <h3 class="heading-2">Location</h3>
                                        <div id="map" class="contact-map"> <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3721.5723063682567!2d72.85999241488518!3d21.129610885943833!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be0504895ff6c6b%3A0xdc66744cd2c6c1cc!2sShashiroop%20Homes!5e0!3m2!1sen!2sin!4v1619638180211!5m2!1sen!2sin"
                                              width="100%" height="1000" style="border:0;" allowfullscreen="" loading="lazy"></iframe></div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade " id="4" role="tabpanel" aria-labelledby="4-tab">
                                <div class="inside-car mb-50">
                                    <h3 class="heading-2">
                                        Video
                                    </h3>
                                    <iframe src="https://www.youtube.com/embed/5e0LxrLSzok" allowfullscreen=""></iframe>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Heading 2 -->
                    <h3 class="heading-2">Comments Section</h3>
                   
                    <!-- Comments start -->
                    <ul class="comments">
                     
                        <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource4" 
                             >
                         <ItemTemplate>
                           <li>
                            <div class="comment">
                                <div class="comment-author">
                                    <a href="#">
                                        <img src='../profile/<%#Eval("image") %>' alt="comments-user">
                                    </a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                                <div class="comment-content">
                                    <div class="comment-meta">
                                        <h6>
                                            <%#Eval("name") %>
                                            <span class="float-right"><%#Eval("date") %><a href="Commentreply.aspx">Reply</a></span>
                                        </h6>
                                    </div>
                                    <p><%#Eval("comment") %></p>
                                </div>
                            </div>
                           
                    
                         </ItemTemplate>
                        </asp:ListView>

                     
                       
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [comment_mstr]"></asp:SqlDataSource>
                            <br />
                            <br />
                         <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource5">
                         <ItemTemplate>
                          <ul>
                                <li>
                                    <div class="comment">
                                        <div class="comment-author">
                                            <a href="#">
                                                <img src='../profile/<%#Eval("profile") %>' alt="comments-user">
                                            </a>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                                        <div class="comment-content">
                                            <div class="comment-meta">
                                                <h6>
                                                    <%#Eval("name") %>
                                                    <span class="float-right"><%#Eval("date") %></span>
                                                </h6>
                                            </div>
                                            <P><%#Eval("comment") %></P>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                              </li> 
                         </ItemTemplate>

                         </asp:ListView>
                     
                         
                     
                          <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             SelectCommand="SELECT * FROM [usercomreply]"></asp:SqlDataSource>
                     
                         
                     
                        
                    </ul>
                    <!-- Contact 2 start -->
                    <div class="contact-2 ca mb-50">
                        <h3 class="heading-2">Contact Form   </h3>  
                         <div class="row">
                            <div class="form-group name col-md-6">
                                    <%--<input type="text" name="name" class="form-control" placeholder="Name">--%>
                                    <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                </div>
                                <div class="form-group email col-md-6">
                                    <%--<input type="email" name="email" class="form-control" placeholder="Email">--%>
                                    <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                                </div>
                                <div class="form-group number col-md-6">
                                    <asp:TextBox ID="txtsubject" runat="server" class="form-control" placeholder="Subject"></asp:TextBox>
                                </div>
                                <div class="form-group number col-md-6">
                                    <%--<input type="text" name="phone" class="form-control" placeholder="Number">--%>
                                    <asp:TextBox ID="txtmob" runat="server" class="form-control" placeholder="Number"></asp:TextBox>
                                </div>
                                
                                <div class="form-group message col-md-12">
                                   <asp:TextBox ID="txtmsg" runat="server" class="form-control" placeholder="Write Message"></asp:TextBox>
                                </div>
                                <div class="send-btn col-md-12">
                                   <%-- <button type="submit" class="btn btn-md button-theme">Send Message</button>--%>
                                    <asp:Button ID="Submit" runat="server" Text="Send Message" 
                                        class="btn btn-md button-theme" onclick="Submit_Click"/>
                                </div>
                            </div>
                     <%-- </form>--%>
                </div>
          </div>
          </div>
            <div class="col-lg-4 col-md-12">
                <div class="sidebar-right">
                    <!-- Advanced search start -->
                    <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3">
                    <ItemTemplate>
                     <div class="widget advanced-search d-none-992">
                        <h3 class="sidebar-title">Refine Your Search </h3>      
                              <div class="m-border"></div>
                        <ul>
                            <li>
                                <span>Make</span>Ferrari
                            </li>
                            <li>
                                <span>Model</span><%#Eval("ModelName") %></li>
                            <li>
                                <span>Body Style</span>Convertible
                            </li>
                            <li>
                                <span>Year</span><%#Eval("Year") %></li>
                            <li>
                                <span>Condition</span><%#Eval("CarType") %></li>
                            <li>
                                <span>Mileage</span><%#Eval("Mileage") %>mi
                            </li>
                            <li>
                                <span>Interior Color</span><%#Eval("Color") %></li>
                            <li>
                                <span>Transmission</span>6-speed Manual
                            </li>
                            <li>
                                <span>Engine</span>3.4L Mid-Engine V6
                            </li>
                            <li>
                                <span>No. of Gears:</span><%#Eval("NoOfGears") %></li>
                            <li>
                                <span>Location</span><%#Eval("Location") %></li>
                            <li>
                                <span>Fuel Type</span><%#Eval("FuelType") %></li>
                        </ul>
                    </div>
                    </ItemTemplate>

                    </asp:ListView>

                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [SellCarModel] WHERE ([ModelId] = @ModelId)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="ModelId" QueryStringField="modid" 
                                Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                    <!-- Question start -->
                    <div class="widget question">
                        <h5 class="sidebar-title">Get a Question?</h5>
                        <div class="s-border"></div>
                        <div class="m-border"></div>
                        <ul class="contact-info">
                            <li>
                                <i class="flaticon-pin"></i>B-204 Shashiroop Homes bhestan Surat
                            </li>
                            <li>
                                <i class="flaticon-mail"></i><a href="mishranitish795@gmail.com">mishranitish795@gmail.com</a>
                            </li>
                            <li>
                                <i class="flaticon-phone"></i><a href="tel:7359698432">7359698432</a>
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
                    <!-- Financing calculator start -->
                     <div class="contact-2 financing-calculator widget widget-3">
                        <h3 class="sidebar-title">Financing Calculator</h3>
                        <div class="s-border"></div>
                        <div class="m-border"></div>
                      
                            <div class="form-group">
                                <label class="form-label">Price</label>
                                <%--<input type="text" class="form-control" placeholder="$24.400">--%>
                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="$24.400"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Interest Rate (%)</label>
                             <%--   <input type="text" class="form-control" placeholder="12%">--%>
                             <asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="12%"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Period In Months</label>
                                <%--<input type="text" class="form-control" placeholder="6 Months">--%>
                                <asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder=" 6 Months"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <label class="form-label">Down PaymenT</label>
                                <%--<input type="text" class="form-control" placeholder="$32,300">--%>
                                <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="$32,300"></asp:TextBox>
                            </div>

                            <div class="form-group mb-0">
                                <%--<button type="submit" class="btn button-theme btn-md btn-block">Cauculate</button>--%>
                                <asp:Button ID="Button1" runat="server" Text="Calculate"  
                                    class="btn button-theme btn-md btn-block" onclick="Button1_Click" />
                            </div>
                         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </div>
                </div>
                 </div>
            </div>
        </div>
 </div>
    </form>
</asp:Content>

