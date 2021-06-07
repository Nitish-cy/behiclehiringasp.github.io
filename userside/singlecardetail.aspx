<%@ Page Title="" Language="C#" MasterPageFile="~/userside/MasterPage.master" AutoEventWireup="true" CodeFile="singlecardetail.aspx.cs" Inherits="userside_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
  <section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>Car Detail Page</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="index.html">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>Cars</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      
       <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" >
 <ItemTemplate>
 <section class="gauto-product-details section_70">
         <div class="container">
            <div class="row">
               <div class="col-lg-6">
                  <div class="product-details-image">
                     <img src='../profile/<%#Eval("Carphoto") %>' alt="product" />
                  </div>
               </div>
               <div class="col-lg-6">
                  <div class="product-details-text">
                     <h3><%#Eval("Modelname") %></h3>
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
                        <p>Cursus mal suada faci lisis. Lorem ipsum dolor.ipsum dolor sit amet, cons ectetur elit. Ves tibulum nec odios Suspe ndisse cursus mal suada faci lisis. Lorem ipsum dolor.ipsum dolor sit amet,.Lorem ipsum dolor.ipsum dolor sit amet, cons ectetur elit. Ves tibulum nec odios</p>
                     </div>
                     <div class="single-shop-price">
                        <p>Price:<span><%#Eval("Price") %></span></p>
                        <p>Year:<span><%#Eval("Year") %></span></p>
                        <p>Transmission:<span><%#Eval("Transmission") %></span></p>
                        <p>Fueltype:<span><%#Eval("Fueltype") %></span></p>
                        <p>Gears:<span><%#Eval("Noofgears") %></span></p>
                        <p>Price:<span><%#Eval("Price") %></span></p>
                     
                        <p class="qnt"> Average:<span><%#Eval("Average") %></span></p>
                     </div>
                     <div class="single-shop-page-btn">
                        <a href='Features.aspx?modname=<%#Eval("Modelname")%>' class="gauto-btn"><i class="fa fa-shopping-cart"></i>All Featurs</a>
                        <ul>
                           <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                           <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                           <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                           <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Product Details Page End -->
      </ItemTemplate>
 </asp:ListView>

       
      
   

       
      
     
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      SelectCommand="SELECT * FROM [moderl_mstr] WHERE ([Modelid] = @Modelid)">
          <SelectParameters>
              <asp:QueryStringParameter Name="Modelid" QueryStringField="modid" 
                  Type="Int32" />
          </SelectParameters>
  </asp:SqlDataSource>

      
     
      <!-- Product Details Page Start -->
      
       <section class="gauto-related-products section_b_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="site-heading">
                     <h4>Cars</h4>
                     <h2>related Cars</h2>
                  </div>
               </div>
            </div>
            <div class="row">
            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2" >
            <ItemTemplate>
              <div class="col-lg-3 col-sm-6">
                  <div class="product-item">
                     <div class="product-image">
                        <a href="#">
                        <img src='../profile/<%#Eval("Carphoto") %>' alt="product 1" />
                        </a>
                     </div>
                     <div class="product-text">
                        <div class="product-title">
                           <h3><a href="#"><%#Eval("Modelname") %></a></h3>
                           <p>Price:<span><%#Eval("price") %></span></p>
                        </div>
                        <div class="product-action">
                           <a href="#"><i class="fa fa-shopping-cart"></i></a>
                        </div>
                     </div>
                  </div>
               </div>
              
            </ItemTemplate>
            </asp:ListView>
             
               
               
             
               
               
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [moderl_mstr] WHERE ([Modelid] &lt;&gt; @Modelid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Modelid" QueryStringField="modid" 
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
             
               
               
             
               
               
            </div>
         </div>
     
  
       
      
   

       
      </section>
     
      </form>
      
       
      
   

       
      
         
</asp:Content>

