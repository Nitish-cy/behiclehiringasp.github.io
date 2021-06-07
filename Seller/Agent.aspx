<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="Agent.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Agent</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">Agent</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Our team start -->
<div class="our-team content-area">
    <div class="container">
        <div class="row">
    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
   <ItemTemplate>

            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                <div class="team-3">
                    <div class="photo">
                        <a href="#">
                            <img src='../profile/<%#Eval("Image") %>' alt="team-3" class="img-fluid">
                        </a>
                        &nbsp;&nbsp;&nbsp;<div class="social-list clearfix">
                            <a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="google-bg"><i class="fa fa-google"></i></a>
                        </div>
                    </div>
                    <div class="details">
                        <h4><a href="Agent-Detail.aspx?Aid=<%#Eval("Agentid") %>"><%#Eval("Name") %></a></h4>
                        <h5><%#Eval("Profession") %></h5>
                        <h6><%#Eval("Mobno") %></h6>
                    </div>
                </div>
            </div>
           
       
   </ItemTemplate>

    </asp:ListView>
            <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
            <ItemTemplate>

            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                <div class="row team-2">
                    <div class="col-xl-5 col-lg-6 col-md-12 col-sm-12 col-pad">
                        <div class="photo clip-home">
                            <img src='../profile/<%#Eval("Image") %>' alt="team-2" class="img-fluid">
                            <div class="social-list clearfix">
                                <a href="#" class="facebook-bg" tabindex="0"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="twitter-bg" tabindex="0"><i class="fa fa-twitter"></i></a>
                                <a href="#" class="google-bg" tabindex="0"><i class="fa fa-google"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-6 col-md-12 col-sm-12 col-pad bg align-self-center">
                        <div class="detail">
                            <h4>
                                <a  href="Agent-Detail.aspx?Aid=<%#Eval("Agentid") %>"><%#Eval("Name") %></a>
                            </h4>
                            <h5><%#Eval("Profession") %></h5>
                            <div class="contact">
                                <ul>
                                    <li>
                                        <i class="flaticon-pin"></i><a >44 New Design Street,</a>
                                    </li>
                                    <li>
                                        <i class="flaticon-mail"></i><a href="mishranitish795@gmail.com"><%#Eval("Email") %></a>
                                    </li>
                                    <li>
                                        <i class="flaticon-phone"></i><a href="tel:+554XX-634-7071"><%#Eval("MObno") %></a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </ItemTemplate>
            </asp:ListView>
            <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3">
            <ItemTemplate>
            <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                <div class="team-1">
                    <div class="photo">
                        <a href="#">
                            <img src='../profile/<%#Eval("Image") %>' alt="team-1" class="img-fluid">
                        </a>
                    &nbsp;</div>
                    <div class="details">
                        <h4><a href="Agent-Detail.aspx?Aid=<%#Eval("Agentid") %>"><%#Eval("Name") %> </a></h4>
                        <h5><%#Eval("Profession") %> </h5>
                        <h6><a href="tel:+55-417-634-7071"><%#Eval("Mobno") %> </a></h6>
                    </div>
                </div>
            </div>
            </ItemTemplate>
            </asp:ListView>



            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Agent_Mstr]"></asp:SqlDataSource>



            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Agent_Mstr]"></asp:SqlDataSource>



     </div>
    </div>
</div>



    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Agent_Mstr]"></asp:SqlDataSource>
    




<!-- Our team end -->
    </form>
</asp:Content>

