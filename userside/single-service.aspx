<%@ Page Title="" Language="C#" MasterPageFile="~/userside/MasterPage.master" AutoEventWireup="true" CodeFile="single-service.aspx.cs" Inherits="userside_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="form1" runat="server">
 <section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>Single Services Page</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="Home.aspx">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>Single Services</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Breadcromb Area End -->
      
           
      <!-- Breadcromb Area End -->
       
       
      <!-- Product Details Page Start -->
      <section class="gauto-product-details section_70">
         <div class="container">
            <div class="row">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" >
            <ItemTemplate>
            
               <div class="col-lg-6">
                  <div class="product-details-image">
                     <img src='../expert/<%#Eval("Image") %>' alt="product" />
                  </div>
               </div>
               <div class="col-lg-6">
                  <div class="product-details-text">
                     <h3><%#Eval("ServiceName") %></h3>
                     <div class="car-rating">
                        <ul>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star-half-o"></i></li>
                        </ul>
                        <p>(123 rating)</p>
                     </div>
                     <div class="single-pro-page-para">
                     <p><%#Eval("Description") %></p>
                        </div>
                     <div class="single-shop-price">
                        <p>Price:<span>$180</span></p>
                        <p class="qnt">Quantity:<input value="1" type="number"></p>
                     </div>
                     <div class="single-shop-page-btn">
                        <a href="carbooking.aspx" class="gauto-btn"><i class="fa fa-shopping-cart"></i>Book Now</a>
                        <ul>
                           <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                           <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                           <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                           <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </ItemTemplate>
            </asp:ListView>
            
              
            
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Service_Mstr] WHERE ([ServiceId] = @ServiceId)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="ServiceId" QueryStringField="sid" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            
              
            
            </div>
         </div>
      </section>
    
    </form>
</asp:Content>

