<%@ Page Language="C#" AutoEventWireup="true" CodeFile="OTP.aspx.cs" Inherits="Uhome_OTP" %>



<!DOCTYPE html>
<html lang="en-US">
   
<!-- Mirrored from themescare.com/demos/gauto-preview/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 03 Mar 2021 05:56:53 GMT -->
<head>
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="description" content="gauto | Car Rental HTML Template from Themescare">
      <meta name="keyword" content="taxi,car,rent,hire,transport">
      <meta name="author" content="Themescare">
      <!-- Title -->
      <title>gauto</title>
      <!-- Favicon -->
      <link rel="icon" type="image/png" sizes="32x32" href="assets/img/favicon/favicon-32x32.png">
      <!--Bootstrap css-->
      <link rel="stylesheet" href="assets/css/bootstrap.css">
      <!--Font Awesome css-->
      <link rel="stylesheet" href="assets/css/font-awesome.min.css">
      <!--Magnific css-->
      <link rel="stylesheet" href="assets/css/magnific-popup.css">
      <!--Owl-Carousel css-->
      <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
      <link rel="stylesheet" href="assets/css/owl.theme.default.min.css">
      <!--Animate css-->
      <link rel="stylesheet" href="assets/css/animate.min.css">
      <!--Datepicker css-->
      <link rel="stylesheet" href="assets/css/jquery.datepicker.css">
      <!--Nice Select css-->
      <link rel="stylesheet" href="assets/css/nice-select.css">
      <!-- Lightgallery css -->
      <link rel="stylesheet" href="assets/css/lightgallery.min.css">
      <!--ClockPicker css-->
      <link rel="stylesheet" href="assets/css/jquery-clockpicker.min.css">
      <!--Slicknav css-->
      <link rel="stylesheet" href="assets/css/slicknav.min.css">
      <!--Site Main Style css-->
      <link rel="stylesheet" href="assets/css/style.css">
      <!--Responsive css-->
      <link rel="stylesheet" href="assets/css/responsive.css">
   </head>
   <body>
       <section class="gauto-header-top-area">
         <div class="container">
            <div class="row">
               <div class="col-md-6">
                  <div class="header-top-left">
                     <p>Need Help?: <i class="fa fa-phone"></i> Call:9773006479</p>
                  </div>
               </div>
               <div class="col-md-6">
                  <div class="header-top-right">
                     <a href="login.aspx">
                     <i class="fa fa-key"></i>
                     login
                     </a>
                     <a href="registration.aspx">
                     <i class="fa fa-user"></i>
                     register
                     </a>
                     <div class="dropdown">
                        <button class="btn-dropdown dropdown-toggle" type="button" id="dropdownlang" data-toggle="dropdown" aria-haspopup="true">
                        <img src="assets/img/en.png" alt="lang" /> English
                        </button>
                        <ul class="dropdown-menu" aria-labelledby="dropdownlang">
                           <li><img src="assets/img/ca.png" alt="lang" /> Canada</li>
                           <li><img src="assets/img/fa.png" alt="lang" /> French</li>
                           <li><img src="assets/img/ja.png" alt="lang" /> Japanese</li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </section>
       
       
      <!-- Header Top Area Start -->
     
      <!-- Header Top Area End -->
       
       
      <!-- Main Header Area Start -->
     
       
       
      
      <!-- Breadcromb Area End -->
       
       
      <!-- Login Area Start -->
      <section class="gauto-login-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="login-box">
                     <div class="login-page-heading">
                        <i class="fa fa-key"></i>
                        <h3>Enter OTP</h3>
                     </div>
                     <form id="Form1" runat ="server">
                        <div class="account-form-group">
                          <%-- <input type="text" placeholder="Username or Email" name="username">--%>
                          <asp:TextBox ID="txtotp" runat="server" placeholder="OTP"></asp:TextBox>
                           <i class="fa fa-user"></i>
                        </div>
                        <div class="account-form-group">
                       <%--<%--    <input type="password" placeholder="Password" name="password">--
                          <asp:TextBox ID="txtpass" runat="server" placeholder="Password"></asp:TextBox>
                           <i class="fa fa-lock"></i>
                        </div>--%>
                       <%-- <div class="remember-row">
                           <p class="lost-pass">
                              <a href="#">forgot password?</a>
                           </p>
                           <p class="checkbox remember">
                              <input class="checkbox-spin" type="checkbox" id="Freelance">
                              <label for="Freelance"><span></span>Keep Me Signed In</label>
                           </p>
                        </div>
                       --%> <p>
                           <%--<button type="submit" class="gauto-theme-btn">Login now</button>--%>
                           <asp:Button ID="Verify" runat="server" Text="Verify" class="gauto-theme-btn" OnClick="Button1_Click"
                               ></asp:Button>
                        </p>
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
       
       
      <!-- Footer Area Start -->
     
       
       
      <!--Jquery js-->
      <script src="assets/js/jquery.min.js"></script>
      <!-- Popper JS -->
      <script src="assets/js/popper.min.js"></script>
      <!--Bootstrap js-->
      <script src="assets/js/bootstrap.min.js"></script>
      <!--Owl-Carousel js-->
      <script src="assets/js/owl.carousel.min.js"></script>
      <!--Lightgallery js-->
      <script src="assets/js/lightgallery-all.js"></script>
      <script src="assets/js/custom_lightgallery.js"></script>
      <!--Slicknav js-->
      <script src="assets/js/jquery.slicknav.min.js"></script>
      <!--Magnific js-->
      <script src="assets/js/jquery.magnific-popup.min.js"></script>
      <!--Nice Select js-->
      <script src="assets/js/jquery.nice-select.min.js"></script>
      <!-- Datepicker JS -->
      <script src="assets/js/jquery.datepicker.min.js"></script>
      <!--ClockPicker JS-->
      <script src="assets/js/jquery-clockpicker.min.js"></script>
      <!--Main js-->
      <script src="assets/js/main.js"></script>
   </body>

<!-- Mirrored from themescare.com/demos/gauto-preview/login.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 03 Mar 2021 05:56:53 GMT -->
</html>

