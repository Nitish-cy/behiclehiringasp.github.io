<%@ Page Title="" Language="C#" MasterPageFile="~/Seller/MasterPage.master" AutoEventWireup="true" CodeFile="Sellyourcar.aspx.cs" Inherits="Seller_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

<div class="sub-banner">
    <div class="container breadcrumb-area">
        <div class="breadcrumb-areas">
            <h1>Sell Car</h1>
            <ul class="breadcrumbs">
                <li><a href="index.html">Home</a></li>
                <li class="active">Sell Car</li>
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
            <h1>Sell Us</h1>
            <p>If you want then you can sell your new or old car.</p>
        </div>
        <center>
                <form runat="Server">
            <div class="row">
            <center>
                <div class="col-lg-7">
                    <div class="row">
                        <div class="col-md-6 text-left">
                            <div class="form-group name">
                                <%--<input type="text" name="name" class="form-control" placeholder="Name">--%>
                                <asp:TextBox ID="txtname" runat="server" class="form-control" placeholder="Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtname" ErrorMessage="Name is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group email">
                              <asp:TextBox ID="txtemail" runat="server" class="form-control" placeholder="Email"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtemail" ErrorMessage="Email is required.." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtemail" ErrorMessage="Enter Email in correct formate.." 
                                    ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group subject">
                                <asp:TextBox ID="txtphone" runat="server" class="form-control" placeholder="Mobile Number"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtphone" ErrorMessage="Mobile Number is required..." 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txtphone" ErrorMessage="Please enter only number.." 
                                    ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                    ControlToValidate="txtphone" ErrorMessage="Enter only 10 digits.." 
                                    ForeColor="Red" MaximumValue="10" MinimumValue="10"></asp:RangeValidator>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group number">
                                <%--<asp:TextBox ID="txtcon" runat="server" class="form-control" placeholder="Country"></asp:TextBox>--%>
                                <asp:DropDownList ID="txtcon" runat="server" class="form-control" placeholder="Country">
                                    <asp:ListItem>India</asp:ListItem>
                                    <asp:ListItem>China</asp:ListItem>
                                    <asp:ListItem>Pakistan</asp:ListItem>
                                    <asp:ListItem>Afganistan</asp:ListItem>
                                    <asp:ListItem>US</asp:ListItem>
                                    <asp:ListItem>UK</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                               
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtcon" ErrorMessage="Name is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group message">
                                 <asp:TextBox ID="txtmod" runat="server" class="form-control" placeholder="Model/Brand Name"></asp:TextBox>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtmod" ErrorMessage="Model Name is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                        </div>
                          <div class="col-md-12">
                            <div class="form-group message">
                                 <asp:TextBox ID="txtmileage" runat="server" class="form-control" placeholder="Average"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtmileage" ErrorMessage="This Field is required is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                         <div class="col-md-12">
                            <div class="form-group message">
                                <asp:DropDownList ID="ddltype" class="form-control" runat="server">
                                    <asp:ListItem>New Car</asp:ListItem>
                                    <asp:ListItem>Old Car</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="ddltype" ErrorMessage="This field is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group message">
                                <asp:DropDownList ID="ddlfuel" class="form-control" runat="server">
                                    <asp:ListItem>Diesel</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>Petrol</asp:ListItem>
                                    <asp:ListItem>CNG</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="ddlfuel" ErrorMessage="Fuel Type is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group message">
                                <asp:DropDownList ID="ddlyear" class="form-control" runat="server" 
                                    >
                                    <asp:ListItem>2021</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>2020</asp:ListItem>
                                    <asp:ListItem>2019</asp:ListItem>
                                    <asp:ListItem>2018</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>2017</asp:ListItem>
                                    <asp:ListItem>2016</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>2015</asp:ListItem>
                                    <asp:ListItem>2014</asp:ListItem>
                                    <asp:ListItem>2013</asp:ListItem>
                                    <asp:ListItem>2012</asp:ListItem>
                                    <asp:ListItem></asp:ListItem>
                                    <asp:ListItem>2011</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                    ControlToValidate="ddlyear" ErrorMessage="This Field is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group message">
                              <asp:TextBox ID="txtadhar" runat="server" class="form-control" placeholder="Adhar Number"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                    ControlToValidate="txtadhar" ErrorMessage="Adhar Number is required..." 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                                    ControlToValidate="txtadhar" ErrorMessage="Please enter only number.." 
                                    ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                    ControlToValidate="txtadhar" ErrorMessage="Enter only 14 digits.." 
                                    ForeColor="Red" MaximumValue="14" MinimumValue="14"></asp:RangeValidator>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group message">
                              <asp:TextBox ID="txtadd" runat="server" class="form-control" 
                                    placeholder="Address" TextMode="MultiLine"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                    ControlToValidate="txtadd" ErrorMessage="Address is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        
                        
                       
                         <div class="col-md-12">
                            <div class="form-group message">
                                <asp:FileUpload ID="FileUpload1" runat="server"  class="form-control" />(Car Image)
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                    ControlToValidate="FileUpload1" ErrorMessage="Car Image is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group message">
                                <asp:FileUpload ID="FileUpload2" runat="server"  class="form-control" />(Car Document Image)
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                    ControlToValidate="FileUpload2" ErrorMessage="Document Image is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="send-btn text-center">
                               <%-- <button type="submit" class="btn btn-md button-theme">Submit</button>--%> 
                                <asp:Button ID="Button1" runat="server" Text="Submit" 
                                    class="btn btn-md button-theme" onclick="Button1_Click" /><a href="Contactus.aspx">ContactUs</a>
                            </div>
                            
                        </div>
                    </div>
                    </center>
                </div>
               
            </div>
        </form>
        </center>

    </div>
</div>
</asp:Content>

