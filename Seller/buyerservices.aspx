<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="buyerservices.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Services</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">Services</li>
            </ul>
        </div>
    </div>
</div>
<div class="services-2 content-area">
    <div class="container">
        <!-- Main title -->
        <div class="main-title text-center">
            <h1>Our Services</h1>
            <p>These services for customer</p>
        </div>
        <div class="row">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
              <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="service-info-2">
                    <div class="icon">
                        <i class="<%#Eval("iconclass") %>"></i>
                    </div>
                    <div class="detail">
                        <h5><%#Eval("Name") %></h5>
                        <p><%#Eval("Description") %></p>
                        <a href="servicedetail.aspx?did=<%#Eval("DescriptionId") %>" class="read-more" >Read more...</a>
                    </div>
                </div>
            </div>
            </ItemTemplate>
            </asp:ListView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [buyerservice]"></asp:SqlDataSource>

        </div>
    </div>
</div>
<!-- services-2 end -->

<!-- Counters strat -->
<div class="counters">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="counter-box">
                    <i class="flaticon-car"></i>
                    <h1 class="counter">967</h1>
                    <h5>Total Cars</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="counter-box">
                    <i class="flaticon-blog"></i>
                    <h1 class="counter">1276</h1>
                    <h5>Dealer Reviews</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="counter-box">
                    <i class="flaticon-user"></i>
                    <h1 class="counter">396</h1>
                    <h5>Happy Clients</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="counter-box">
                    <i class="flaticon-medal"></i>
                    <h1 class="counter">177</h1>
                    <h5>Awards</h5>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Counters end -->

<!-- Service center strat -->
<div class="service-center content-area-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="inside-car service-car">
                    <iframe src="https://www.youtube.com/embed/5e0LxrLSzok" allowfullscreen=""></iframe>
                </div>
            </div>
            <div class="col-lg-6 align-self-center">
                <div class="best-used-car">
                    <h3>Welcome to service center</h3>
                    
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Service center end -->

<!-- Pricing tables start -->
<div class="pricing-tables content-area-3">
    <div class="container">
        <!-- Main title -->
        <div class="main-title text-center">
            <h1>Pricing Tables</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</p>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-12">
                <div class="pricing-1">
                    <div class="title">Basic Plan</div>
                    <div class="price-for-user">
                        <div class="price"><sup>$</sup><span class="dolar">54</span><small class="month">Per month</small></div>
                    </div>
                    <div class="content">
                        <ul>
                            <li>20 Projects</li>
                            <li>32GB Storage</li>
                            <li>50 Email Accounts</li>
                            <li>12GB Bandwidth</li>
                            <li>32GB Storage</li>
                        </ul>
                    </div>
                    <div class="button"><a href="#" class="btn btn-outline pricing-btn">Get started</a></div>
                </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-12">
                <div class="pricing-1 popular">
                    <div class="title">Professional</div>
                    <div class="price-for-user">
                        <div class="price"><sup>$</sup><span class="dolar">35</span><small class="month">Per month</small></div>
                    </div>
                    <div class="content">
                        <ul>
                            <li>20 Projects</li>
                            <li>32GB Storage</li>
                            <li>50 Email Accounts</li>
                            <li>12GB Bandwidth</li>
                            <li>32GB Storage</li>
                        </ul>
                    </div>
                    <div class="button"><a href="#" class="btn button-theme pricing-btn">Get started</a></div>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="pricing-1">
                    <div class="title">Exclusive</div>
                    <div class="price-for-user">
                        <div class="price"><sup>$</sup><span class="dolar">38</span><small class="month">Per month</small></div>
                    </div>
                    <div class="content">
                        <ul>
                            <li>20 Projects</li>
                            <li>32GB Storage</li>
                            <li>50 Email Accounts</li>
                            <li>12GB Bandwidth</li>
                            <li>32GB Storage</li>
                        </ul>
                    </div>
                    <div class="button"><a href="#" class="btn btn-outline pricing-btn">Get started</a></div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Pricing tables end -->

<!-- Contact 2 start -->
<div class="contact-2 content-area-2">
    <div class="container">
        <!-- Main title -->
        <div class="main-title text-center">
            <h1>Service Schedule</h1>
            
        </div>
         <form id="form1" runat="server">
            <div class="row">
             
                <div class="col-lg-7">
                    <div class="row">
                     
                        <div class="col-md-6">
                            <div class="form-group email">
                               <%-- <input type="email" name="email" class="form-control" placeholder="Email">--%>
                                <asp:TextBox ID="txtname" runat="server"  class="form-control" placeholder="Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtname" ErrorMessage="Name is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group subject">
                                <%--<input type="text" name="subject" class="form-control" placeholder="Subject">--%>
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
                            <div class="form-group number">
                               <%-- <input type="text" name="phone" class="form-control" placeholder="Number">--%>
                                <asp:TextBox ID="txtsubject" runat="server"  class="form-control" placeholder="Subject(is Service)"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtsubject" ErrorMessage="Subject  is required.." 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                         <div class="col-md-6 text-left">
                            <div class="form-group name">
                               <%-- <input type="text" name="name" class="form-control" placeholder="Name">--%>
                                <asp:TextBox ID="txtmob" runat="server"  class="form-control" placeholder="Mobile Number"></asp:TextBox>
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
                              <%--  <textarea class="form-control" name="message" placeholder="Write message"></textarea>--%>
                               <asp:TextBox ID="txtmsg" runat="server"  class="form-control" 
                                    placeholder="Write Message Here" TextMode="MultiLine"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtmsg" ErrorMessage="Message is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="send-btn text-center">
                               <%-- <button type="submit" class="btn btn-md button-theme">Send Message</button>--%>
                                <asp:Button ID="Button1" runat="server" Text="Submit" 
                                    class="btn btn-md button-theme" onclick="Button1_Click1"/>
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
                                <p><a href="#">7359698432/a></p>
                            </div>
                        </div>
                        <div class="ci-box">
                            <div class="icon">
                                <i class="flaticon-mail"></i>
                            </div>
                            <div class="detail">
                                <h5>Email:</h5>
                                <p><a href="#">mishranitish795@gmail.com</a></p>
                            </div>
                        </div>
                        <div class="ci-box">
                            <div class="icon">
                                <i class="flaticon-earth"></i>
                            </div>
                            <div class="detail">
                                <h5>Web:</h5>
                                <p><a href="#">mishranitish795@gmail.com</a></p>
                            </div>
                        </div>
                        <div class="ci-box mb-0">
                            <div class="icon">
                                <i class="flaticon-fax"></i>
                            </div>
                            <div class="detail">
                                <h5>Fax:</h5>
                                <p><a href="#">9773006479</a></p>
                            </div>
                        </div>
                          
                    </div>
                </div>
            </div>
             </form>
    </div>
</div>
<!-- Contact 2 end -->



    


</asp:Content>

