<%@ Page Title="" Language="C#" MasterPageFile="~/userside/MasterPage.master" AutoEventWireup="true" CodeFile="forgot.aspx.cs" Inherits="userside_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>Login Page</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="index.html">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>Login</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
       
       
      <!-- Login Area Start -->
      <section class="gauto-login-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="login-box">
                     <div class="login-page-heading">
                        <i class="fa fa-key"></i>
                        <h3>sign in</h3>
                     </div>
                     <form id="Form1" runat ="server">
                        <div class="account-form-group">
                          <%-- <input type="text" placeholder="Username or Email" name="username">--%>
                          <asp:TextBox ID="txtemail" runat="server" placeholder="Email"></asp:TextBox>
                           <i class="fa fa-user"></i>
                        </div>
                        
                        <p>
                           <%--<button type="submit" class="gauto-theme-btn">Login now</button>--%>
                          <asp:Button ID="Button1" runat="server" Text="Forgot"  class="gauto-theme-btn" 
                                onclick="Button1_Click"></asp:Button>
                        </p>
                        <div class="account-form-group">
                          <%-- <input type="text" placeholder="Username or Email" name="username">--%>
                          <asp:Label ID="lblpass" runat="server" Text=""></asp:Label>
                        </div>
                     </form>
                     <div class="login-sign-up">
                        <%--<a href="register.html">Do you need an account?</a>--%>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="registration.aspx">Do you need an account?</asp:HyperLink>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Login Area End -->
       
       
       

</asp:Content>

