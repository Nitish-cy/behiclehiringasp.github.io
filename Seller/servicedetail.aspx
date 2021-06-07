<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="servicedetail.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <form id="form1" runat="server">

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
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                    <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="service-info-2">
                    <div class="icon">
                        <i class="<%#Eval("iconclass") %>"></i>
                    </div>
                    <div class="detail">
                        <h5><%#Eval("Name") %></h5>
                        <p><%#Eval("Description") %></p>
                        
                    </div>
                </div>
            </div>
                    <!-- Advanced search start -->
                    
                    <div class="tabbing tabbing-box mb-40">
                        
                        <div class="tab-content" id="carTabContent">
                            <div class="tab-pane fade active show" id="one" role="tabpanel" aria-labelledby="one-tab">
                                <div class="car-description mb-50">
                                    <h3 class="heading-2">
                                       <p><%#Eval("Description") %></p>
                                   
                                  </div>
                            </div>
                         
                          
                            
                            
                        </div>
                    </div>
                    </ItemTemplate>
                    </asp:ListView>
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [buyerservice] WHERE ([DescriptionId] = @DescriptionId)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="DescriptionId" QueryStringField="did" 
                                Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                    <!-- Heading 2 -->
                   
                    <!-- Comments start -->
                    
                    <!-- Contact 2 start -->
                  
                </div>
            </div>
      
        </div>
    </div>
</div>
    </form>
</asp:Content>

