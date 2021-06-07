<%@ Page Title="" Language="C#" MasterPageFile="~/userside/MasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="userside_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>Contact Us</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="index.html">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>Contact Us</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Breadcromb Area End -->
       
       
      <!-- Contact Area Start -->
      <section class="gauto-contact-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-lg-7">
                  <div class="contact-left">
                     <h3>Get in touch</h3>
                     <form runat=server>
                        <div class="row">
                           <div class="col-md-6">
                              <div class="single-contact-field">
                                <%-- <input type="text" placeholder="Your Name">--%>
                                <asp:TextBox ID="txtname" runat="server" placeholder="Your Name"></asp:TextBox>
                              </div>
                           </div>
                           
                           <div class="col-md-6">
                              <div class="single-contact-field">
                               <asp:TextBox ID="txtemail" runat="server" placeholder="Your Email"></asp:TextBox>
                              </div>
  
                              </div>
                         </div>
                     
                        <div class="row">
                           <div class="col-md-6">
                              <div class="single-contact-field">
                                 <asp:TextBox ID="txtsubject" runat="server" placeholder="Subject"></asp:TextBox>
                              </div>
  
                              </div>
                          
                           <div class="col-md-6">
                              <div class="single-contact-field">
                                 <asp:TextBox ID="txtmob" runat="server" placeholder="Phone Number"></asp:TextBox>
                              </div>
  
                              </div>
                           </div>
                        
                        <div class="row">
                           <div class="col-md-12">
                              <div class="single-contact-field">
                                <asp:TextBox ID="txtmsg" runat="server" 
                                      placeholder="Write here your message..............." Height="134px" 
                                      TextMode="MultiLine" Width="653px"></asp:TextBox>
                              </div>
  
                              </div>
                        
                           </div>
                        <div class="row">
                           <div class="col-md-12">
                              <div class="single-contact-field">
                                 <%--<button type="submit" class="gauto-theme-btn"><i class="fa fa-paper-plane"></i> Send Message</button>--%>
                                 <asp:Button ID="btnsedn" runat="server" Text="Send Message" 
                                      class="gauto-theme-btn" onclick="btnsedn_Click"></asp:Button>
                              </div>
                           </div>
                        </div>
                   </form>
                  </div>
               </div>
              
               <div class="col-lg-5">
                  <div class="contact-right">
                     <h3>Contact information</h3>
                     <div class="contact-details">
                        <p><i class="fa fa-map-marker"></i> B-203/204 Shashiroop Homes Surat </p>
                        <div class="single-contact-btn">
                           <h4>Email Us</h4>
                           <a href="#">mishranitish795@gmail.com</a>
                        </div>
                        <div class="single-contact-btn">
                           <h4>Call Us</h4>
                           <a href="#">9773006479</a>
                        </div>
                        <div class="social-links-contact">
                           <h4>Follow Us:</h4>
                           <ul>
                              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                              <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                              <li><a href="#"><i class="fa fa-skype"></i></a></li>
                              <li><a href="#"><i class="fa fa-vimeo"></i></a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
        </div>
      </section>
</asp:Content>

