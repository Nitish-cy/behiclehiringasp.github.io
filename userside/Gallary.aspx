<%@ Page Title="" Language="C#" MasterPageFile="~/userside/MasterPage.master" AutoEventWireup="true" CodeFile="Gallary.aspx.cs" Inherits="userside_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
 <section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>Gallery</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="index.html">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>Gallery</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Breadcromb Area End -->
       
  <section class="gauto-gallery-area section_70">
      <div class="container">
            <div class="row" id="lightgallery">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
    <ItemTemplate>
  
               <div class="col-lg-4" data-src="assets/img/gallery-1.jpg">
                  <div class="single-gallery">
                     <div class="img-holder">
                        <img src='../profile/<%#Eval("image") %>' alt="gallery 1" />
                        <div class="overlay-content">
                           <div class="inner-content">
                              <div class="title-box">
                                 <h3><a href="#">Base Cabient Repair</a></h3>
                              </div>
                           </div>
                        </div>
                        <div class="link-zoom-button">
                           <div class="single-button">
                              <a href="#"><span class="fa fa-link"></span>Details</a>
                           </div>
                           <div class="single-button">
                              <a class="zoom lightbox-image" href="assets/img/gallery-1.jpg">
                              <span class="fa fa-search"></span>Zoom
                              </a>
                           </div>
                        </div>
                     </div>
                   </div>
                </div>
    </ItemTemplate>
    </asp:ListView>
                    </div>
               </div>
         </section>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Gallary_Mstr]"></asp:SqlDataSource>
      <!-- Gallery Area Start -->
      
              
    
    <div class="row">
               <div class="col-md-12">
                  <div class="load-more">
                     <a href="morepic.aspx" class="gauto-btn">More Pictures</a>
                  </div>
               </div>
            </div>
         </div>
              
    
    </form>
    <br />
    <br />

</asp:Content>

