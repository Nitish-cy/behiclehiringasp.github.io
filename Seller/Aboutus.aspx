<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>About Us</h1>
            <ul class="breadcrumbs">
                <li><a href="sellindex.aspx">Home</a></li>
                <li class="active">About Us</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- About car start -->
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
    <div class="about-car">
    <div class="container">
        <div class="row">
            <div class="col-xl-5 col-lg-6 col-md-12 col-sm-12 col-xs-12">
                <div class="about-slider-box simple-slider">
                    <img class="d-block w-100" src='../profile/<%#Eval("image") %>' alt="about">
                </div>
            </div>
            <div class="col-xl-7 col-lg-6 col-md-12 col-sm-12 col-xs-12">
                <div class="about-text">
                    <h3><%#Eval("name") %></h3>
                    <P><%#Eval("description") %></p>
                
                </div>
            </div>
        </div>
    </div>
</div>
    </ItemTemplate>
    </asp:ListView>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [sellcont]"></asp:SqlDataSource>

<!-- About car end -->

<!-- Service section start -->
<div class="service-section content-area-2">
    <div class="container">
        <!-- Main title -->
        <div class="main-title text-center">
            <h1>We Are The Best</h1>
            <p>Mishra Nitish/Singh Shivangini</p>
        </div>
        <div class="row">
            
            
            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>
            <div class="col-lg-3 col-md-6 col-sm-12">
                <div class="service-info-2">
                    <div class="icon">
                        <i class="<%#Eval("iconclass") %>"></i>
                    </div>
                    <div class="detail">
                        <h5><%#Eval("Name") %></h5>
                        <p><%#Eval("Description") %> </P>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec luctus tincidunt Lorem ipsum dolor sit amet</p>
                        <a href="buyerservices.aspx" class="read-more">Read more...</a>
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
<div class="counters-2">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="counter-box-2">
                    <div class="icon">
                        <i class="flaticon-car"></i>
                    </div>
                    <div class="detail align-self-center">
                        <h2>475</h2>
                        <h5>Total Cars</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="counter-box-2">
                    <div class="icon">
                        <i class="flaticon-blog"></i>
                    </div>
                    <div class="detail">
                        <h2>1402</h2>
                        <h5>Dealer Reviews</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="counter-box-2">
                    <div class="icon">
                        <i class="flaticon-user"></i>
                    </div>
                    <div class="detail">
                        <h2>254</h2>
                        <h5>Happy Clients</h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="counter-box-2">
                    <div class="icon">
                        <i class="flaticon-medal"></i>
                    </div>
                    <div class="detail">
                        <h2>542</h2>
                        <h5>Awards Winning</h5>
                    </div>
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
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
        </div>
        <!-- Slick slider area start -->
        <div class="slick-slider-area clearfix">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 4, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
                
               
                <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3">
                <ItemTemplate>

            <div class="slick-slide-item">
                    <div class="team-3">
                        <div class="photo">
                            <a href="#">
                                <img src='../profile/<%#Eval("Image") %>' alt="team-3" class="img-fluid">
                            </a>
                            &nbsp;&nbsp;&nbsp;<div class="social-list clearfix">
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

<!-- Testimonial start -->
<div class="testimonial content-area-3">
    <div class="container">
        <!-- Main title -->
        <div class="main-title">
            <h1>Our Testimonial</h1>
           
        </div>
        <!-- Slick slider area start -->
        <div class="slick-slider-area">
            <div class="row slick-carousel" data-slick='{"slidesToShow": 3, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
               
                <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource4" >
                <ItemTemplate>
                 <div class="slick-slide-item">
                    <div class="testimonial-info-box">
                        <div class="profile-user">
                            <div class="avatar">
                                <img src='../expert/<%#Eval("Image") %>' alt="testimonial">
                            </div>
                        </div>
                        <h5>
                            <a href="#"><%#Eval("Name") %></a>
                        </h5>
                        <h6><%#Eval("Position") %></h6>
                        <h6><%#Eval("Graduation") %></h6>

                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown</p>
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
<!-- Testimonial end -->

    </form>

</asp:Content>

