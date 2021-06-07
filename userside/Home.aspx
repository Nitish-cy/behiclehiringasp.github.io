<%@ Page Title="" Language="C#" MasterPageFile="~/userside/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="userside_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <form id="form1" runat="server">

<section class="gauto-slider-area fix">
         <div class="gauto-slide owl-carousel">
            <div class="gauto-main-slide slide-item-1">
               <div class="gauto-main-caption">
                  <div class="gauto-caption-cell">
                     <div class="container">
                        <div class="row">
                           <div class="col-md-12">
                              <div class="slider-text">
                                 <p>for rent $65 per day</p>
                                 <h2>Reserved Now & Get <span>50% Off</span></h2>
                                 <a href="carbooking.aspx" class="gauto-btn">Reserve Now!</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="gauto-main-slide slide-item-2">
               <div class="gauto-main-caption">
                  <div class="gauto-caption-cell">
                     <div class="container">
                        <div class="row">
                           <div class="col-md-12">
                              <div class="slider-text">
                                 <p>for rent $70 per day</p>
                                 <h2>Reserved Now & Get <span>50% Off</span></h2>
                                 <a href="carbooking.aspx" class="gauto-btn">Reserve Now!</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Slider Area End -->
       
       
      <!-- Find Area Start -->
      <section class="gauto-find-area">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="find-box">
                     <div class="row">
                        <div class="col-md-4">
                           <div class="find-text">
                              <h3>Search Your Best Cars here.</h3>
                           </div>
                        </div>
                        <div class="col-md-8">
                           <div class="find-form">
                                 <div class="row">
                                    <div class="col-md-4">
                                       <p>
                                          <input type="text" placeholder="From Address" />
                                       </p>
                                    </div>
                                    <div class="col-md-4">
                                       <p>
                                          <input type="text" placeholder="To Address" />
                                       </p>
                                    </div>
                                    <div class="col-md-4">
                                       <p>
                                          <select>
                                             <option data-display="Select">AC Car</option>
                                             <option>Non-AC Car</option>
                                          </select>
                                       </p>
                                    </div>
                                 </div>
                                 <div class="row">
                                    <div class="col-md-4">
                                       <p>
                                          <input id="reservation_date" name="reservation_date" placeholder="Journey Date" data-select="datepicker" type="text">
                                       </p>
                                    </div>
                                    <div class="col-md-4">
                                       <p class="input-group clockpicker" data-placement="bottom" data-align="top" data-autoclose="true">
                                          <input type="text" class="form-control" placeholder="Journey Time" />
                                       </p>
                                    </div>
                                    <div class="col-md-4">
                                       <p>
                                          <button type="submit" class="gauto-theme-btn">Find Car</button>
                                       </p>
                                    </div>
                                 </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Find Area End -->
       
       
      <!-- About Area Start -->
      <section class="gauto-about-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-lg-6">
                  <div class="about-left">
                     <h4>about us</h4>
                     <h2>Welcome to autocar</h2>
                     <p>We are providing many facilities to customer.If You want then you can buy and sell and also you can book for rental cars here.</p>
                     <div class="about-list">
                        <ul>
                           <li><i class="fa fa-check"></i>We are a trusted name</li>
                           <li><i class="fa fa-check"></i>we deal in have all brands</li>
                           <li><i class="fa fa-check"></i>have a larger stock of vehicles</li>
                           <li><i class="fa fa-check"></i>we are at worldwide locations</li>
                        </ul>
                     </div>
                    
                     <div class="about-signature">
                        <div class="signature-left">
                        <img src="assets/img/sm.jfif" alt="signature" />
                           <img src="assets/img/shubham.jpg" alt="signature" />
                           
                           <h3>Mishra Nitish</h3>
                        
                        </div>
                       
                     </div>
                  </div>
               </div>
               <div class="col-lg-6">
                  <div class="about-right">
                     <img src="assets/img/about.png" alt="car" />
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- About Area End -->
       
       
      <!-- Service Area Start -->
       <section class="gauto-service-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="site-heading">
                     <h4>see our</h4>
                     <h2>Latest Services</h2>
                  </div>
               </div>
            </div>
              <div class="row">
               <div class="col-md-12">
                  <div class="service-slider owl-carousel">
       <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                  <ItemTemplate>
     
           
          
                  
                  <div class="single-service">
                        <span class="service-number">01 </span>
                        <div class="service-icon">
                           <img src='../expert/<%#Eval("Image") %>' alt="city trasport" />
                        </div>
                        <div class="service-text">
                           <a href="#">
                              <h3><%#Eval("Image") %></h3>
                           </a>
                           <p><%#Eval("Description") %></p>
                        </div>
                     </div>
                 

        
       </ItemTemplate>
       </asp:ListView>
       
                  </div>
               </div>
            </div>
           
       </div>
      </section>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Service_Mstr]"></asp:SqlDataSource>
      <!-- Service Area End -->
       
       
      <!-- Promo Area Start -->
      <section class="gauto-promo-area">
         <div class="container">
            <div class="row">
               <div class="col-md-6">
                  <div class="promo-box-left">
                     <img src="assets/img/toyota-offer-2.png" alt="promo car" />
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="promo-box-right">
                     <h3>Do You Want To Earn With Us? So Don't be Late.</h3>
                     <a href="adrive.aspx" class="gauto-btn">Become a drive</a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Promo Area End -->
       
       
      <!-- Offers Area Start -->
      <section class="gauto-offers-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="site-heading">
                     <h4>Come with</h4>
                     <h2>Hot offers</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12">
                  <div class="offer-tabs">
                     <ul class="nav nav-tabs" id="offerTab" role="tablist">
                        <li class="nav-item">
                           <a class="nav-link active" id="all-tab" data-toggle="tab" href="#all" role="tab" aria-controls="all" aria-selected="true">All Brands</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" id="nissan-tab" data-toggle="tab" href="#nissan" role="tab" aria-controls="nissan" aria-selected="false">nissan</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" id="Toyota-tab" data-toggle="tab" href="#Toyota" role="tab" aria-controls="Toyota" aria-selected="false">Toyota</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" id="Audi-tab" data-toggle="tab" href="#Audi" role="tab" aria-controls="Audi" aria-selected="false">Audi</a>
                        </li>
                        <li class="nav-item">
                           <a class="nav-link" id="mercedes-tab" data-toggle="tab" href="#mercedes" role="tab" aria-controls="mercedes" aria-selected="false">mercedes</a>
                        </li>
                     </ul>
                     <div class="tab-content" id="offerTabContent">
                        <!-- All Tab Start -->
                        <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="all-tab">
                           <div class="row">
                              
                              <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                              <ItemTemplate>
                             <div class="col-lg-4">
                               <div class="single-offers">
                                    <div class="offer-image">
                                       <a href='singlecardetail.aspx?modid=<%#Eval("Modelid")%>'class="offer-btn-2">
                                       <img src='../profile/<%#Eval("Carphoto") %>' alt="offer 1" />
                                       </a>
                                    </div>
                                    <div class="offer-text">
                                       <a>
                                          <h3><%#Eval("Modelname") %></h3>
                                       </a>
                                       <h4>$<%#Eval("Price") %><span>/ Day</span></h4>
                                       <ul>
                                          <li><i class="fa fa-car"></i>Model:<%#Eval("Year") %></li>
                                          <li><i class="fa fa-cogs"></i><%#Eval("Transmission") %></li>
                                          <li><i class="fa fa-dashboard"></i><%#Eval("Average") %></li>
                                       </ul>
                                       <div class="offer-action">
                                          <a href="carbooking.aspx" class="offer-btn-1">Rent Car</a>
                                           <a href='singlecardetail.aspx?modid=<%#Eval("Modelid")%>'class="offer-btn-2">Details</a>
                                       </div>
                                    </div>
                                   </div>
                              </div>
                              </ItemTemplate>
                              </asp:ListView>
                                 
                                  
                                 
                               
                                  
                                 
                                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                      SelectCommand="SELECT * FROM [moderl_mstr]"></asp:SqlDataSource>
                               
                              
                             
                           </div>
                          
                        </div>
                        <!-- All Tab End -->
                         
                        
                         
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Offers Area End -->
       
       
      <!-- Testimonial Area Start -->
      <section class="gauto-testimonial-area section_70">
         
             <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="site-heading">
                     <h4>Some words</h4>
                     <h2>testimonial</h2>
                  </div>
               </div>
            </div>
            <div class="row">
               <div class="col-md-12">
               <asp:ListView ID="ListView3" runat="server" 
        DataSourceID="SqlDataSource3">
               <ItemTemplate>
             
                
               <div class="testimonial-slider owl-carousel">
                     <div class="single-testimonial">
                        <div class="testimonial-text">
                           <p>This is a good website for selling ,buying and rent cars<%#Eval("Address") %></p>
                           <div class="testimonial-meta">
                              <div class="client-image">
                                 <img src='../profile/<%#Eval("Image") %>' alt="testimonial" />
                              </div>
                              <div class="client-info">
                                 <h3><%#Eval("Name") %></h3>
                                 <p><%#Eval("Position") %></p>
                              </div>
                           </div>
                        </div>
                     </div>
                     </div>
            
                 
               </ItemTemplate>
               </asp:ListView>
                  
              
        
      <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Partner_Mstr]"></asp:SqlDataSource>
         </div>
                     
                  </div>         
  </div>
        
      </section>
      <!-- Testimonial Area End -->
       
       
      <!-- Driver Area Start -->
      <section class="gauto-driver-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="site-heading">
                     <h4>experts</h4>
                     <h2>our Members</h2>
                  </div>
               </div>
            </div>
             <div class="row">
            <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource5">
            <ItemTemplate>
            
               <div class="col-lg-3 col-sm-6">
                  <div class="single-driver">
                     <div class="driver-image">
                        <img src='../profile/<%#Eval("Image") %>' alt="driver 1" />
                        <div class="hover">
                           <ul class="social-icon">
                              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                              <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                           </ul>
                        </div>
                     </div>
                      <div class="driver-text">
                        <div class="driver-name">
                           <a  href='Partners.aspx?partid=<%#Eval("PartId")%>'>
                              <h3><%#Eval("Name") %></h3>
                           </a>
                           <p><%#Eval("Experience") %></p>
                        </div>
                     </div>
                  </div>
               </div>
               
            
            </ItemTemplate>
            </asp:ListView>
           
             <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                 ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                 SelectCommand="SELECT * FROM [Partner_Mstr]"></asp:SqlDataSource>
             
           </div>
            <div class="row">
               <div class="col-md-12">
                  <div class="load-more">
                     <a href="#" class="gauto-btn">More Members</a>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Driver Area End -->
       
       
      
      <!-- Blog Area End -->
       
    </form>
       
</asp:Content>

