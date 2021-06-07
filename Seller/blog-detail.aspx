<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="blog-detail.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <form id="form1" runat="server" Autocomplete="off">
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Blog Details</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">Blog Details</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Blog body start -->
<div class="blog-body content-area-4">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-md-12">
                <!-- Blog 1 start -->
                <div class="blog-1 blog-big mb-50">
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                    <div class="blog-photo">
                        <img src='../profile/<%#Eval("image") %>' alt="blog-img" class="img-fluid">
                    </div>
                    <div class="detail">
                        <h3>
                            <a href="blog-detail.aspx"><%#Eval("blogname") %></a>
                        </h3>
                        <p> <%#Eval("description") %> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five</p>
                     
                        <br>
                        <div class="row clearfix">
                            
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="blog-social-list">
                                    <span>Share</span>
                                    <a href="#" class="facebook-bg">
                                        <i class="fa fa-facebook"></i>
                                    </a>
                                    <a href="#" class="twitter-bg">
                                        <i class="fa fa-twitter"></i>
                                    </a>
                                    <a href="#" class="google-bg">
                                        <i class="fa fa-google"></i>
                                    </a>
                                    <a href="#" class="linkedin-bg">
                                        <i class="fa fa-linkedin"></i>
                                    </a>
                                    <a href="#" class="pinterest-bg">
                                        <i class="fa fa-pinterest"></i>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    </ItemTemplate>
                    </asp:ListView>
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [buyerblog] WHERE ([blogid] = @blogid)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="blogid" QueryStringField="bid" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                <!-- Heading 2 -->
                <h3 class="heading-2">Comments Section</h3>
                <!-- Comments start -->
               
                    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                     <ul class="comments">
                     <li>
                        <div class="comment">
                            <div class="comment-author">
                                <a href="#">
                                    <img src='../profile/<%#Eval("image") %>'>
                                </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                            <div class="comment-content">
                                <div class="comment-meta">
                                    <h6>
                                        <%#Eval("name") %>
                                        <span class="float-right"><%#Eval("date") %><a href="#">Reply</a></span>
                                    </h6>
                                </div>
                                <p><%#Eval("comment") %></p>
                            </div>
                        </div>
                        <ul>
                            <li>
                                <div class="comment">
                                    <div class="comment-author">
                                        <a href="#">
                                            <img src="img/avatar/avatar-2.jpg" alt="comments-user">
                                        </a>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
                                    <div class="comment-content">
                                        <div class="comment-meta">
                                            <h6>
                                                Admin
                                                <span class="float-right">11/28/2019<a href="#">Reply</a></span>
                                            </h6>
                                        </div>
                                        <P> Thanks For Visit</P>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                     </ul>

                    </ItemTemplate>
                    </asp:ListView>
                                        
                   
               
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [comment_mstr]"></asp:SqlDataSource>
                                        
                   
               
                <!-- Contact 2 start -->

                <div class="contact-2 ca mb-50">
                    <h3 class="heading-2">Comment Form   </h3>               <div class="row">
                            <div class="form-group name col-md-6">
                                <%--<input type="text" name="name" class="form-control" placeholder="Name">--%>
                                <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtname" ErrorMessage="Name is required..." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="form-group email col-md-6">
                                <%--<input type="email" name="email" class="form-control" placeholder="Email">--%>
                                 <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtemail" ErrorMessage="Email is required.." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtemail" ErrorMessage="Email is not in correct formate" 
                                    ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                            <div class="form-group number col-md-6">
                                <%--<input type="text" name="phone" class="form-control" placeholder="Number">--%>
                             

                                <asp:TextBox ID="txtdate" runat="server"  placeholder="Selected date(2-20-2020)" class="form-control" ></asp:TextBox>
                                   
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtdate" ErrorMessage="Date is required..." ForeColor="Red"></asp:RequiredFieldValidator>
                                   
                            </div>
                            <div class="form-group number col-md-6">
                                <asp:FileUpload ID="FileUpload1" runat="server" />
                            </div>
                            <div class="form-group message col-md-12">
                                <%--<textarea class="form-control" name="message" placeholder="Write message"></textarea>--%>
                                <asp:TextBox ID="txtmsg" runat="server" class="form-control" 
                                    placeholder="Write message" Height="167px" TextMode="MultiLine" Width="702px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtmsg" ErrorMessage="Comment is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="send-btn col-md-12">
                                <%--<button type="submit" class="btn btn-md button-theme">Send Message</button>--%>
                                <asp:Button ID="Button1" runat="server" Text="Comment " 
                                    class="btn btn-md button-theme" onclick="Button1_Click"/>
                            </div>
                        </div>
                </div>
            </div>
        
        </div>
    </div>
</div>
    </form>
</asp:Content>

