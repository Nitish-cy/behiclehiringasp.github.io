<%@ Page Title="" Language="C#" MasterPageFile="~/userside/MasterPage.master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="userside_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="form1" runat="server">
 <section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>Product Page</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="index.html">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>Product</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Breadcromb Area End -->

       <section class="gauto-product-page section_70">
         <div class="container">
            <div class="row">
               <div class="col-lg-4 col-sm-12">
                  <div class="product-page-left">
                     <div class="sidebar-widget">
                        </div>
                           <%--<input type="search" placeholder="Keywords..." />
                           <button type="submit"><i class="fa fa-search"></i></button>--%>
                     </div>
                     <div class="sidebar-widget">
                        <h3>By Category</h3>
                        <ul class="service-menu">
                           <li class="active">
                              <a href="#">
                              headlamps <span>(2376)</span>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                              disk break <span>(237)</span>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                              Turbo Oil <span>(23)</span>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                              tyre & metal wheel <span>(258)</span>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                              battery <span>(67)</span>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                              suspension <span>(123)</span>
                              </a>
                           </li>
                           <li>
                              <a href="#">
                              Shock Absorber <span>(23)</span>
                              </a>
                           </li>
                        </ul>
                     </div>
                     <div class="sidebar-widget">
                        <h3>top selling</h3>
                        <ul class="top-products">
                           <li>
                              <div class="recent-img">
                                 <a href="#">
                                 <img src="assets/img/cart-1.png" alt="recent image">
                                 </a>
                              </div>
                              <div class="recent-text">
                                 <h4>
                                    <a href="#">disk break</a>
                                 </h4>
                                 <p>$78.60</p>
                              </div>
                           </li>
                           <li>
                              <div class="recent-img">
                                 <a href="#">
                                 <img src="assets/img/cart-2.jpg" alt="recent image">
                                 </a>
                              </div>
                              <div class="recent-text">
                                 <h4>
                                    <a href="#">Shock Absorber</a>
                                 </h4>
                                 <p>$39.40</p>
                              </div>
                           </li>
                           <li>
                              <div class="recent-img">
                                 <a href="#">
                                 <img src="assets/img/cart-1.png" alt="recent image">
                                 </a>
                              </div>
                              <div class="recent-text">
                                 <h4>
                                    <a href="#">suspension</a>
                                 </h4>
                                 <p>$52.50</p>
                              </div>
                           </li>
                           <li>
                              <div class="recent-img">
                                 <a href="#">
                                 <img src="assets/img/cart-1.png" alt="recent image">
                                 </a>
                              </div>
                              <div class="recent-text">
                                 <h4>
                                    <a href="#">turbo oil</a>
                                 </h4>
                                 <p>$78.60</p>
                              </div>
                           </li>
                           <li>
                              <div class="recent-img">
                                 <a href="#">
                                 <img src="assets/img/cart-2.jpg" alt="recent image">
                                 </a>
                              </div>
                              <div class="recent-text">
                                 <h4>
                                    <a href="#">Shock Absorber</a>
                                 </h4>
                                 <p>$39.40</p>
                              </div>
                           </li>
                        </ul>
                     </div>
                  </div>
             
               <div class="col-lg-8 col-sm-12">
                  <div class="product-page-right">
                      <div class="row">
                     <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"> 
                     <ItemTemplate>
                    
                      <div class="col-md-4">
                           <div class="product-item">
                              <div class="product-image">
                                 <a href="#">
                                 <img src="../profile/<%#Eval("image") %>" alt="product 1" />
                                 </a>
                              </div>
                              <div class="product-text">
                                 <div class="product-title">
                                    <h3><a href="#"><%#Eval("ProductName") %></a></h3>
                                    <p>Price:<span><%#Eval("Price") %></span></p>
                                 </div>
                                 <div class="product-action">
                                    <a href="SingleProduct.aspx?proid=<%#Eval("ProductId")%>"><i class="fa fa-shopping-cart"></i></a>
                                 </div>
                                 
                              </div>
                           </div>
                           </div>
                            
                     </ItemTemplate>
                     </asp:ListView>
                        
                        
                       
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             SelectCommand="SELECT * FROM [Product_Mtr]"></asp:SqlDataSource>
                        
                        
                       
                   
               </div>
                     </div>
                     <div class="row">
                        <div class="col-md-12">
                           <div class="pagination-box-row">
                              <p>Page 1 of 6</p>
                              <ul class="pagination">
                                 <li class="active"><a href="#">1</a></li>
                                 <li><a href="#">2</a></li>
                                 <li><a href="#">3</a></li>
                                 <li>...</li>
                                 <li><a href="#">6</a></li>
                                 <li><a href="#"><i class="fa fa-angle-double-right"></i></a></li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </div>

      
            </div>
   
           </div>
            </section>
         
    
    </form>
</asp:Content>

