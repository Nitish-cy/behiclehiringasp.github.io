<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="Commentreply.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 <form id="Form1" runat="server">
<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Comment Reply</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">Comment Reply</li>
            </ul>
        </div>
    </div>
</div>
<!-- Sub Banner end -->

<!-- Shop checkout start -->

                  
<div class="shop-checkout content-area-5">
    <div class="container">
        <div class="from-checkout">
            <div class="row">
                <div class="col-lg-6 col-md-12">
                    <div class="heading-4">
                        <h4>Comment Reply</h4>
                    </div>
                        
                        <div class="form-group">
                            <%--<input type="text" class="form-control" placeholder="Company Name">--%>
                            <asp:TextBox ID="txtname" runat="server"  class="form-control" placeholder="Name"></asp:TextBox>
                        </div>
                    
                        <div class="form-group">
                            <asp:TextBox ID="txtdate" runat="server"  class="form-control" placeholder="Date"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:TextBox ID="txtcomment" runat="server"  class="form-control" placeholder="Comment"></asp:TextBox>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <asp:FileUpload ID="FileUpload1" runat="server"  class="form-control" />
                                </div>
                            </div>
                           
                        </div>
                    
                    <br>
                </div>
               
            </div>
            <div class="row">
               
                <div class="col-lg-6 col-md-12">
                    <div class="cart-total-box">
                        
                       
                        <%--<button class="btn  btn-block btn-md button-theme" type="submit">Proceed To Checkout</button>--%>
                        <asp:Button ID="Button1" runat="server" Text="Reply" 
                            class="btn  btn-block btn-md button-theme" onclick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</form>
</asp:Content>

