<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Admin_login" %>


<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Login Page - Ace Admin</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
        <script language="javascript" type="text/javascript">
            function msg() {
                var email = document.getElementById("txtemail").value;
                var pass = document.getElementById("txtpass").value;
                if (email == "" && pass == "") {
                    alert("Email And Password are required ...");
                    document.getElementById("txtemail").focus();
                    return false;
                }
                if (email == "") {
                    alert("Email is required...");
                    document.getElementById("txtemail").focus();
                    return false;
                }
                if (pass == "") {
                    alert("Password is required...");
                    document.getElementById("txtpass").focus();
                    return false;
                }
                if (pass .length < 4 && pass.length > 18) {
                    alert("Password should be at least 4 character ...");
                    document.getElementById("txtpass").focus();
                    return false;
                }
                if (email != /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/) {
                    alert("Enter email in currect formate");
                    document.getElementById("txtEmail").focus();
                    return false;
                }
                return false;
            }
            function validate() {
                var email = document.getElementById("txtmail").value;
                var pass = document.getElementById("txtpas").value;
                var name = document.getElementById("txtname").value;
                var conpass = document.getElementById("txtconpass").value;
                var mobile = document.getElementById("txtmob").value;
                if (email == "" && pass == "" && conpass=="" && name=="" && mobile=="") {
                    alert("Every Fields are Required ...");
                    document.getElementById("txtname").focus();
                    return false;
                }
                if (email == "") {
                    alert("Email is required ...");
                    document.getElementById("txtemail").focus();
                    return false;
                }
                if (pass == "") {
                    alert("Password is required...");
                    document.getElementById("txtpass").focus();
                    return false;
                }
                if (name == "") {
                    alert("Name is required ...");
                    document.getElementById("txtname").focus();
                    return false;
                }
                if (conpass == "") {
                    alert("Confirm Password is required ...");
                    document.getElementById("txtconpass").focus();
                    return false;
                }
                if (conpass != pass) {
                    alert("Confirm Password is same as password ...");
                    document.getElementById("txtconpass").focus();
                    return false;
                }
                if (mobile == "") {
                    alert("Mobile Number is required ...");
                    document.getElementById("txtmob").focus();
                    return false;
                }
                if (pass.length < 4 && pass.length > 18) {
                    alert("Password should be at least 4 character and max 18 character...");
                    document.getElementById("txtpass").focus();
                    return false;
                }
                if (mobile.length < 10 && mobile.length > 10) {
                    alert("Mobile Number must be 10 digit ...");
                    document.getElementById("txtmob").focus();
                    return false;
                }
//                if (name!=/^[a-zA-Z]+$/) {
//                    alert("Name Only Characters are allowed");
//                    document.getElementById("txtname").focus();
//                    return false;
//                }
                if (email!=/^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/) {
                    alert("Enter email in currect formate");
                    document.getElementById("txtmail").focus();
                    return false;
                }
//                return false;

            }
        </script>
	</head>
    <form runat="server">
	<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="ace-icon fa fa-leaf green"></i>
									<span class="red">Aspirant Brands</span>
									<span class="white" id="id-text2">Application</span>
								</h1>
								<h4 class="blue" id="id-company-text">&copy; Brand 3232 Vehicle Hiing and Buying Selling Old Cars</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i>
												Please Enter Your Information
											</h4>

											<div class="space-6"></div>

											
												<fieldset>
													<label class="block clearfix">
                                                     <i class="ace-icon fa fa-user"></i>
														<span class="block input-icon input-icon-right">
                                                       
															<%--<input type="text" class="form-control" placeholder="Username" />--%>
                                                            <asp:TextBox ID="txtemail" runat="server"  class="form-control" 
                                                        placeholder="    Useremail"  AutoCompleteType="Disabled" >
</asp:TextBox>
                                                           
															
														</span>
													</label>

													<label class="block clearfix">
                                                    <i class="ace-icon fa fa-lock"></i>
														<span class="block input-icon input-icon-right">
															<%--<input type="password" class="form-control" placeholder="Password" />--%>
                                                            <asp:TextBox ID="txtpass" runat="server" class="form-control" 
                                                        placeholder="   Password" TextMode="Password"></asp:TextBox>
                                                            
															
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														<label class="inline">
															<input type="checkbox" class="ace" />
															<span class="lbl"> Remember Me</span>
														</label>

														<%--<button type="button" class="width-35 pull-right btn btn-sm btn-primary">
															<i class="ace-icon fa fa-key"></i>
															<span class="bigger-110">Login</span>
														</button>--%>
                                                        <asp:Button ID="btnlog" runat="server" Text="Login" 
                                                            class="width-35 pull-right btn btn-sm btn-primary" onclick="btnlog_Click" OnClientClick="return msg();"/>
													</div>

													<div class="space-4"></div>
												</fieldset>
                                                <br />
                                                <br />

										

											<div class="social-or-login center">
												<span class="bigger-110">Or Login Using</span>
											</div>

											<div class="space-6"></div>

											<div class="social-login center">
												<a class="btn btn-primary">
													<i class="ace-icon fa fa-facebook"></i>
												</a>

												<a class="btn btn-info">
													<i class="ace-icon fa fa-twitter"></i>
												</a>

												<a class="btn btn-danger">
													<i class="ace-icon fa fa-google-plus"></i>
												</a>
											</div>
										</div><!-- /.widget-main -->

										<div class="toolbar clearfix">
											<div>
												<a href="#" data-target="#forgot-box" class="forgot-password-link">
													<i class="ace-icon fa fa-arrow-left"></i>
													I forgot my password
												</a>
											</div>

											<div>
												<a href="#" data-target="#signup-box" class="user-signup-link">
													I want to register
													<i class="ace-icon fa fa-arrow-right"></i>
												</a>
											</div>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->
                               
                                <br />
                                <br />

								<div id="forgot-box" class="forgot-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header red lighter bigger">
												<i class="ace-icon fa fa-key"></i>
												Retrieve Password
											</h4>

											<div class="space-6"></div>
											<p>
												Enter your email and to receive instructions
											</p>

											
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<%--<input type="email" class="form-control" placeholder="Email" />--%>
                                                             <asp:TextBox ID="txtremial"   placeholder="Enter Email" class="form-control" runat="server"></asp:TextBox>
															<i class="ace-icon fa fa-envelope"></i>
														</span>
													</label>

													<div class="clearfix">
														<%--<button type="button" class="width-35 pull-right btn btn-sm btn-danger">
															<i class="ace-icon fa fa-lightbulb-o"></i>
															<span class="bigger-110">Send Me!</span>
														</button>--%>
                                                        <asp:Button ID="btnfor" runat="server" Text="Send Me" class="width-35 pull-right btn btn-sm btn-danger"  onclick="btnfor_Click" />
                                                        <br />

                                                         <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
													</div>
												</fieldset>
										
										</div><!-- /.widget-main -->

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												Back to login
												<i class="ace-icon fa fa-arrow-right"></i>
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.forgot-box -->

								<div id="signup-box" class="signup-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header green lighter bigger">
												<i class="ace-icon fa fa-users blue"></i>
												New User Registration
											</h4>

											<div class="space-6"></div>
											<p> Enter your details to begin: </p>

											
												<fieldset>
													<label class="block clearfix">
                                                    <i class="ace-icon fa fa-user"></i>
														<span class="block input-icon input-icon-right">

															<%--<input type="text" class="form-control" placeholder="Username" />--%>
                                                            <asp:TextBox ID="txtname"  placeholder="Enter Name" class="form-control"  runat="server"></asp:TextBox>
															
														</span>
                                                        
													</label>

													<label class="block clearfix">
                                                    <i class="ace-icon fa fa-lock"></i>
														<span class="block input-icon input-icon-right">
															<%--<input type="text" class="form-control" placeholder="Username" />--%>
                                                            <asp:TextBox ID="txtpas"  placeholder="Enter Password" class="form-control" runat="server"></asp:TextBox>
															
														</span>
													</label>

													<label class="block clearfix">
                                                    <i class="ace-icon fa fa-lock"></i>
														<span class="block input-icon input-icon-right">
															<%--<input type="password" class="form-control" placeholder="Password" />--%>
                                                            <asp:TextBox ID="txtconpass"  placeholder="Confirm Password" class="form-control" runat="server"></asp:TextBox>
															
														</span>
													</label>
                                                <label class="block clearfix">
                                                <i class="ace-icon fa fa-envelope"></i>
														<span class="block input-icon input-icon-right">
															<%--<input type="email" class="form-control" placeholder="Email" />--%>
                                                            <asp:TextBox ID="txtmail"   placeholder="Enter Email" class="form-control" runat="server"></asp:TextBox>
															
														</span>
													</label>
                                                    <label class="block clearfix">
                                                    <i class="ace-icon fa fa-retweet"></i>
														<span class="block input-icon input-icon-right">
															 <asp:TextBox ID="txtmob" runat="server"  class="form-control" placeholder="Enter Mobile Number" ></asp:TextBox>
															
														</span>
													</label>
                                                   
                                                    <label class="block clearfix">
                                                    <i class="ace-icon fa fa-retweet"></i>
														<span class="block input-icon input-icon-right">
                                                            <asp:FileUpload ID="FileUpload1" runat="server" class="form-control" />
															
														</span>
													</label>
													<label class="block">
														<input type="checkbox" class="ace" />
														<span class="lbl">
															I accept the
															<a href="#">User Agreement</a>
														</span>
													</label>

													<div class="space-24"></div>

													
														<%--<button type="button" class="width-65 pull-right btn btn-sm btn-success">--%>
                                                        <asp:Button ID="btnreg" runat="server" Text="Button"  class="width-65 pull-right btn btn-sm btn-success" onclick="btnreg_Click" OnClientClick="return validate();" />
                                                        <br />
                                                         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
															<%--<span class="bigger-110">Register</span>
                                                           
															<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
														</button>--%>
													</div>
												</fieldset>
											
										</div>

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												<i class="ace-icon fa fa-arrow-left"></i>
												Back to login
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.signup-box -->
							</div><!-- /.position-relative -->

							<div class="navbar-fixed-top align-right">
								<br />
								&nbsp;
								<a id="btn-login-dark" href="#">Dark</a>
								&nbsp;
								<span class="blue">/</span>
								&nbsp;
								<a id="btn-login-blur" href="#">Blur</a>
								&nbsp;
								<span class="blue">/</span>
								&nbsp;
								<a id="btn-login-light" href="#">Light</a>
								&nbsp; &nbsp; &nbsp;
							</div>
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
		    if ('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
		</script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
		    jQuery(function ($) {
		        $(document).on('click', '.toolbar a[data-target]', function (e) {
		            e.preventDefault();
		            var target = $(this).data('target');
		            $('.widget-box.visible').removeClass('visible'); //hide others
		            $(target).addClass('visible'); //show target
		        });
		    });



		    //you don't need this, just used for changing background
		    jQuery(function ($) {
		        $('#btn-login-dark').on('click', function (e) {
		            $('body').attr('class', 'login-layout');
		            $('#id-text2').attr('class', 'white');
		            $('#id-company-text').attr('class', 'blue');

		            e.preventDefault();
		        });
		        $('#btn-login-light').on('click', function (e) {
		            $('body').attr('class', 'login-layout light-login');
		            $('#id-text2').attr('class', 'grey');
		            $('#id-company-text').attr('class', 'blue');

		            e.preventDefault();
		        });
		        $('#btn-login-blur').on('click', function (e) {
		            $('body').attr('class', 'login-layout blur-login');
		            $('#id-text2').attr('class', 'white');
		            $('#id-company-text').attr('class', 'light-blue');

		            e.preventDefault();
		        });

		    });
		</script>
	</body>
    </form>
</html>
