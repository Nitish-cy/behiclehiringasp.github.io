<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form runat="server">

<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>NEWS PAGE</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">NEWS Details</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Blog body start -->

 <div class="blog-body content-area-4">
    <div class="container">
  <div class="row">
          
  <center>
<div class="blog-body content-area-4">
    <div class="container">
    
        <div class="row">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
              <div class="col-lg-8 col-md-12">
                <!-- Blog 1 start -->
                <div class="blog-1 blog-big mb-50">
                    <div class="blog-photo">
                        <img src='../profile/<%#Eval("photo") %>' alt="blog-img" class="img-fluid">
                    </div>
                    <div >
                       <p><%#Eval("date") %></p>
                    </div>
                    <div class="detail">
                        <h3>
                            <a href="#"><%#Eval("news") %></a>
                        </h3>
                        <p><%#Eval("detail") %></p>
                        <div class="row clearfix">
                           
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="blog-social-list">
                                    <span>Share</span>
                                    <a href="#" class="facebook-bg">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                    <a href="#" class="twitter-bg">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#" class="google-bg">
                                        <i class="fa fa-google"></i>
                                    </a>
                                    <a href="#" class="linkedin-bg">
                                        <i class="fa fa-linkedin"></i>
                                    </a>
                                    <a href="#" class="pinterest-bg">
                                        <i class="fa fa-pinterest"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              
                <!-- Contact 2 start -->
                
            </div>
            </ItemTemplate>
            </asp:ListView>
          
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [news_mstr]"></asp:SqlDataSource>
          
              
        </div>
    
    </div>

</div>
 </center>
             
            </div>
           
        </div>
    </div>

</form>
</asp:Content>

