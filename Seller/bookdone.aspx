<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bookdone.aspx.cs" Inherits="userside_bookdone" %>

<!DOCTYPE html>
<!-- 
Template Name: Xpedia
Version: 1.0.0

-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="zxx">
<!--[endif]-->


<!-- Mirrored from xdemos.space/xpedia/car_booking_done.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 04 Jun 2021 05:08:38 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
	<meta charset="utf-8" />
	<title>Xpedia</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta name="description" content="Xpedia" />
	<meta name="keywords" content="Xpedia" />
	<meta name="author" content="" />
	<meta name="MobileOptimized" content="320" />
	<!--Template style -->
	<link rel="stylesheet" type="text/css" href="book/css/xpedia.css" />
	<!--favicon-->
	<link rel="shortcut icon" type="book/image/png" href="book/images/fevicon.png" />
</head>

<body>
	<!-- preloader Start -->
	
	
	

	
	<!-- btc tittle Wrapper End -->
	<!-- x tittle num Wrapper Start -->
	<%--<div class="x_title_num_mian_Wrapper float_left">
		<div class="container">
			<div class="x_title_inner_num_wrapper float_left">
				<div class="x_title_num_heading">
					<h3>Choose a car</h3>
					<p>Complete Your Step</p>
				</div>
				<div class="x_title_num_heading_cont">
					<div class="x_title_num_main_box_wrapper">
						<div class="x_icon_num">
							<p>1</p>
						</div>
						<h5>Time & place</h5>
					</div>
					<div class="x_title_num_main_box_wrapper">
						<div class="x_icon_num ">
							<p>2</p>
						</div>
						<h5>Car</h5>
					</div>
					<div class="x_title_num_main_box_wrapper">
						<div class="x_icon_num">
							<p>3</p>
						</div>
						<h5>detail</h5>
					</div>
					<div class="x_title_num_main_box_wrapper">
						<div class="x_icon_num">
							<p>4</p>
						</div>
						<h5>checkout</h5>
					</div>
					<div class="x_title_num_main_box_wrapper x_title_num_main_box_wrapper3 x_title_num_main_box_wrapper_last">
						<div class="x_icon_num x_icon_num3">
							<p>5</p>
						</div>
						<h5>done!</h5>
					</div>
				</div>
			</div>
		</div>
	</div>--%>
	<!-- x tittle num Wrapper End -->
	<div class="x_car_donr_main_box_wrapper float_left">
		<div class="container">
			<div class="x_car_donr_main_box_wrapper_inner">
				<div class="order-done"> <i class="icon-checked"><img src="images/icon-checked.png" alt=""></i>
					<h4>thank you! Order has been received</h4>
					<h4>Order number: ##<span>
                        <asp:Label ID="Label14" runat="server" Text=""></asp:Label></span></h4>
					<hr>
					<h4>Summary</h4>
                    <h4>
                        
					<ul class="row list-unstyled">
						<li class="col-md-6">
							<h6>Date</h6>
							<p>From <span>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></span>
							</p>
							<p>To <span>16-01-2018 @ 10:00</span>
							</p>
							<p>From <span>1 Day</span>
							</p>
						</li>
						<li class="col-md-6">
							<h6>Location</h6>
							<p>Billing Address <span><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></span>
							</p>
							<p>Shipping Address <span><asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></span>
							</p>
						</li>
						<li class="col-md-6">
							<h6>Car</h6>
							<p>
                                <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label><span><asp:Label ID="Label16"
                                    runat="server" Text="Label"></asp:Label></span>
							</p>
							<p>Coupe</p>
						</li>
						<li class="col-md-6">
							<h6>Add-ons</h6>
							<p>Shipping City <span><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></span>
							</p>
							<p>Billing City<span><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></span>
							</p>
						</li>
						<li class="col-md-6">
							<h6>Taxes & Fees</h6>
							<p>Sales Tax (0%) <span>$0</span>
							</p>
						</li>
						<li class="col-md-6">
							<h6>Total</h6>
                            <p>Payed By <span><asp:Label ID="Label11" runat="server" Text=""></asp:Label></span>
							</p>
                            
							<p>Payment on Arrival <span><asp:Label ID="Label17"
                                    runat="server" Text="Label"></asp:Label></span>
							</p>
						</li>
						<li class="col-md-12">
							<h6>Billing Information</h6>
							<p><asp:Label ID="Label5" runat="server" Text=""></asp:Label>
								<br><asp:Label ID="Label6" runat="server" Text=""></asp:Label>
								
								<br><asp:Label ID="Label8" runat="server" Text=""></asp:Label>
								<br><asp:Label ID="Label9" runat="server" Text=""></asp:Label>
								<br><asp:Label ID="Label7" runat="server" Text=""></asp:Label>
							
								
								
							</p>
						</li>
                        <li class="col-md-12">
							<h6>Shipping Information</h6>
							<p><asp:Label ID="Label21" runat="server" Text=""></asp:Label>
								<br><asp:Label ID="Label22" runat="server" Text=""></asp:Label>
								
								<br><asp:Label ID="Label23" runat="server" Text=""></asp:Label>
								<br><asp:Label ID="Label24" runat="server" Text=""></asp:Label>
								
								
								
							</p>
						</li>
						<li class="col-md-12">
							<h6>Additional Information</h6>
							<p>Your Booking is done .If you want then you can cancel the booking to clicking on cancel bokking button other wise continue ........... Thank You Happy Journey</p>
						</li>
					</ul>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="CarList.aspx">Click On Done</asp:HyperLink>
					<hr>
					<div class="contect_btn contect_btn_contact">
						<ul>
							<li><a href="#">Print Order <i class="fa fa-print"></i></a>
							</li>
                            </ul>

                            <form runat=server> 
                            <asp:Button ID="Button1" runat="server" Text="Cancel Order" CssClass="alert-danger" 
                                    ForeColor="Red" onclick="Button1_Click1" />
                                    </form>
						
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- x news latter Wrapper End -->
	
	<!-- x footer Wrapper Start -->
	<script src="book/js/jquery-3.3.1.min.js"></script>
	<script src="book/js/bootstrap.min.js"></script>
	<script src="book/js/modernizr.js"></script>
	<script src="book/js/select2.min.js"></script>
	<script src="book/js/jquery.menu-aim.js"></script>
	<script src="book/js/jquery-ui.js"></script>
	<script src="book/js/jquery.nice-select.min.js"></script>
	<script src="book/js/owl.carousel.js"></script>
	<script src="book/js/own-menu.js"></script>
	<script src="book/js/jquery.bxslider.min.js"></script>
	<script src="book/js/jquery.magnific-popup.js"></script>
	<script src="book/js/xpedia.js"></script>
	<!-- custom js-->
</body>


<!-- Mirrored from xdemos.space/xpedia/car_booking_done.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 04 Jun 2021 05:08:39 GMT -->
</html>
