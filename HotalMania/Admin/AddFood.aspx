﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddFood.aspx.cs" Inherits="HotalMania.Admin.AddFood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
      <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Food Name</label>
                                                    <input type="text" runat="server" class="form-control" id="txt_Food_name"/>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Food Type</label>
                                                    <input type="text" runat="server"  class="form-control" id="txt_Food_Type"/>
                                                </div>
                                            </div>                                         
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="text-capitalize">Availability</label>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" runat="server"  checked="checked" id="checkbox_availability1"/>
                                                    </label>
                                                </div>
                                            </div>                                           
                                        
                                            <div class="col-md-4">
                                              <div class="form-group label-floating">
                                                    <label class="control-label">Per Person Charge</label>
                                                    <input type="number" runat="server" class="form-control" id="txt_PPC"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">                                            
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