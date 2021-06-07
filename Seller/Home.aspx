<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <form id="form1" runat="server">

<div class="banner" id="banner">
    <div id="bannerCarousole" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner banner-slider-inner text-center">
            <div class="carousel-item banner-max-height active item-bg">
                <img class="d-block w-100 h-100" src="img/banner/img-4.jpg" alt="banner">
                <div class="carousel-content container banner-info-2 bi-2">
                    <h2>Find your Dream Car</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
                    <a href="#" class="btn btn-lg btn-round btn-theme">Get Started Now</a>
                    <a href="#" class="btn btn-round btn-white-lg-outline">Learn More</a>
                </div>
            </div>
            <div class="carousel-item banner-max-height item-bg">
                <img class="d-block w-100 h-100" src="img/banner/img-3.jpg" alt="banner">
                <div class="carousel-content container banner-info-2 bi-2 text-l">
                    <h2>Welcome to Auto Car</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
                    <a href="#" class="btn btn-lg btn-round btn-theme">Get Started Now</a>
                    <a href="#" class="btn btn-round btn-white-lg-outline">Learn More</a>
                </div>
            </div>
            <div class="carousel-item banner-max-height item-bg">
                <img class="d-block w-100 h-100" src="img/banner/img-2.jpg" alt="banner">
                <div class="carousel-content container banner-info-2 bi-2 text-r">
                    <h2>Best place for sell car!</h2>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
                    <a href="#" class="btn btn-lg btn-round btn-theme">Get Started Now</a>
                    <a href="#" class="btn btn-round btn-white-lg-outline">Learn More</a>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev none-580" href="#bannerCarousole" role="button" data-slide="prev">
            <span class="slider-mover-left" aria-hidden="true">
                <i class="fa fa-angle-left"></i>
            </span>
        </a>
        <a class="carousel-control-next none-580" href="#bannerCarousole" role="button" data-slide="next">
            <span class="slider-mover-right" aria-hidden="true">
                <i class="fa fa-angle-right"></i>
            </span>
        </a>
    </div>
</div>
<!-- Banner end -->

<!-- Search box 2 start -->
<div class="search-box-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div >
                    <div class="row row-3">
                        <div class="col-xl-2 col-lg-2 col-md-6 col-sm-6 col-6 search-col">
                            
                            <asp:DropDownList ID="ddlname" runat="server" class="form-control" 
                                DataSourceID="SqlDataSource6" DataTextField="ModelName" 
                                DataValueField="ModelName">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [SellCarModel]"></asp:SqlDataSource>
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-6 col-sm-6 col-6 search-col">
                            <asp:DropDownList ID="ddltype" runat="server" class="form-control" >
                                <asp:ListItem>New Car</asp:ListItem>
                                <asp:ListItem>Old Car</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                               
                            </asp:DropDownList>
                           
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-6 col-sm-6 col-6 search-col"> 
                           <asp:DropDownList ID="ddlfuel" runat="server" class="form-control" >
                               <asp:ListItem>Petrol</asp:ListItem>
                               <asp:ListItem>diesel</asp:ListItem>
                                
                            </asp:DropDownList>
                            
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-6 col-sm-6 col-6 search-col">
                            <asp:DropDownList ID="ddlyear" runat="server" class="form-control" >
                                <asp:ListItem>2016</asp:ListItem>
                                <asp:ListItem>2017</asp:ListItem>
                                <asp:ListItem>2018</asp:ListItem>
                                <asp:ListItem>2019</asp:ListItem>
                                <asp:ListItem>2020</asp:ListItem>
                                <asp:ListItem>2021</asp:ListItem>
                                
                            </asp:DropDownList>
                            
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-6 col-sm-6 col-6 search-col">
                            <asp:DropDownList ID="ddltrans" runat="server" class="form-control">
                                <asp:ListItem>Automatic</asp:ListItem>
                                <asp:ListItem>Mannual</asp:ListItem>
                                
                            </asp:DropDownList>
                           
                        </div>
                        <div>
                        
                        </div>
                        <div class="col-xl-2 col-lg-2 col-md-6 col-sm-6 col-6 search-col">
                            
                           
                            <asp:Button ID="Button1" runat="server" Text="Search" class="search-button btn"
                                onclick="Button1_Click"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Search box 2 end -->

<!-- Featured car start -->
<div class="featured-car content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>Featured Car</h1>
            <p>There are many old or new cars available for selling and also if you want then you can sell your new or old cars.</p>
        </div>
        <div class="row">
           
                <asp:ListView ID="ListView1" runat="server">
                <ItemTemplate>
                 <div class="col-lg-4 col-md-6">
                  <div class="car-box-3">
                    <div class="car-thumbnail">
                        <a href="car-details.html" class="car-img">
                            <div class="for"><%#Eval("CarType") %></div>
                            <div class="price-box">
                                <span class="del"><del>$950.00</del></span>
                                <br>
                                <span>$1050.00</span>
                            </div>
                            <img class="d-block w-100" src='../profile/<%#Eval("Image") %>' alt="car">
                        </a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<div class="carbox-overlap-wrapper">
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
                                    <%--<div class="car-magnify-gallery">
                                        <a href="img/car/car-1.jpg" class="overlap-btn" data-sub-html="<h4>Lamborghini</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>">
                                            <i class="fa fa-expand"></i>
                                            <img class="hidden" src="img/car/car-1.jpg" alt="hidden-img">
                                        </a>
                                        <a href="img/car/car-2.jpg" class="hidden" data-sub-html="<h4>Ferrari Red Car</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>">
                                            <img class="hidden" src="img/car/car-2.jpg" alt="hidden-img">
                                        </a>
                                        <a href="img/car/car-3.jpg" class="hidden" data-sub-html="<h4>Bmw e46 m3 Diski Serie</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>">
                                            <img class="hidden" src="img/car/car-3.jpg" alt="hidden-img">
                                        </a>
                                        <a href="img/car/car-4.jpg" class="hidden" data-sub-html="<h4>Volkswagen Scirocco 2016</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>">
                                            <img class="hidden" src="img/car/car-4.jpg" alt="hidden-img">
                                        </a>
                                        <a href="img/car/car-5.jpg" class="hidden" data-sub-html="<h4>Porsche Cayen Last</h4><p>A beautiful Sunrise this morning taken En-route to Keswick not one as planned but I'm extremely happy....</p>">
                                            <img class="hidden" src="img/car/car-5.jpg" alt="hidden-img">
                                        </a>
                                    </div>--%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="detail">
                        <h1 class="title">
                            <a href='car-details.aspx?modid=<%#Eval("ModelId")%>'><%#Eval("ModelName") %></a>
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
                                <i class="flaticon-manual-transmission"></i><%#Eval("Transmission") %>
                            </li>
                            <li>
                                <i class="flaticon-car"></i> Sport
                            </li>
                            <li>
                                <i class="flaticon-gear"></i><%#Eval("Color") %>
                            </li>
                            <li>
                                <i class="flaticon-calendar-1"></i><%#Eval("Year") %>
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
                </ItemTemplate>
                </asp:ListView>
              
          
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [SellCarModel]"></asp:SqlDataSource>
              
       
            
      
        </div>
    </div>
</div>  
<!-- Featured car end -->

<!-- Service section start -->
<div class="service-section content-area-2">
    <div class="container">
        <!-- Main title -->
        <div class="main-title text-center">
            <h1>We Are The Best</h1>
           <p>There are many old or new cars available for selling and also if you want then you can sell your new or old cars.</p>
        </div>
        <div class="row">
            
           <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="service-info-2">
                    <div class="icon">
                        <i class="<%#Eval("iconclass") %>"></i>
                    </div>
                    <div class="detail">
                        <h5><%#Eval("Name") %></h5>
                        <p><%#Eval("Description") %></p>
                        <a href="servicedetail.aspx?did=<%#Eval("DescriptionId") %>" class="read-more" >Read more...</a>
                    </div>
                </div>
            </div>
            </ItemTemplate>
            </asp:ListView>

            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [buyerservice]"></asp:SqlDataSource>

        </div>
    </div>
</div>
<!-- Service section end -->


<!-- Counters strat -->
<div class="counters">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="counter-box">
                    <i class="flaticon-car"></i>
                    <h1 class="counter">967</h1>
                    <h5>Total <span>Cars</span></h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="counter-box">
                    <i class="flaticon-blog"></i>
                    <h1 class="counter">1276</h1>
                    <h5>Dealer <span>Reviews</span></h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="counter-box">
                    <i class="flaticon-user"></i>
                    <h1 class="counter">396</h1>
                    <h5>Happy <span>Clients</span></h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="counter-box">
                    <i class="flaticon-medal"></i>
                    <h1 class="counter">177</h1>
                    <h5> award <span>winning</span></h5>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Counters end -->

<!-- Our team start -->
<div class="our-team content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>Our Agent</h1>
            <p>This is a list of Agents.</p>
        </div>
        <!-- Slick slider area start -->
        <div class="slick-slider-area clearfix">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 3, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
                <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3">
                <ItemTemplate>
                 <div class="slick-slide-item">
                    <div class="team-3">
                        <div class="photo">
                            <a href="#">
                                <img src='../profile/<%#Eval("Image") %>' alt="team-3" class="img-fluid">
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;<div class="social-list clearfix">
                                <a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="google-bg"><i class="fa fa-google"></i></a>
                            </div>
                        </div>
                        <div class="details">
                            <h4><a href="Agent-Detail.aspx?Aid=<%#Eval("Agentid") %>"><%#Eval("Name") %></a></h4>
                            <h5><%#Eval("Profession") %></h5>
                            <h6><%#Eval("Mobno") %></h6>
                        </div>
                    </div>
                </div>
                </ItemTemplate>
                </asp:ListView>
             
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Agent_Mstr]"></asp:SqlDataSource>
             
            </div>
        </div>
    </div>
</div>
<!-- Our team end -->

<!-- Testimonial 3 start -->
<div class="testimonial-3">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="main-title">
                    <h1>Our TestimonOur Testimonial</h1>
                </div>
                    <div id="carouselExampleIndicators3" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleIndicators3" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleIndicators3" data-slide-to="1" class=""></li>
                        <li data-target="#carouselExampleIndicators3" data-slide-to="2" class=""></li>
                    </ol>
                        <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="testimonial-info">
                    
                        <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource4">
                        <ItemTemplate>
                    
                                <div class="sz">
                                    <p>My Name is <%#Eval("Name") %> and I am <%#Eval("Position") %> My gaduation is <%#Eval("Graduation") %>. This is a good website for for buying and selling new or old cars. </p>
                                </div>
                                <div class="media mb-4">
                                    <a class="pr-3" href="#">
                                        <img src='../profile/<%#Eval("Image") %>' alt="testimonial-3" class="img-fluid">
                                    </a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;<div class="media-body align-self-center">
                                        <h5>
                                            <a href="#"><%#Eval("Name") %></a>
                                        </h5>
                                        <h6><%#Eval("Position") %></h6>
                                    </div>
                                </div>
                            
                        </ItemTemplate>
                        </asp:ListView>
                        
                        
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Partner_Mstr]"></asp:SqlDataSource>
                        
                        
              </div>
                        </div>
                         </div>
                              
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Testimonial 3 end -->

<!-- Blog start -->
<div class="blog content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>Our Blog <p>There are many old or new cars available for selling and also if you want then you can sell your new or old cars.</p>
        </div>
        <!-- Slick slider area start -->
        <div class="slick-slider-area">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 3, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
                <asp:ListView ID="ListView5" runat="server" DataSourceID="SqlDataSource5">
                <ItemTemplate>
                 <div class="slick-slide-item">
                    <div class="blog-3">
                        <div class="blog-photo">
                            <img src='../profile/<%#Eval("image") %>' alt="blog-3" class="img-fluid">
                            <div class="date-box-2 db-2">27 Feb</div>
                            <div class="post-meta clearfix">
                                <span><a href="#"><i class="flaticon-user-1"></i></a>Admin</span>
                                <span><a href="#"><i class="flaticon-comment"></i></a>17K</span>
                                <span><a href="#"><i class="flaticon-calendar"></i></a>73k</span>
                            </div>
                        </div>
                        <div class="detail">
                            <h3>
                                <a href="#"><%#Eval("blogname") %></a>
                            </h3>
                            <p><%#Eval("description") %></p>
                           <a href="blog-detail.aspx?bid=<%#Eval("blogid") %>" class="b-btn ">Rea more...!</a>
                        </div>
                    </div>
                </div>
                </ItemTemplate>
                </asp:ListView>
               
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [buyerblog]"></asp:SqlDataSource>
               
            </div>
        </div>
    </div>
</div>
<!-- Blog end -->

<!-- Partners strat -->
<div class="partners">
    <div class="container">
        <div class="slick-slider-area">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 5, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 3}}, {"breakpoint": 768,"settings":{"slidesToShow": 2}}]}'>
                <div class="slick-slide-item"><img src="img/brand/brand-1.png" alt="brand" class="img-fluid"></div>
                <div class="slick-slide-item"><img src="img/brand/brand-2.png" alt="brand" class="img-fluid"></div>
                <div class="slick-slide-item"><img src="img/brand/brand-3.png" alt="brand" class="img-fluid"></div>
                <div class="slick-slide-item"><img src="img/brand/brand-4.png" alt="brand" class="img-fluid"></div>
                <div class="slick-slide-item"><img src="img/brand/brand-1.png" alt="brand" class="img-fluid"></div>
                <div class="slick-slide-item"><img src="img/brand/brand-2.png" alt="brand" class="img-fluid"></div>
                <div class="slick-slide-item"><img src="img/brand/brand-3.png" alt="brand" class="img-fluid"></div>
                <div class="slick-slide-item"><img src="img/brand/brand-4.png" alt="brand" class="img-fluid"></div>
            </div>
        </div>
    </div>
</div>
    </form>
</asp:Content>

