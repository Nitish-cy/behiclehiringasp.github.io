<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server">
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Blog Post</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">Blog Post</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Blog body start -->
<div class="blog-body content-area">
    <div class="container">
        <div class="row">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
             <div class="col-lg-4 col-md-6">
                <div class="blog-3">
                    <div class="blog-photo">
                        <img src='../profile/<%#Eval("image") %>' alt="blog-3" class="img-fluid">
                        <div class="date-box-2 db-2">27 Nov</div>
                        <div class="post-meta clearfix">
                            <span><a href="#"><i class="flaticon-user-1"></i></a>Admin</span>
                            <span><a href="#"><i class="flaticon-comment"></i></a>17K</span>
                            <span><a href="#"><i class="flaticon-calendar"></i></a>73k</span>
                        </div>
                    </div>
                    <div class="detail">
                        <h3>
                            <a href="blog-detail.aspx?bid=<%#Eval("blogid") %>"><%#Eval("blogname") %></a>
                        </h3>
                        <p> <%#Eval("description") %>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's</p>
                        <a href="blog-detail.aspx?bid=<%#Eval("blogid") %>" class="b-btn ">Rea more...!</a>
                    </div>
                </div>
            </div>
            </ItemTemplate>
            </asp:ListView>
           
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [buyerblog]"></asp:SqlDataSource>
           
            
        </div>
        <!-- Page navigation start -->
       
    </div>
</div>
    </form>
</asp:Content>

