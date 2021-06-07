<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Driv_Reg.aspx.cs" Inherits="Driver_Driv_Reg" %>

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
     <script src="../script/jquery-1.10.2.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $("#btnsub").click(function () {
                var name = $("#txtname").val();
                var email = $("#txtemail").val();
                var pass = $("#txtpass").val();
                var conpass = $("#txtconpass").val();
                var mob = $("#txtmob").val();
                var adhar = $("#txtadhar").val();
                var add = $("#txtadd").val();
               
                var pic = $("#FileUpload1").val();
                if (name == "") {
                    alert("Please Insert Driver Name...");
                    document.getElementById("txtname").focus();
                    return false;
                }
                if (mob == "") {
                    alert("Please Insert Mobile Number...");
                    document.getElementById("txtmob").focus();
                    return false;
                }
                if (email == "") {
                    alert("Please Insert  Emailid...");
                    document.getElementById("txtemail").focus();
                    return false;
                }
                if (pass == "") {
                    alert("Please Insert  pass...");
                    document.getElementById("txtpass").focus();
                    return false;
                }
                if (conpass == "") {
                    alert("Please Inssert Confirm Password same as password must be same...");
                    document.getElementById("txtconpass").focus();
                    return false;
                }
                if (pic == "") {
                    alert("Please Insert Driver Pic...");
                    document.getElementById("FileUpload1").focus();
                    return false;
                }
                if (adhar == "") {
                    alert("Please Insert Driver Adhar Number...");
                    document.getElementById("txtadhar").focus();
                    return false;
                }
                if (add == "") {
                    alert("Please Insert Driver Address...");
                    document.getElementById("txtadd").focus();
                    return false;
                }
                if (pass.length < 4 && pass.length > 18) {
                    alert("Password should be at least 4 character ...");
                    document.getElementById("txtpass").focus();
                    return false;
                }
                if (mob.length < 10 && mob.length > 10) {
                    alert("Mobile Number should be at least 10 and 10 character ...");
                    document.getElementById("txtmob").focus();
                    return false;
                }
                if (adhar.length < 14 && adhar.length > 14) {
                    alert("Password should be at least 14 and 14 character ...");
                    document.getElementById("txtadhar").focus();
                    return false;
                }
//                if (name!=/^[a-zA-Z]+$/) {
//                    alert("Name Only Characters are allowed");
//                    document.getElementById("txtname").focus();
//                    return false;
//                }
//                if (email != /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/) {
//                                    alert("Enter email in currect formate");
//                                    document.getElementById("txtemail").focus();
//                                    return false;
//                                }
            });
        });
    </script>
</head>

<body class="bg-silver-300">
    <div class="content">
        <div class="brand">
            <a class="link" href="index.html">Driver</a>
        </div>
         <form id="Form1" runat="server">
            <h2 class="login-title">Sign Up</h2>
            <div class="row">
                <div class="col-6">
                    <div class="form-group">
                       <%-- <input class="form-control" type="text" name="first_name" placeholder="First Name">--%>
                       <asp:TextBox ID="txtname" runat="server" placeholder="Drivr_Name" class="form-control" autocomplete="off"></asp:TextBox>
                    </div>
                </div>
                <div class="col-6">
                    <div class="form-group">
                        <asp:TextBox ID="txtemail" runat="server" placeholder="Email" class="form-control" autocomplete="off"></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="form-group">
               <%-- <input class="form-control" type="email" name="email" placeholder="Email" autocomplete="off">--%>
                <asp:TextBox ID="txtpass" runat="server" placeholder="Password" class="form-control" autocomplete="off" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <%--<input class="form-control" id="password" type="password" name="password" placeholder="Password">--%>
                <asp:TextBox ID="txtconpass" runat="server" placeholder="Confirm Password" class="form-control" TextMode="Password"></asp:TextBox>
            </div>
            <div class="form-group">
                <%--<input class="form-control" type="password" name="password_confirmation" placeholder="Confirm Password">--%>
                 <asp:TextBox ID="txtmob" runat="server" placeholder="Mobile_Number" class="form-control" autocomplete="off"></asp:TextBox>
            </div>
            <div class="form-group">
                <%--<input class="form-control" type="password" name="password_confirmation" placeholder="Confirm Password">--%>
                  <asp:TextBox ID="txtadhar" runat="server" placeholder="Adhar_Number" class="form-control" autocomplete="off"></asp:TextBox>
            </div>
            <div class="form-group">
                <%--<input class="form-control" type="password" name="password_confirmation" placeholder="Confirm Password">--%>
                 <asp:TextBox ID="txtadd" runat="server" placeholder="Driver_Add" TextMode="MultiLine" 
                                     Height="39px" Width="355px" class="form-control" autocomplete="off"></asp:TextBox>
            </div>
            <div class="form-group">
                <%--<input class="form-control" type="password" name="password_confirmation" placeholder="Confirm Password">--%>
                <asp:DropDownList ID="ddlcountry" runat="server" class="form-control" 
                    AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="CountryName" 
                    DataValueField="countryId" >
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Country_mstr]"></asp:SqlDataSource>
            </div>
            <div class="form-group">
                <%--<input class="form-control" type="password" name="password_confirmation" placeholder="Confirm Password">--%>
                <asp:DropDownList ID="ddlstate" runat="server" class="form-control" 
                    autocomplete="off" AutoPostBack="True" DataSourceID="SqlDataSource2" 
                    DataTextField="StateName" DataValueField="StateId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [state_mstr] WHERE ([CountryId] = @CountryId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlcountry" Name="CountryId" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="form-group">
                <%--<input class="form-control" type="password" name="password_confirmation" placeholder="Confirm Password">--%>
                <asp:DropDownList ID="ddlcity" runat="server" class="form-control" 
                    DataSourceID="SqlDataSource3" DataTextField="CityName" DataValueField="CityId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [city_mstr] WHERE ([StateId] = @StateId)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="ddlstate" Name="StateId" 
                            PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="form-group">
                <%--<input class="form-control" type="password" name="password_confirmation" placeholder="Confirm Password">--%>
                <asp:FileUpload ID="FileUpload1" runat="server"  class="form-control" />
                            </div>
            <div class="form-group text-left">
                <label class="ui-checkbox ui-checkbox-info">
                    <input type="checkbox" name="agree">
                    <span class="input-span"></span>I agree the terms and policy</label>
            </div>

            <div class="form-group">
               <%-- <button class="btn btn-info btn-block" type="submit">Sign up</button>--%>
                <asp:Button ID="btnsub" runat="server" Text="Submit" onclick="btnsub_Click" />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </div>
            <div class="text-center social-auth m-b-20">
                <a class="btn btn-social-icon btn-twitter m-r-5" href="javascript:;"><i class="fa fa-twitter"></i></a>
                <a class="btn btn-social-icon btn-facebook m-r-5" href="javascript:;"><i class="fa fa-facebook"></i></a>
                <a class="btn btn-social-icon btn-google m-r-5" href="javascript:;"><i class="fa fa-google-plus"></i></a>
                <a class="btn btn-social-icon btn-linkedin m-r-5" href="javascript:;"><i class="fa fa-linkedin"></i></a>
                <a class="btn btn-social-icon btn-vk" href="javascript:;"><i class="fa fa-vk"></i></a>
            </div>
            <div class="text-center">Already a member?
                <a class="color-blue" href="login.aspx">Login here</a>
            </div>
        </form>
    </div>
    <!-- BEGIN PAGA BACKDROPS-->
    <div class="sidenav-backdrop backdrop">
        <br />
        <br />
            <div class="social-auth-hr">
                <span>Or Sign up with</span>
            </div>
            </div>
    <div class="preloader-backdrop">
        <div class="page-preloader">Loading</div>
    </div>
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
            $('#register-form').validate({
                errorClass: "help-block",
                rules: {
                    first_name: {
                        required: true,
                        minlength: 2
                    },
                    last_name: {
                        required: true,
                        minlength: 2
                    },
                    email: {
                        required: true,
                        email: true
                    },
                    password: {
                        required: true,
                        confirmed: true
                    },
                    password_confirmation: {
                        equalTo: password
                    }
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