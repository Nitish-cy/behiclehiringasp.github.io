<%@ Page Title="" Language="C#" MasterPageFile="~/userside/MasterPage.master" AutoEventWireup="true" CodeFile="adrive.aspx.cs" Inherits="userside_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="gauto-contact-area section_70">
         <div class="container">
            <div class="row">
               <div class="col-lg-7">
                  <div class="contact-left">
                     <h3>Make a Drive</h3>
                     <form runat=server>
                        <div class="row">
                           <div class="col-md-6">
                              <div class="single-contact-field">
                                 <%--<input type="text" placeholder="Your Name">--%>
                                 <asp:TextBox ID="txtname" runat="server"  placeholder="Your Name" ></asp:TextBox>
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="single-contact-field">
                                 <%--<input type="email" placeholder="Email Address">--%>
                                 <asp:TextBox ID="txtemail" runat="server"  placeholder="Your Email" ></asp:TextBox>
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-6">
                              <div class="single-contact-field">
                                 <%--<input type="text" placeholder="Subject">--%>
                                 <asp:TextBox ID="txttime" runat="server"  placeholder="Time in hour ......." ></asp:TextBox>
                              </div>
                           </div>
                           <div class="col-md-6">
                              <div class="single-contact-field">
                                <%-- <input type="tel" placeholder="Phone Number">--%>
                                <asp:TextBox ID="txtmobno" runat="server"  placeholder="Your Mobile No" ></asp:TextBox>
                              </div>
                           </div>
                        </div>
                        <div class="row">
                              <div class="col-md-6">
                                 <p>
                                    <%--<input id="reservation_date" name="reservation_date" placeholder="Journey Date" data-select="datepicker" type="text">--%>
                                    <asp:TextBox ID="txtdate" runat="server" placeholder="Journey Date"  data-select="datepicker"></asp:TextBox>
                                 </p>
                              </div>
                              <div class="col-md-6">
                                 <p class="input-group clockpicker" data-placement="bottom" data-align="top" data-autoclose="true">
                                    <%--<input type="text" class="form-control" placeholder="Journey Time" />--%>
                                    <asp:TextBox ID="txtclock" runat="server" class="form-control" placeholder="Journey Time" ></asp:TextBox>
                                 </p>
                              </div>
                           </div>
                             <div class="row">
                        <div class="col-md-6">
                              <div class="single-contact-field" class="col-sm-3 control-label no-padding-right">
                                <%-- <input type="tel" placeholder="Phone Number">--%>
                               <asp:DropDownList ID="ddlcarbrand" runat="server" AutoPostBack="True" 
                                      DataSourceID="SqlDataSource1" DataTextField="brandname" 
                                      DataValueField="brandid"></asp:DropDownList>
                                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                      SelectCommand="SELECT * FROM [brand_mstr]"></asp:SqlDataSource>
                              </div>
                           </div>
                      
                                                  <div class="col-md-6">
                              <div class="single-contact-field">
                                <%-- <input type="tel" placeholder="Phone Number">--%>
                               
                               <asp:DropDownList ID="ddlcarmodel" runat="server" AutoPostBack="True" 
                                      DataSourceID="SqlDataSource2" DataTextField="Modelname" 
                                      DataValueField="Modelid"></asp:DropDownList>
                                  <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                      SelectCommand="SELECT * FROM [moderl_mstr] WHERE ([Brandid] = @Brandid)">
                                      <SelectParameters>
                                          <asp:ControlParameter ControlID="ddlcarbrand" Name="Brandid" 
                                              PropertyName="SelectedValue" Type="Int32" />
                                      </SelectParameters>
                                  </asp:SqlDataSource>
                              </div>
                           </div>
                        </div>
                        <br />
                       
                          <div class="row">
                        <div class="col-md-6">
                              <div class="single-contact-field">
                                <%-- <input type="tel" placeholder="Phone Number">--%>
                               <asp:DropDownList ID="ddlprice" runat="server" AutoPostBack="True" 
                                      DataSourceID="SqlDataSource3" DataTextField="price" DataValueField="price"></asp:DropDownList>
                                  <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                      ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                      SelectCommand="SELECT * FROM [drive_price_mstr] WHERE (([model] = @model) AND ([brand] = @brand))">
                                      <SelectParameters>
                                          <asp:ControlParameter ControlID="ddlcarmodel" Name="model" 
                                              PropertyName="SelectedValue" Type="String" />
                                          <asp:ControlParameter ControlID="ddlcarbrand" Name="brand" 
                                              PropertyName="SelectedValue" Type="String" />
                                      </SelectParameters>
                                  </asp:SqlDataSource>
                              </div>
                           </div>
                
                           <div class="col-md-12">
                              <div class="single-contact-field">
                                <%-- <textarea placeholder="Write here your message"></textarea>--%>
                                <asp:TextBox ID="txtmsg" runat="server"  placeholder="Write here your message" 
                                      TextMode="MultiLine"></asp:TextBox>
                              </div>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-md-12">
                              <div class="single-contact-field">
                                <%-- <button type="submit" class="gauto-theme-btn"><i class="fa fa-paper-plane"></i> Send Message</button>--%>
                                <asp:Button ID="btnsend" runat="server" Text="Send Message" 
                                      onclick="btnsend_Click"></asp:Button>
                              </div>
                           </div>
                        </div>
                     </form>
                  </div>
               </div>

               <div class="col-lg-5">
                  <div class="contact-right">
                     <h3>Contact information</h3>
                     <div class="contact-details">
                        <p><i class="fa fa-map-marker"></i> B-204 shashiroop homes bheasta surat</p>
                        <div class="single-contact-btn">
                           <h4>Email Us</h4>
                           <a href="#">mishranitish@gmail.com</a>
                        </div>
                        <div class="single-contact-btn">
                           <h4>Call Us</h4>
                           <a href="#">+(09)9773006479</a>
                        </div>
                        <div class="social-links-contact">
                           <h4>Follow Us:</h4>
                           <ul>
                              <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                              <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                              <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                              <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                              <li><a href="#"><i class="fa fa-skype"></i></a></li>
                              <li><a href="#"><i class="fa fa-vimeo"></i></a></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
               </div>
               </div>
   
               
             
      </section>
</asp:Content>

