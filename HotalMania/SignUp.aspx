<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="HotalMania.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="tab-pane fade" id="panel8" role="tabpanel">
          <div class="row col-sm-12">
              <!--Body-->
              <div class="modal-body">
                  <div class="row">
                      <div class="md-form form-sm col-sm-6">
                          <i class="fa fa-user prefix"></i>
                          <input type="text" id="form28" class="form-control validate">
                          <label data-error="wrong" data-success="right" for="form28">Username</label>
                      </div>

                      <div class="md-form form-sm col-sm-6">
                          <i class="fa fa-envelope prefix"></i>
                          <input type="email" id="form24" class="form-control validate">
                          <label data-error="wrong" data-success="right" for="form24">Your email</label>
                      </div>
                  </div>

                  <div class="row">
                      <div class="md-form form-sm col-sm-6">
                          <i class="fa fa-lock prefix"></i>
                          <input type="password" id="form25" class="form-control validate">
                          <label data-error="wrong" data-success="right" for="form25">password</label>
                      </div>

                      <div class="md-form form-sm col-sm-6">
                          <i class="fa fa-lock prefix"></i>
                          <input type="password" id="form26" class="form-control validate">
                          <label data-error="wrong" data-success="right" for="form26">Confirm password</label>
                      </div>
                  </div>

                  <div class="row">
                      <div class="md-form form-sm col-sm-6">
                          <i class="fa fa-phone prefix"></i>
                          <input type="number" id="form27" class="form-control validate">
                          <label data-error="wrong" data-success="right" for="form27">Contact No</label>
                      </div>
                      <div class="md-form form-sm col-sm-6">
                          <i class="fa fa-address-card-o prefix"></i>
                          <input type="text" id="form29" class="form-control validate">
                          <label data-error="wrong" data-success="right" for="form29">Address</label>
                      </div>
                  </div>


                  <div class="text-center form-sm mt-2">
                      <button class="btn btn-info btn-rounded">Sign up <i class="fa fa-sign-in ml-1"></i></button>
                  </div>

              </div>
          </div>
                                        
                                        <!--Footer-->
          <div class="modal-footer">
              <div class="options text-right">
                  <p class="pt-1">Already have an account? <a href="#" class="blue-text">Log In</a></p>
              </div>
              <button type="button" class="btn btn-outline-info waves-effect ml-auto btn-rounded btn-sm" data-dismiss="modal">Close</button>
          </div>
      </div>
</asp:Content>
