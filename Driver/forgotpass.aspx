<%@ Page Language="C#" AutoEventWireup="true" CodeFile="forgotpass.aspx.cs" Inherits="Driver_Default" %>


<!DOCTYPE html>
<html>


<!-- Mirrored from technext.github.io/admincast/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 May 2021 13:00:41 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width initial-scale=1.0">
    <title>Admincast bootstrap 4 &amp; angular 5 admin template, Шаблон админки | Register</title>
    <!-- GLOBAL MAINLY STYLES-->
    <link href="assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link href="assets/vendors/themify-icons/css/themify-icons.css" rel="stylesheet" />
    <!-- THEME STYLES-->
    <link href="assets/css/main.css" rel="stylesheet" />
    <!-- PAGE LEVEL STYLES-->
    <link href="assets/css/pages/auth-light.css" rel="stylesheet" />
</head>

<body class="bg-silver-300">
    <div class="content">
        <div class="brand">
            <a class="link" href="index.html">AdminCAST</a>
        </div>
         <form id="Form1" runat="server">
            <h2 class="login-title">Forgot Password</h2>
            
                    <div class="form-group">
                    <div class="input-group-icon right">
                    <div class="input-icon"><i class="fa fa-envelope"></i></div>
                       <%-- <input class="form-control" type="text" name="first_name" placeholder="First Name">--%>
                       <asp:TextBox ID="txtemail" runat="server" placeholder="Email" class="form-control" autocomplete="off"></asp:TextBox>
                    </div>
                    </div>
        
           
            <div class="form-group">
               <%-- <button class="btn btn-info btn-block" type="submit">Sign up</button>--%>
                <asp:Button ID="btnsub" runat="server" Text="Forgot"   
                    class="btn btn-info btn-block" onclick="btnsub_Click" />
                            </div>
            <div class="text-center social-auth m-b-20">
                <a class="btn btn-social-icon btn-twitter m-r-5" href="javascript:;"><i class="fa fa-twitter"></i></a>
                <a class="btn btn-social-icon btn-facebook m-r-5" href="javascript:;"><i class="fa fa-facebook"></i></a>
                <a class="btn btn-social-icon btn-google m-r-5" href="javascript:;"><i class="fa fa-google-plus"></i></a>
                <a class="btn btn-social-icon btn-linkedin m-r-5" href="javascript:;"><i class="fa fa-linkedin"></i></a>
                <a class="btn btn-social-icon btn-vk" href="javascript:;"><i class="fa fa-vk"></i></a>
            </div>
           
         <asp:Label ID="lblpass" runat="server" Text="">Your Password Is:</asp:Label>
        </form>
    </div>
    <!-- BEGIN PAGA BACKDROPS-->
   
    <!-- END PAGA BACKDROPS-->
    <!-- CORE PLUGINS -->
    <script src="assets/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>
    <script src="assets/vendors/popper.js/dist/umd/popper.min.js" type="text/javascript"></script>
    <script src="assets/vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- PAGE LEVEL PLUGINS -->
    <script src="assets/vendors/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
    <!-- CORE SCRIPTS-->
    <script src="assets/js/app.js" type="text/javascript"></script>
    <!-- PAGE LEVEL SCRIPTS-->
   <script type="text/javascript">
        $(function() {
            $('#forgot-form').validate({
                errorClass: "help-block",
                rules: {
                    email: {
                        required: true,
                        email: true
                    },
                },
                highlight: function(e) {
                    $(e).closest(".form-group").addClass("has-error")
                },
                unhighlight: function(e) {
                    $(e).closest(".form-group").removeClass("has-error")
                },
            });
        });
    </script>
</body>


<!-- Mirrored from technext.github.io/admincast/register.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 May 2021 13:00:41 GMT -->
</html>