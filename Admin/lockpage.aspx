<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lockpage.aspx.cs" Inherits="Admin_lockpage" %>



<!DOCTYPE html>
<html>


<!-- Mirrored from technext.github.io/admincast/lockscreen.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 May 2021 13:00:41 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=utf-8" /><!-- /Added by HTTrack -->
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width initial-scale=1.0">
    <title>Admincast bootstrap 4 &amp; angular 5 admin template, Шаблон админки | Locked Screen</title>
    <!-- GLOBAL MAINLY STYLES-->
    <link href="lock/assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="lock/assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <!-- THEME STYLES-->
    <link href="lock/assets/css/main.css" rel="stylesheet" />
</head>

<body class="bg-silver-300">
    <div class="content">
        <div class="brand">
            <a class="link" href="index.html">AdminCAST</a>
        </div>
        <div>
            <div class="text-center m-b-20" >
                <img class="img-circle" src="lock/assets/img/users/mish.jpg" width="110px" />
            </div>
            <center>
            <form  runat="server">
           
                <h5 class="font-strong">N.M/S.S</h5>
                <p class="font-13">Your are in lock screen. Enter your password to retrieve your session</p>
                <div class="form-group">
                    <%--<input class="form-control" type="password" name="password" placeholder="******">--%>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="******" 
                        class="form-control" Autocomplete="off" TextMode="Password"></asp:TextBox>
                </div>
                <div class="form-group">
                   <%-- <button class="btn btn-success btn-block" type="submit"> <i class="fa fa-unlock-alt m-r-5"></i>Unlock</button>--%>
                    <asp:Button ID="Button1" runat="server" Text="Unlock" 
                        class="btn btn-success btn-block" onclick="Button1_Click"  /><i class="fa fa-unlock-alt m-r-5"></i>
                </div>
              
            </form>
            </center>
        </div>
    </div>
    <style>
        .brand {
            font-size: 44px;
            text-align: center;
            margin: 40px 0;
        }

        .content {
            max-width: 300px;
            margin: 0 auto;
        }
    </style>
    <!-- BEGIN PAGA BACKDROPS-->
    <div class="sidenav-backdrop backdrop"></div>
    <div class="preloader-backdrop">
        <div class="page-preloader">Loading</div>
    </div>
    <!-- END PAGA BACKDROPS-->
    <!-- CORE PLUGINS -->
    <script src="lock/assets/vendors/jquery/dist/jquery.min.js" type="text/javascript"></script>
    <script src="lock/assets/vendors/popper.js/dist/umd/popper.min.js" type="text/javascript"></script>
    <script src="lock/assets/vendors/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- PAGE LEVEL PLUGINS -->
    <script src="lock/assets/vendors/jquery-validation/dist/jquery.validate.min.js" type="text/javascript"></script>
    <!-- CORE SCRIPTS-->
    <script src="lock/assets/js/app.js" type="text/javascript"></script>
    <!-- PAGE LEVEL SCRIPTS-->
    <script type="text/javascript">
        $(function() {
            $('#lock-form').validate({
                errorClass: "help-block",
                rules: {
                    password: {
                        required: true
                    }
                },
                highlight: function(e) {
                    $(e).closest(".form-group").addClass("has-error")
                },
                unhighlight: function(e) {
                    $(e).closest(".form-group").removeClass("has-error")
                },
                errorPlacement: function(e, r) {
                    var i = $(r).parents(".input-group, .check-list");
                    i.length ? i.after(e) : r.after(e)
                },
            });
        });
    </script>
</body>


<!-- Mirrored from technext.github.io/admincast/lockscreen.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 01 May 2021 13:00:41 GMT -->
</html>
