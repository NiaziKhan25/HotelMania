<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddHotel.aspx.cs" Inherits="HotalMania.Admin.AddHotel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content  ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">       
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Hotel Name</label>
                                                    <input type="text" runat="server" class="form-control" id="txt_hotel_name"/>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Guest Capacity</label>
                                                    <input type="number" runat="server"  class="form-control" id="txt_guest_capacity"/>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Parking Capacity</label>
                                                    <input type="number" runat="server" class="form-control" id="txt_parking_capacity"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="text-capitalize">Availability</label>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" runat="server" name="optionsCheckboxes" checked="checked" id="checkbox_availability1"/>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Location</label>
                                                    <input type="text" runat="server" class="form-control" id="txt_Location"/>
                                                </div>
                                            </div>
                                        
                                            <div class="col-md-4">
                                              <div class="form-group label-floating">
                                                    <label class="control-label">Per Hour PPC</label>
                                                    <input type="number" runat="server" class="form-control" id="txt_PPC"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4 form-group">
                                                <div class="dropdown">
                                                <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Select Rating  
                                                <span class="caret"></span></button>
                                                <ul class="dropdown-menu">
                                                  <li><a href="#">1 star</a></li>
                                                  <li><a href="#">2 star</a></li>
                                                  <li><a href="#">3 star</a></li>
                                                  <li><a href="#">4 star</a></li>
                                                  <li><a href="#">5 star</a></li>
                                                  
                                                </ul>
                                              </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <input type="file" name="img[]" class="file"/>
                                                    <div class="input-group col-xs-12">
                                                      <span class="input-group-addon"><i class="material-icons">add_a_photo</i></span>
                                                      <input type="text" class="form-control input-lg"  placeholder="Upload Image"/>
                                                      <span class="input-group-btn">
                                                        <button class="browse btn btn-primary input-lg" type="button"><i class="material-icons">search</i> Browse</button>
                                                      </span>
                                                    </div>
                                                  </div>
                                            </div>
                                        </div>                 
                                      <asp:Button ID="btnSubmit" runat="server" class="btn btn-primary pull-right" Text="Add Now" ValidationGroup="Purchase"
                                        OnClick="btnSubmit_Click" />
                                     <div class="clearfix"></div>                             
</asp:Content>
