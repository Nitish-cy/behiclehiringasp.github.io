<%@ Page Title="" Language="C#" MasterPageFile="~/Driver/MasterPage2.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Driver_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%--<script src="../script/jquery-1.10.2.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $("#Submit").click(function () {
                var name = $("#txtname").val();
                var email = $("#txtemail").val();
                var sub = $("#txtsubject").val();
                var mob = $("#txtmob").val();
                var msg = $("#txtmsg").val();
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
                if (mob== "") {
                    alert("Please Insert Mobile Number...");
                    return false;
                }
                if (msg == "") {
                    alert("Please Write Message.");
                    return false;
                }
                if (sub == "") {
                    alert("Please Insert Subject...");
                    return false;
                }
                if (mon.length < 10 && mob.length > 10) {
                    alert("Password should be at least 10 character ...");
                    document.getElementById("txtpass").focus();
                    return false;
                }
//                //                if (email != /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/) {
                //                    alert("Enter email in currect formate");
                //                    document.getElementById("txtEmail").focus();
                //                    return false;
                //                }
            });
        });
    </script>--%>
<form runat="server">
<div class="agent-page content-area-5">
    <div class="container">
        <!-- Heading -->
        <h1 class="heading-2">Driver Details</h1>
        <div class="row">
            <div class="col-lg-8">
                <div class="row team-2 mb-50">
                    <div class="col-xl-4 col-lg-5 col-md-5 col-sm-12 col-pad ">
                        <div class="photo">
                            <asp:Image ID="Image2" runat="server" alt="Not found"/>
                            <span>Welcome </span><%--<i class="fa fa-angle-down m-l-5"></i></a>--%>
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <div class="social-list clearfix">
                                <a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="google-bg"><i class="fa fa-google"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-7 col-md-7 col-sm-12 col-pad align-self-center bg">
                        <div class="detail">
                            <h4>
                                <h3><a href="#">Name:-<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></a></h3><br />
                             <span> Mobile Number:-  <asp:Label ID="Label3" runat="server" Text=""></asp:Label></span><br />
                             <span> Adhar Number:-   <asp:Label ID="Label4" runat="server" Text=""></asp:Label></span><br />
                               <span> Address:- <asp:Label ID="Label5" runat="server" Text=""></asp:Label></span><br />
                               <span> Country:- <asp:Label ID="Label6" runat="server" Text=""></asp:Label></span><br />
                            </h4>
                            <h5>Driver</h5>
                            <div class="contact">
                                <ul>
                                    
                                    <li>
                                        <i class="flaticon-mail"></i><a href="mailto:info@themevessel.com">Mishranitish@gmail.com</a>
                                    </li>
                                    <li>
                                        <i class="flaticon-phone"></i><a href="tel:+554XX-634-7071"> +55 4XX-634-7071</a>
                                    </li>
                                    <li>
                                        <i class="flaticon-fax"></i><a href="#"> +0477 85X6 552</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="agent-biography mb-50">
                    <h3 class="heading-2">Notice</h3>
                    <p>THis website is for selling new or old cars.If you Want to Book a car for picniv or tour then you Can book it .</p>
                    <p>And this pannel is only for driver . If you want to Do job a driver then you can Register here.</p>
                    <p> This meassage is written by admin.</p>
                    <p>Thank You.....</p>
                </div>
            </div>
            <!-- Contact 2 start -->
                    <div class="contact-2 ca mb-50">
                        <h3 class="heading-2">Contact Form   </h3>  
                         <div class="row">
                            <div class="form-group name col-md-6">
                                    <%--<input type="text" name="name" class="form-control" placeholder="Name">--%>
                                    <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtname" ErrorMessage="This Field id required..." 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group email col-md-6">
                                    <%--<input type="email" name="email" class="form-control" placeholder="Email">--%>
                                    <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtemail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" 
                                        ErrorMessage="Enter Email in correct formate..." ForeColor="Red" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group number col-md-6">
                                    <asp:TextBox ID="txtsubject" runat="server" class="form-control" placeholder="Subject"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtsubject" ErrorMessage="Subject is required..." 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group number col-md-6">
                                    <%--<input type="text" name="phone" class="form-control" placeholder="Number">--%>
                                    <asp:TextBox ID="txtmob" runat="server" class="form-control" placeholder="Number"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="txtmob" ErrorMessage="Mobile Number is rwquired" 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmob" 
                                        ErrorMessage="Enter Only Number" ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                        ControlToValidate="txtmob" ErrorMessage="Only 10 Digits......" ForeColor="Red" 
                                        MaximumValue="10" MinimumValue="10"></asp:RangeValidator>
                                </div>
                                
                                <div class="form-group message col-md-12">
                                   <asp:TextBox ID="txtmsg" runat="server" class="form-control" placeholder="Write Message"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="txtmsg" ErrorMessage="Mag is Required,,," ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="send-btn col-md-12">
                                   <%-- <button type="submit" class="btn btn-md button-theme">Send Message</button>--%>
                                    <asp:Button ID="Submit" runat="server" Text="Send Message"  
                                        class="btn btn-md button-theme" onclick="Submit_Click"/>
                                       
                                </div>
                            </div>
        </div>
        </form>
        <!-- Related car start -->
</asp:Content>

