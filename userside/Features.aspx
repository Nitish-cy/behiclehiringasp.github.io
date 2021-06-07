<%@ Page Title="" Language="C#" MasterPageFile="~/userside/MasterPage.master" AutoEventWireup="true" CodeFile="Features.aspx.cs" Inherits="userside_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="form1" runat="server">
  <section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>Car Features Page</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="index.html">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>Features</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
<asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
<ItemTemplate>
 <section class="gauto-product-details section_70">
         <div class="container">
            <div class="row">
               <div class="col-lg-6">
                 <div class="product-details-image">
                     <img src='../profile/<%#Eval("Carphoto") %>' alt="product" />
                  </div>
               </div>
               </div>
               </div>
        </section>
</ItemTemplate>
</asp:ListView>
       <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      SelectCommand="SELECT * FROM [moderl_mstr] WHERE ([Modelname] = @Modelname)">
           <SelectParameters>
               <asp:QueryStringParameter Name="Modelname" QueryStringField="modname" 
                   Type="String" />
           </SelectParameters>
  </asp:SqlDataSource>
       <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"  
        >
 <ItemTemplate>
 <section class="gauto-product-details section_70">
         <div class="container">
            <div class="row">
               <%--<div class="col-lg-6">
                 <div class="product-details-image">
                     <img src='../profile/<%#Eval("Carphoto") %>' alt="product" />
                  </div>
               </div>--%>
               <div class="col-lg-6">
                  <div class="product-details-text">
                     <%--<h3><%#Eval("Ac") %></h3>
                     <div class="car-rating"><ul>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star"></i></li>
                           <li><i class="fa fa-star-half-o"></i></li>
                        </ul>
                        <p>(123 rating)</p>
                     </div>--%>
                     <div class="single-pro-page-para">
                        <p>Cursus mal suada faci lisis. Lorem ipsum dolor.ipsum dolor sit amet, cons ectetur elit. Ves tibulum nec odios Suspe ndisse cursus mal suada faci lisis. Lorem ipsum dolor.ipsum dolor sit amet,.Lorem ipsum dolor.ipsum dolor sit amet, cons ectetur elit. Ves tibulum nec odios</p>
                     </div>
                     <div class="single-shop-price">
                       
                     <p>Ac:<span><%#Eval("Ac") %></span></p>
                        <p>Climate Control:<span><%#Eval("Climate_Control") %></span></p>
                        <p>Cd Player:<span><%#Eval("Cd_Player") %></span></p>
                        <p>Power Steering:<span><%#Eval("Power_Steering") %></span></p>
                        <p>Power Window:<span><%#Eval("Power_Window") %></span></p>
                        <p>Centeral locking:<span><%#Eval("Centeral_locking") %></span></p>
                        <p>Steering Adjustmen:<span><%#Eval("Steering_Adjustment") %></span></p>
                     
                        <p >Adjustable Driver Seat:<span><%#Eval("Electrically_Adjustable_Driver_Seat") %></span></p>
                        <p>Steering:<span><%#Eval("Steering_Mounted_Control") %></span></p>
                        <p>Ac Vent:<span><%#Eval("Rear_Ac_Vent") %></span></p>
                        <p>Remote Controlled Boot:<span><%#Eval("Remote_Controlled_Boot") %></span></p>
                        <p>Rear Wiper:<span><%#Eval("Rear_Wiper") %></span></p>
                        <%--<p>Gears:<span><%#Eval("Seather_Seatelelectrically_Electricaly_Adjustable_Mirror") %></span></p>
                        <p>Price:<span><%#Eval("Anti_Lock_Breaking_System") %></span></p>
                      <p>Price:<span><%#Eval("Air_Bag") %></span></p>--%>
                      <p>Parking Sensor:<span><%#Eval("Parking_Sensor") %></span></p>
                        
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
            </div>
         </div>
      </section>
      <!-- Product Details Page End -->
      </ItemTemplate>
 </asp:ListView>

       
      
   

       
      
    
       
      
   

       
      
     
     

       
      
   

       
      
    
       
      
   

       
      
     
      
       
      
   

       
      
    
       
      
   

       
      
     
     

       
      
   

       
      
    
       
      
   

       
      
     
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
      SelectCommand="SELECT * FROM [Feature_Mstr] WHERE ([ModelId] = @ModelId)">
          <SelectParameters>
              <asp:QueryStringParameter Name="ModelId" QueryStringField="modname" 
                  Type="String" />
          </SelectParameters>
  </asp:SqlDataSource>

       
      
   

       
      
    
       
      
   

       
      
     
     

       
      
   

       
      
    
       
      
   

       
      
     
      
       
      
   

       
      
    
       
      
   

       
      
     
     

       
      
   

       
      
    
       
      
   

       
      
     
      </form>
</asp:Content>

