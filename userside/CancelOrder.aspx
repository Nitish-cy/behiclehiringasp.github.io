<%@ Page Title="" Language="C#" MasterPageFile="~/userside/MasterPage.master" AutoEventWireup="true" CodeFile="CancelOrder.aspx.cs" Inherits="userside_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>Cancel Order</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="#">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>Cancel Order</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
<section class="gauto-login-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="login-box">
                     <div class="login-page-heading">
                        <i class="fa fa-key"></i>
                        <h3>Cancel Order</h3>
                     </div>
                     <form id="Form1" runat ="server">
                        <div class="account-form-group">
                          <%-- <input type="text" placeholder="Username or Email" name="username">--%>
                          <asp:TextBox ID="txtemail" runat="server" placeholder="User Email"></asp:TextBox>
                           <i class="fa fa-user"></i>
                        </div>
                        <div class="account-form-group">
                          <%-- <input type="text" placeholder="Username or Email" name="username">--%>
                          <asp:TextBox ID="txtname" runat="server" placeholder="Username"></asp:TextBox>
                           <i class="fa fa-user"></i>
                        </div>
                       <div class="account-form-group">
                       <%--    <input type="password" placeholder="Password" name="password">--%>
                          <asp:TextBox ID="txtorder" runat="server" placeholder="Order Number" 
                                TextMode="Password"></asp:TextBox>
                           <i class="fa fa-lock"></i>
                        </div>
                        <p>
                           <%--<button type="submit" class="gauto-theme-btn">Login now</button>--%>
                           <asp:Button ID="Button1" runat="server" Text="Cancel Order" 
                                class="gauto-theme-btn" onclick="Button1_Click" 
                               ></asp:Button>
                        </p>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                     </form>
                     
                  </div>
               </div>
            </div>
         </div>
      </section>
</asp:Content>

