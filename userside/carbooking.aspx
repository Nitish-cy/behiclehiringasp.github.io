<%@ Page Title="" Language="C#" MasterPageFile="~/userside/MasterPage.master" AutoEventWireup="true" CodeFile="carbooking.aspx.cs" Inherits="userside_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
<section class="gauto-breadcromb-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-md-12">
                  <div class="breadcromb-box">
                     <h3>Car Booking</h3>
                     <ul>
                        <li><i class="fa fa-home"></i></li>
                        <li><a href="index.html">Home</a></li>
                        <li><i class="fa fa-angle-right"></i></li>
                        <li>car Booking</li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- Breadcromb Area End -->
       
       
      <!-- Car Booking Area Start -->
    <section class="gauto-car-booking section_70">
         <div class="container">
          <div class="row">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
            
           
               <div class="col-lg-6">
                  <div class="car-booking-image">
                     <img src='../profile/<%#Eval("Carphoto") %>' alt="car" />
                  </div>
               </div>
               <div class="col-lg-6">
                  <div class="car-booking-right">
                     <p class="rental-tag">rental</p>
                    <h3><%#Eval("Modelname") %></h3>
                     <div class="price-rating">
                        <div class="price-rent">
                           <h4>$<%#Eval("price") %><span>/ Day</span></h4>
                        </div>
                        <div class="car-rating">
                           <ul>
                              <li><i class="fa fa-star"></i></li>
                              <li><i class="fa fa-star"></i></li>
                              <li><i class="fa fa-star"></i></li>
                              <li><i class="fa fa-star"></i></li>
                              <li><i class="fa fa-star-half-o"></i></li>
                           </ul>
                           <p>(123 rating)</p>
                        </div>
                     </div>
                     <p> This ia a amazing car . if you want then you can book it Aliquam gravida massa at sem vulputate interdum et vel eros. Maecenas eros enim, tincidunt vel turpis vel,dapibus tempus nulla. Donec vel nulla dui.</p>
                     <div class="car-features clearfix">
                         <ul>
                           <li><i class="fa fa-car"></i> Model:<%#Eval("Year") %></li>
                           <li><i class="fa fa-cogs"></i> <%#Eval("Transmission") %></li>
                           <li><i class="fa fa-dashboard"></i> <%#Eval("Average") %>kmpl</li>
                           <li><i class="fa fa-empire"></i> <%#Eval("Noofgears") %></li>
                        </ul>
                        <ul>
                           <li><i class="fa fa-eye"></i> <%#Eval("Fueltype") %></li>
                           <li><i class="fa fa-lock"></i> Anti-Lock Brakes</li>
                           <li><i class="fa fa-key"></i> Remote Keyless</li>
                           <li><i class="fa fa-desktop"></i> Rear-Seat DVD</li>
                        </ul>
                     
                     </div>
                    
                  </div>
               </div>
               
      </section>
           
            </ItemTemplate>
            </asp:ListView>
             
                    
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [moderl_mstr] WHERE ([Modelid] = @Modelid)">
                      <SelectParameters>
                          <asp:QueryStringParameter Name="Modelid" QueryStringField="modid" 
                              Type="Int32" />
                      </SelectParameters>
                </asp:SqlDataSource>
             
                </div>
               </div>
          
                 
      <!-- Car Booking Area End -->
       
       
         <section class="gauto-booking-form section_70">
         <div class="container">
            <div class="row">
               <div class="col-lg-8">
                  <div class="booking-form-left">
                     <div class="single-booking">
                        <h3>Personal Information</h3>
                      
                           <div class="row">
                              <div class="col-md-6">
                                 <p>
                                    
                                 <asp:TextBox ID="txtfname" runat="server" placeholder="Your Full Name"  class="form-control"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="txtfname" ErrorMessage="First Name is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                                 </p>
                              </div>
                             
                              <div class="col-md-6">
                                 <p>
 
                                   <asp:TextBox ID="txtlname" runat="server"  placeholder="Your Last Name"  class="form-control"></asp:TextBox>
                                   <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="txtlname" ErrorMessage="Last Name is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                                 </p>
                              </div>
                           </div>
                           <br />
                           <br />

                           <div class="row">
                              <div class="col-md-6">
                                 <p>
                                   
                                    <asp:TextBox ID="txtemail" runat="server" placeholder="Your Email Address"  class="form-control"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtemail" ErrorMessage="Email is required.." ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="txtemail" ErrorMessage="Enter Email in correct formate.." 
                                    ForeColor="Red" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                 </p>
                              </div>
                              <div class="col-md-6">
                                 <p>
                                     
                                    <asp:TextBox ID="txtmob" runat="server"  placeholder="Your Phone Number"  class="form-control"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="txtmob" ErrorMessage="Mobile Number is required..." 
                                    ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                                    ControlToValidate="txtmob" ErrorMessage="Please enter only number.." 
                                    ForeColor="Red" ValidationExpression="\d+"></asp:RegularExpressionValidator>
                              
                                 </p>
                              </div>
                           </div>
                    
                     </div>
                     <div class="single-booking">
                        <h3>Booking Detail</h3>
                      
                           <div class="row">
                              <div class="col-md-6">
                                 <p>
                                     
                                    <asp:TextBox ID="txtfadd" runat="server"  placeholder="From Address"  class="form-control"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                    ControlToValidate="txtfadd" ErrorMessage="From address is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                                 </p>
                              </div>
                             
                              <div class="col-md-6">
                                 <p>
                                     
                                    <asp:TextBox ID="txttoadd" runat="server"  placeholder="To Address"  class="form-control"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                    ControlToValidate="txttoadd" ErrorMessage="To address is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                                 </p>
                              </div>
                              
                           </div>
                           <br />
                           <div class="row">
                              <div class="col-md-6">
                                 <p>
                                    
                                    <asp:DropDownList ID="ddlperson" runat="server"  class="form-control">
                                        <asp:ListItem>1 Person</asp:ListItem>
                                        <asp:ListItem>2 Person</asp:ListItem>
                                        <asp:ListItem>3 Person</asp:ListItem>
                                        <asp:ListItem>4 Person</asp:ListItem>
                                     </asp:DropDownList>
                                 </p>
                              </div>
                              <div class="col-md-6">
                                 <p> 
                                     <asp:DropDownList ID="ddllug" runat="server"  class="form-control">
                                         <asp:ListItem>1 Luggage</asp:ListItem>
                                         <asp:ListItem>2 Luggage</asp:ListItem>
                                         <asp:ListItem>3 Luggage</asp:ListItem>
                                         <asp:ListItem>4 Luggage</asp:ListItem>
                                     </asp:DropDownList>
                                 </p>
                              </div>
                           </div>
                           <br />
                           <div class="row">

                              <div class="col-md-6">
                                 <p  >
                                    
                                     <asp:TextBox ID="txtdate" runat="server" 
                                         placeholder="Journey Date" class="form-control"></asp:TextBox>
                                          
                                 </p>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                    ControlToValidate="txtdate" ErrorMessage="Date is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                              </div>
                              <div class="col-md-6">
                                <p class="input-group clockpicker" data-placement="bottom" data-align="top" data-autoclose="true">
                                   
                                   <asp:TextBox ID="txttime" runat="server" class="form-control" placeholder="Journey Time"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txttime" ErrorMessage="Time is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                                 </p> 
                              </div>
                           </div>
                           <br />
                           <div class="row">
                              <div class="col-md-12">
                                 <p>
                                     
                                    <asp:TextBox  ID="txtmsg" runat="server" class="form-control" placeholder="Write here" ></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="txtmsg" ErrorMessage="Message is required.." ForeColor="Red"></asp:RequiredFieldValidator>
                                 </p>
                              </div>
                           </div>
                        
                     </div>
                  </div>
               </div>
               <div class="col-lg-4">
                  <div class="booking-right">
                     <h3>payment Method</h3>
                     <div class="gauto-payment clearfix">
                        <div class="payment">
                           
                          <asp:RadioButton ID="rbdirectbank" runat="server" Text="Direct Bank Transfer" GroupName="Payment"></asp:RadioButton>
                           <label for="ss-option">Direct Bank Transfer</label>
                           <div class="check">
                              <div class="inside"></div>
                           </div>
                           <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference.order won’t be shipped until the funds have cleared.</p>
                        </div>
                        <div class="payment">
                           <asp:RadioButton ID="rbcheque" runat="server" Text="Cheque Payment" GroupName="Payment"></asp:RadioButton>
                           <label for="f-option">Cheque Payment</label>
                           <div class="check">
                              <div class="inside"></div>
                           </div>
                        </div>
                        <div class="payment">
                           <asp:RadioButton ID="rbcredit" runat="server" Text="Credit Card" GroupName="Payment"></asp:RadioButton>
                           <label for="s-option">Credit Card</label>
                           <div class="check">
                              <div class="inside"></div>
                           </div>
                           <img src="assets/img/master-card.jpg" alt="credit card">
                        </div>
                        <div class="payment">
                           <asp:RadioButton ID="rbpaypal" runat="server" Text="Paypal" GroupName="Payment"></asp:RadioButton>
                           <label for="t-option">Paypal</label>
                           <div class="check">
                              <div class="inside"></div>
                           </div>
                           <img src="assets/img/paypal.jpg" alt="credit card">
                        </div>
                     </div>
                     <div class="action-btn">
                         
                        <asp:Button ID="Button1" runat="server" Text="Reserve Now"  class="gauto-btn" 
                             onclick="Button1_Click"></asp:Button>
                         
                     </div>
                    
                  </div>
               </div>
            </div>
         </div>
      </section>
    </form>
</asp:Content>

