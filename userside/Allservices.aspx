<%@ Page Title="" Language="C#" MasterPageFile="~/userside/MasterPage.master" AutoEventWireup="true" CodeFile="Allservices.aspx.cs" Inherits="userside_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <form id="form1" runat="server">
 <section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>Services Page</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="index.html">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>Services</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Breadcromb Area End -->
      
              <section class="gauto-service-area service-page-area section_70">
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
                    
                       <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource1" 
                            >
                       <ItemTemplate>
                       
               <div class="col-md-4">
                  <div class="single-service">
                        <span class="service-number">01 </span>
                     <div class="service-icon">
                        <img src='../expert/<%#Eval("Image") %>' alt="city trasport" />
                     </div>
                     <div class="service-text">
                        <a href="single-service.aspx?sid=<%#Eval("ServiceId") %>">
                           <h3><%#Eval("ServiceName") %></h3>
                        </a>
                        <p><%#Eval("Description") %></p>
                     </div>
                  </div>
               </div>
                
                       </ItemTemplate>
                       </asp:ListView>
              
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                             SelectCommand="SELECT * FROM [Service_Mstr]"></asp:SqlDataSource>
              
               </div>
          </div>      
      </section>
    
   
    
    </form>
</asp:Content>

