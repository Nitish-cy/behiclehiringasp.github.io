<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="gallary.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Gallery</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">Gallery</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Photo gallery start -->
<div class="photo-gallery content-area-13">
    <div class="container">
        <!-- Main title -->
        <div class="main-title mt2">
            <h1>Gallery</h1>
            <div class="list-inline-listing">
                <ul class="filters filteriz-navigation clearfix">
                    <li class="active btn filtr-button filtr" data-filter="all">All</li>
                    <li data-filter="1" class="btn btn-inline filtr-button filtr">Apartment</li>
                    <li data-filter="2" class="btn btn-inline filtr-button filtr">House</li>
                    <li data-filter="3" class="btn btn-inline filtr-button filtr">Office</li>
                </ul>
            </div>
        </div>
        <div class="row filter-portfolio">
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                
            <div class="cars">
                
                <div class="col-lg-4 col-md-6 col-sm-12 filtr-item" data-category="3">
                    <div class="portfolio-item">
                        <a href="img/car/car-1.jpg" title="Toyota Prius">
                            <img src='../profile/<%#Eval("Image") %>' alt="gallery-photo" class="img-fluid">
                        </a>
                        &nbsp;<div class="portfolio-content">
                            <div class="portfolio-content-inner">
                                <p><%#Eval("ModelName") %>'</p>
                            </div>
                        </div>
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
    </form>
</asp:Content>

