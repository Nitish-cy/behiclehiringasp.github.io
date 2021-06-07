<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BuyerSellerReg.aspx.cs" Inherits="Seller_BuyerSellerReg" %>


<!DOCTYPE html>
<html lang="zxx">

<!-- Mirrored from storage.googleapis.com/theme-vessel/checking-sites/autocar-html/HTML/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 May 2021 13:58:22 GMT -->
<head>
    <title>Auto Car - Automobile Dealer HTML Template</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">

    <!-- External CSS libraries -->
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap-submenu.css">

    <link rel="stylesheet" type="text/css" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" type="text/css" href="fonts/linearicons/style.css">
    <link rel="stylesheet" type="text/css"  href="css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css"  href="css/dropzone.css">
    <link rel="stylesheet" type="text/css"  href="css/slick.css">
    <link rel="stylesheet" type="text/css"  href="css/lightbox.min.css">
    <link rel="stylesheet" type="text/css"  href="css/jnoty.css">

    <!-- Custom stylesheet -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" id="style_sheet" href="css/skins/yellow.css">

    <!-- Favicon icon -->
    <link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" >

    <!-- Google fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,600,700%7CUbuntu:300,400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700,800,900&amp;display=swap" rel="stylesheet">

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <link rel="stylesheet" type="text/css" href="css/ie10-viewport-bug-workaround.css">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script  src="js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script  src="js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script  src="js/html5shiv.min.js"></script>
    <script  src="js/respond.min.js"></script>
    <![endif]-->
    <script src="../script/jquery-1.10.2.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $("#btnreg").click(function () {
                var name = $("#txtname").val();
                var email = $("#txtemail").val();
                var pass = $("#txtpass").val();
                var conpass = $("#txtpass").val();
                var pic = $("#FileUpload1").val();
                if (name == "") {
                    alert("Please Insert Student Name...");
                    return false;
                }
                if (name == "") {
                    alert("Please Insert Student Name...");
                    return false;
                }
                if (email == "") {
                    alert("Please Insert Student Emailid...");
                    return false;
                }
                if (pass == "") {
                    alert("Please Insert Student pass...");
                    return false;
                }
                if (conpass == "") {
                    alert("Please Inssert Confirm Password same as password must be same...");
                    return false;
                }
                if (pic == "") {
                    alert("Please Insert Student Pic...");
                    return false;
                }
                if (pass.length < 4 && pass.length > 18) {
                    alert("Password should be at least 4 character ...");
                    document.getElementById("txtpass").focus();
                    return false;
                }
//                if (email != /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/) {
//                    alert("Enter email in currect formate");
//                    document.getElementById("txtEmail").focus();
//                    return false;
//                }
            });
        });
    </script>
</head>
<body>
<div class="page_loader"></div>

<!-- Contact section start -->
<div class="contact-section">
    <div class="container">
        <div class="row login-box">
            <div class="col-lg-6 align-self-center pad-0">
                <div class="form-section clearfix">
                    <h3>Create an account</h3>
                    <div class="btn-section clearfix">
                        <a href="BuyerSellerLog.aspx" class="link-btn active btn-1 default-bg">Login</a>
                        <a href="BuyerSellerReg.aspx" class="link-btn btn-2 active-bg">Register</a>
                    </div>
                    <div class="clearfix"></div>
                    <form runat="server" Autocomplete="off">
                        <div class="form-group form-box">
                            <%--<input type="email" name="email" class="input-text" placeholder="Full Name">--%>
                            <asp:TextBox ID="txtname" runat="server"  class="input-text" placeholder="Full Name"></asp:TextBox>
                        </div>
                        <div class="form-group form-box">
                            <%--<input type="email" name="email" class="input-text" placeholder="Email Address">--%>
                             <asp:TextBox ID="txtemail" runat="server" class="input-text" 
                                placeholder="Email Address" TextMode="Email"></asp:TextBox>
                        </div>
                        <div class="form-group form-box">
                            <%--<input type="password" name="Password" class="input-text" placeholder="Password">--%>
                             <asp:TextBox ID="txtpass" runat="server" class="input-text" 
                                placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                        <div class="form-group form-box">
                         <asp:TextBox ID="txtconpass" runat="server" class="input-text" 
                                placeholder="Confirm Password" TextMode="Password" ></asp:TextBox>
                        </div>
                        <div class="form-group form-box">
                           <%-- <input type="password" name="Password" class="input-text" placeholder="Password--%>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>
                        <div class="form-group clearfix mb-0">
                          <%--  <button type="submit" class="btn-md btn-theme float-left">Register</button>--%>
                            <asp:Button ID="btnreg" runat="server" Text="Register" 
                                class="btn-md btn-theme float-left" onclick="btnreg_Click" />
                                <br />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-lg-6 align-self-center pad-0 bg-img">
                <div class="info clearfix">
                    <div class="logo-2">
                        <a href="#">
                            <img src="img/logos/logo.png" alt="logo">
                        </a>
                    </div>
                    <h3>Welcome to Logdy</h3>
                    <div class="social-list">
                        <a href="#" class="facebook-bg">
                            <i class="fa fa-facebook"></i>
                        </a>
                        <a href="#" class="twitter-bg">
                            <i class="fa fa-twitter"></i>
                        </a>
                        <a href="#" class="google-bg">
                            <i class="fa fa-google"></i>
                        </a>
                        <a href="#" class="linkedin-bg">
                            <i class="fa fa-linkedin"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Contact section end -->

<!-- Full Page Search -->
<div id="full-page-search">
    <button type="button" class="close">×</button>
    <form action="https://storage.googleapis.com/theme-vessel/checking-sites/autocar-html/HTML/index.html#">
        <input type="search" value="" placeholder="type keyword(s) here" />
        <button type="submit" class="btn btn-sm button-theme">Search</button>
    </form>
</div>

<!-- Car Overview Modal -->
<div class="car-model-2">
    <div class="modal fade" id="carOverviewModal" tabindex="-1" role="dialog" aria-labelledby="carOverviewModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="modal-title" id="carOverviewModalLabel">
                        <h4>Find Your Dream Car</h4>
                        <h5><i class="flaticon-pin"></i> 123 Kathal St. Tampa City,</h5>
                    </div>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row modal-raw">
                        <div class="col-lg-6 modal-left">
                            <div class="item active">
                                <img src="img/car-11.jpg" alt="best-car" class="img-fluid">
                                <div class="sobuz">
                                    <div class="price-box">
                                        <span class="del"><del>$950.00</del></span>
                                        <br>
                                        <span class="del-2">$1050.00</span>
                                    </div>
                                    <div class="ratings-2">
                                        <span class="ratings-box">4.5/5</span>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-o"></i>
                                        ( 7 Reviews )
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6 modal-right">
                            <div class="modal-right-content">
                                <section>
                                    <h3>Features</h3>
                                    <div class="features">
                                        <ul class="bullets">
                                            <li>Cruise Control</li>
                                            <li>Airbags</li>
                                            <li>Air Conditioning</li>
                                            <li>Alarm System</li>
                                            <li>Audio Interface</li>
                                            <li>CDR Audio</li>
                                            <li>Seat Heating</li>
                                            <li>ParkAssist</li>
                                        </ul>
                                    </div>
                                </section>
                                <section>
                                    <h3>Overview</h3>
                                    <ul class="bullets">
                                        <li>Model</li>
                                        <li>Year</li>
                                        <li>Condition</li>
                                        <li>Price</li>
                                        <li>Audi</li>
                                        <li>2020</li>
                                        <li>Brand New</li>
                                        <li>$178,000</li>
                                    </ul>
                                </section>
                                <div class="description">
                                    <h3>Description</h3>
                                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard.</p>
                                    <a href="car-details.html" class="btn btn-md btn-round btn-theme">Show Detail</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="js/jquery-2.2.0.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script  src="js/bootstrap-submenu.js"></script>
<script  src="js/rangeslider.js"></script>
<script  src="js/jquery.mb.YTPlayer.js"></script>
<script  src="js/bootstrap-select.min.js"></script>
<script  src="js/jquery.easing.1.3.js"></script>
<script  src="js/jquery.scrollUp.js"></script>
<script  src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script  src="js/dropzone.js"></script>
<script  src="js/slick.min.js"></script>
<script  src="js/jquery.filterizr.js"></script>
<script  src="js/jquery.magnific-popup.min.js"></script>
<script  src="js/jquery.countdown.js"></script>
<script  src="js/jquery.mousewheel.min.js"></script>
<script  src="js/lightgallery-all.js"></script>
<script  src="js/jnoty.js"></script>
<script  src="js/app.js"></script>

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script  src="js/ie10-viewport-bug-workaround.js"></script>
<!-- Custom javascript -->
<script  src="js/ie10-viewport-bug-workaround.js"></script>
</body>

<!-- Mirrored from storage.googleapis.com/theme-vessel/checking-sites/autocar-html/HTML/signup.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 May 2021 13:58:22 GMT -->
</html>

