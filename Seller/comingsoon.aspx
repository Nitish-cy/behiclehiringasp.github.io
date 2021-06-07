<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="comingsoon.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<body>
<div class="page_loader"></div>

<!-- Coming soon start -->
<div class="coming-soon">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="coming-soon-banner">
                    <div class="coming-soon-info">
                        <a href="index.html"><img src="img/logos/logo.png" alt="logo"></a>
                        <h1>Coming Soon</h1>
                        <div class="countdown styled coming-soon-counter"></div>
                        <div class="clearfix"></div>
                        <h6>Notify Me When It's Ready</h6>
                        <div class="coming-form clearfix mb-30">
                            <form class="form-inline" action="#" method="GET" runat="server"  Autocomplete="off">
                               <%-- <input type="text" class="form-control" id="inlineFormInputName2" placeholder="Email Address">
                                <button type="submit" class="btn btn-color button-theme">Subscribe</button>--%>
                            <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email Address"> </asp:TextBox>
                            <asp:Button ID="Button1" runat="server" Text="Submit" 
                                   class="btn btn-color button-theme" onclick="Button1_Click"/>
                            </form>
                        </div>
                    </div>
                    <div class="social-boxs">
                        <ul class="social-list clearfix">
                            <li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" class="google"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="#" class="rss"><i class="fa fa-rss"></i></a></li>
                            <li><a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>

