<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="sellcont.aspx.cs" Inherits="Admin_Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<form id="Form1" class="form-horizontal" role="form" runat="server">
  <div class="page-header">
							<h1>
								SellCon Page
								<small>
									<i class="ace-icon fa fa-angle-double-right"></i>
									
								</small>
							</h1>
						</div>
								

									
                                    	<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Name</label>

										<div class="col-sm-9" >
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                            <asp:TextBox ID="txtname" runat="server" placeholder="name" class="form-control"></asp:TextBox>
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Description</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           
                                            <asp:FileUpload ID="FileUpload1" runat="server"  class="form-control"/>
										   
										</div>
									</div>
                                    <div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1-1">Description</label>

										<div class="col-sm-9">
											<%--<input type="text" id="form-field-1-1" placeholder="Brand_Name" class="form-control" />--%>
                                           
                                             <asp:TextBox ID="txtdesc" runat="server" placeholder="Description" class="form-control"></asp:TextBox>
										   
										</div>
									</div>
                                    
                                  
                                    <div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<%--<button class="btn btn-info" type="button">
												<i class="ace-icon fa fa-check bigger-110"></i>
												Submit
											</button>
--%>
                                            <asp:Button ID="btnsub" runat="server" Text="Submit"  class="btn btn-info" onclick="btnsub_Click"  
                                                 />
											&nbsp; &nbsp; &nbsp;
											<%--<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>--%>
                                            
                                            <asp:Button ID="Button1" runat="server" Text="Reset"  class="btn btn-info" onclick="Button1_Click" 
                                                 />
										</div>
									</div>
                                    <%-- <div class="table-responsive">  CssClass="table table-striped table-borderedtable-hover"--%>
                                    
                                  </form>
</asp:Content>

