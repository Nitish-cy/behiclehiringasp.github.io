<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="Contactus.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Contact Us</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">Contact Us</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Contact 2 start -->

<div class="contact-2 content-area-5">
    <div class="container">
        <!-- Main title -->
        <div class="main-title text-center">
            <h1>Contact Us</h1>
            <p>Contact to selling and buying old or new cars</p>
        </div>
        <form runat="server"  Autocomplete="off">

            <div class="row">
                <div class="col-lg-7">
                    <div class="row">
                        <div class="col-md-6 text-left">
                            <div class="form-group name">
                               <%-- <input type="text" name="name" class="form-control" placeholder="Name">--%>
                                <asp:TextBox ID="txtname" runat="server"  class="form-control" placeholder="Name"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtname" ErrorMessage="Name is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group email">
                               <asp:TextBox ID="txtemail" runat="server"  class="form-control" placeholder="Email"></asp:TextBox>
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtmsg" ErrorMessage="Email is required.." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtemail" ErrorMessage="Enter Email in correct formate.." 
                                    ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group subject">
                                 <asp:TextBox ID="txtsubject" runat="server"  class="form-control" placeholder="Subject"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtsubject" ErrorMessage="Subject  is required.." 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group number">
                                <asp:TextBox ID="txtmob" runat="server"  class="form-control" placeholder="Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtmob" ErrorMessage="Mobile Number is required..." 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txtmob" ErrorMessage="Please enter only number.." 
                                    ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                    ControlToValidate="txtmob" ErrorMessage="Enter only 10 digits.." 
                                    ForeColor="Red" MaximumValue="10" MinimumValue="10"></asp:RangeValidator>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group message">
                               <asp:TextBox ID="txtmsg" runat="server"  class="form-control" 
                                    placeholder="Write Message" Height="90px"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtmsg" ErrorMessage="Message is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="send-btn text-center">
                               <%-- <button type="submit" class="btn btn-md button-theme">Send Message</button>--%>
                                <asp:Button ID="Button1" runat="server" Text="Send Message" 
                                    class="btn btn-md button-theme" onclick="Button1_Click" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5">
                    <div class="contact-info-2">
                        <div class="ci-box">
                            <div class="icon">
                                <i class="flaticon-phone"></i>
                            </div>
                            <div class="detail">
                                <h5>Phone:</h5>
                                <p><a href="#">7359698432</a></p>
                            </div>
                        </div>
                        <div class="ci-box">
                            <div class="icon">
                                <i class="flaticon-mail"></i>
                            </div>
                            <div class="detail">
                                <h5>Email:</h5>
                                <p><a href="#">mishranitish795@gmail.com</a></p>
                                 <p><a href="#">singhshivangini@gmail.com</a></p>
                            </div>
                        </div>
                        <div class="ci-box">
                            <div class="icon">
                                <i class="flaticon-earth"></i>
                            </div>
                            <div class="detail">
                                <h5>Web:</h5>
                                <p><a href="#">info@themevessel.com</a></p>
                            </div>
                        </div>
                        <div class="ci-box mb-0">
                            <div class="icon">
                                <i class="flaticon-fax"></i>
                            </div>
                            <div class="detail">
                                <h5>Fax:</h5>
                                <p><a href="#">+23238340954</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- Contact 2 end -->

<!-- Google map start -->
<div class="section">
    <div class="map">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3721.5723063682567!2d72.85999241488518!3d21.129610885943833!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be0504895ff6c6b%3A0xdc66744cd2c6c1cc!2sShashiroop%20Homes!5e0!3m2!1sen!2sin!4v1619638180211!5m2!1sen!2sin"
                                              width="100%" height="1000" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
    </div>
</div>
<!-- Google map end -->
<script src="../script/jquery-1.10.2.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $("#Button1").click(function () {
                var name = $("#txtname").val();
                var email = $("#txtemail").val();

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

                //                if (email != /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/) {
                //                    alert("Enter email in currect formate");
                //                    document.getElementById("txtEmail").focus();
                //                    return false;
                //                }
            });
        });
    </script>
</asp:Content>

