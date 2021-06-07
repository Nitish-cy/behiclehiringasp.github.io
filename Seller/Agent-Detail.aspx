<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="Agent-Detail.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

    <form  runat="server" >
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Agent Detail</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">Agent Detail</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Agent page start -->
<div class="agent-page content-area-5">
    <div class="container">
        <!-- Heading -->
        <h1 class="heading-2">Agent Details</h1>
        <div class="row">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
            <div class="col-lg-8">
                <div class="row team-2 mb-50">
                    <div class="col-xl-4 col-lg-5 col-md-5 col-sm-12 col-pad ">
                        <div class="photo">
                            <img src='../profile/<%#Eval("Image") %>' alt="avatar-9" class="img-fluid">
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
                                <a href="#"><%#Eval("Name") %></a>
                            </h4>
                            <h5><%#Eval("Profession") %></h5>
                            <div class="contact">
                                <ul>
                                    <li>
                                        <i class="flaticon-pin"></i><a>44 New Design Street,</a>
                                    </li>
                                    <li>
                                        <i class="flaticon-mail"></i><a href="mishranitish795@gmail.com"><%#Eval("Email") %></a>
                                    </li>
                                    <li>
                                        <i class="flaticon-phone"></i><a href="tel:+554XX-634-7071"> <%#Eval("Mobno") %></a>
                                    </li>
                                    
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="agent-biography mb-50">
                    <h3 class="heading-2">Biography</h3>
                    <p><%#Eval("Biography") %></p>
                    <p>Ut euismod ultricies sollicitudin. Curabitur sed dapibus nulla. Nulla eget iaculis lectus. Mauris ac maximus neque. Nam in mauris quis libero sodales eleifend. Morbi varius, nulla sit amet rutrum elementum</p>
                    <p>Vestibulum vel mauris et odio lobortis laoreet eget eu magna. Proin mauris erat, luctus at nulla ut, lobortis mattis magna. Morbi a arcu lacus. Maecenas tristique velit vitae nisi consectetur, in mattis diam sodales. Mauris sagittis sem mattis justo bibendum, a eleifend dolor facilisis. Mauris nec pharetra tortor, ac aliquam felis. Nunc pretium erat sed quam consectetur fringilla. Aliquam ultricies nunc porta metus interdum mollis. Donec porttitor libero augue, vehicula tincidunt lectus placerat a. Sed tincidunt dolor non sem dictum dignissim. Nulla vulputate orci felis, ac ornare purus ultricies a. Fusce euismod magna orci, sit amet aliquam turpis dignissim ac. </p>
                </div>
            </div>
            </ItemTemplate>
            </asp:ListView>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [Agent_Mstr] WHERE ([Agentid] = @Agentid)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="Agentid" QueryStringField="Aid" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            
            <div class="col-lg-4">
                <div class="sidebar-right">
                    <!-- Contact 2 start -->
                    <div class="contact-2 widget widget-3">
                        <h3 class="sidebar-title">Contact Agent</h3>
                        <div class="s-border"></div>
                        <div class="m-border"></div>
                            <div class="rowo">
                                <div class="form-group name">
                                    <%--<input type="text" name="name" class="form-control" placeholder="Name">--%>
                                    <asp:TextBox ID="txtname" runat="server"  class="form-control" 
                                        placeholder="Name" Autocomplete="off" AutoCompleteType="Disabled"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtname" ErrorMessage="Name is required......." 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;
                                </div>
                                <div class="form-group email">
                                  <%--  <input type="email" name="email" class="form-control" placeholder="Email">--%>
                                    <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email" Autocomplete="off"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                        ControlToValidate="txtemail" ErrorMessage="Email is not in currect formate" 
                                        ForeColor="Red" 
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group number">
                                   <%-- <input type="text" name="phone" class="form-control" placeholder="Phone">--%>
                                    <asp:TextBox ID="txtsubject" runat="server"  class="form-control" placeholder="Subject" Autocomplete="off"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="Subject number is required.." ControlToValidate="txtsubject" 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
                                &nbsp;</div>
                                
                                <div class="form-group message">
                                   <%-- <textarea class="form-control" name="message" placeholder="Write message"></textarea>--%>
                                    <asp:TextBox ID="txtmob" runat="server" class="form-control"   placeholder="Mobile Number" Autocomplete="off"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtmob" ErrorMessage="Mobile number is required.." 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                        ControlToValidate="txtmob" ErrorMessage="Only number is allowe." 
                                        ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                </div>
                                <div class="form-group message">
                                   <%-- <textarea class="form-control" name="message" placeholder="Write message"></textarea>--%>
                                    <asp:TextBox ID="txtmsg" runat="server" class="form-control"   placeholder="Write message" Autocomplete="off"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="txtmsg" ErrorMessage="This field is required.." 
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="send-btn">
                                   <%-- <button type="submit" class="btn btn-md button-theme btn-block">Send Message</button>--%>
                                    <asp:Button ID="Button1" runat="server" Text="Send Message" 
                                        class="btn btn-md button-theme btn-block" onclick="Button1_Click" />
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Related car start -->
     
    </div>
</div>
    </form>
</asp:Content>

