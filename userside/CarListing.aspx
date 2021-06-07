<%@ Page Title="" Language="C#" MasterPageFile="~/userside/MasterPage.master" AutoEventWireup="true" CodeFile="CarListing.aspx.cs" Inherits="userside_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
       <section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>Car Listing</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="index.html">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>car listing</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Breadcromb Area End -->
       
       
      <!-- Car Listing Area Start -->
      <section class="gauto-car-listing section_70">
         <div class="container">
            <div class="row">
               <div class="col-lg-4">
                  <div class="car-list-left">
                     
                     <div class="sidebar-widget">
                        <ul class="service-menu">
                           <li class="active">
                              <a href="#">All Brands<span>(10)</span></a>
                           </li>
                           <li>
                              <a href="#">Toyota<span>(15)</span></a>
                           </li>
                           <li>
                              <a href="#">nissan<span>(10)</span></a>
                           </li>
                           <li>
                              <a href="#">mercedes<span>(5)</span></a>
                           </li>
                           <li>
                              <a href="#">hyundai<span>(5)</span></a>
                           </li>
                           <li>
                              <a href="#">Audi<span>(6)</span></a>
                           </li>
                           <li>
                              <a href="#">datsun<span>(23)</span></a>
                           </li>
                           <li>
                              <a href="#">Mitsubishi<span>(3)</span></a>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
               <div class="col-lg-8">
                  <div class="car-listing-right">
                     <div class="property-page-heading">
                        <div class="propertu-page-head">
                           <ul>
                              <li class="active"><a href="#"><i class="fa fa-th-list"></i></a></li>
                              <li><a href="#"><i class="fa fa-th-large"></i></a></li>
                           </ul>
                        </div>
                        <div class="paging_status">
                           <p>1-10 of 25 results</p>
                        </div>
                        <%--<div class="propertu-page-shortby">
                           <label><i class="fa fa-sort-amount-asc"></i>Sort By</label>
                           <select class="chosen-select-no-single">
                              <option>Default</option>
                              <option>Price (Low to High)</option>
                              <option>Price (High to Low)</option>
                              <option>Featured</option>
                           </select>
                        </div>--%>
                     </div>
                     
                     <div class="car-grid-list">
                         <div class="row">
                    <asp:ListView ID="ListView1" runat="server" 
                              DataSourceID="SqlDataSource1" >
                    <ItemTemplate>
                   
                        <div class="col-md-6">
                          
                              <div class="single-offers">
                                 <div class="offer-image">
                                    <a href="#">
                                    <img src='../profile/<%#Eval("carphoto") %>' alt="offer 1" />
                                    </a>
                                 </div>
                                 <div class="offer-text">
                                    <a href="#">
                                       <h3><%# Eval("modelname") %></h3>
                                    </a>
                                    <h4>$75.00<span>/ Day</span></h4>
                                    <ul>
                                       <li><i class="fa fa-car"></i>Model:<%# Eval("Year") %></li>
                                       <li><i class="fa fa-cogs"></i><%# Eval("Transmission") %></li>
                                       <li><i class="fa fa-dashboard"></i><%# Eval("Average") %></li>
                                    </ul>
                                    <div class="offer-action"> <a href='carbooking.aspx?modid=<%#Eval("Modelid")%>& mname=<%#Eval("ModelName") %> & mprice=<%#Eval("Price") %> ' class="offer-btn-1">Rent Car</a>
                                       <a href='singlecardetail.aspx?modid=<%#Eval("Modelid")%>'class="offer-btn-2">Details</a>
                                    </div>
                                 </div>
                              </div>
                        
                      
                        </div>
                    </ItemTemplate>
                    </asp:ListView>
                             
                        
                     
                       
                        
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                          ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                          SelectCommand="SELECT * FROM [moderl_mstr]"></asp:SqlDataSource>
                            
                                       
                          
                        </div>
                     
                       </div>
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
      </section>
   
                        
                     
    </form>
</asp:Content>

