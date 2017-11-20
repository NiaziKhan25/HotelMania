<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="HotalIndex.aspx.cs" Inherits="HotalMania.Admin.HotalIndex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div>
        <a href="AddHotel.aspx" class="material-icons">Add New
            <div class="ripple-container"></div>
        </a>
    </div>
     <div class="row">
        <div class="col-xl-12">
             <div class="card card-nav-tabs">
                <div class="card-header" data-background-color="purple">
                    <div class="nav-tabs-navigation">
                        <div class="nav-tabs-wrapper">
                            
                            <ul class="nav nav-tabs" data-tabs="tabs">
                                <li class="active">
                                    <a href="#allhotels" data-toggle="tab">
                                        <i class="material-icons">bug_report</i> Hotals
                                        <div class="ripple-container"></div>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="#addNewHotal" data-toggle="tab">
                                        <i class="material-icons">add</i> Add New
                                        <div class="ripple-container"></div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card-content">
                    <div class="tab-content">
                        <div class="tab-pane active" id="allhotels">
                            <table class="table" id="tbl1" runat="server">
                                <thead>
                                    <th>Name</th>
                                    <th>Location</th>
                                    <th>Person Capacity</th>
                                    <th>Per Person PPC</th>
                                    <th>Actions</th>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Serana Hotal</td>
                                        <td>Islamabad"</td>
                                        <td>500</td>
                                        <td>$50</td>
                                        <td class="td-actions text-right">
                                            <button type="button" rel="tooltip" title="Edit Task" class="btn btn-primary btn-simple btn-xs">
                                                <i class="material-icons">edit</i>
                                            </button>
                                            <button type="button" rel="tooltip" title="Remove" class="btn btn-danger btn-simple btn-xs">
                                                <i class="material-icons">close</i>
                                            </button>
                                        </td>
                                    </tr>
                                    
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane" id="addNewHotal">
                             <div class="card-content">
                                    <form>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Hotel Name</label>
                                                    <input type="text" class="form-control" id="txt_hotel_name"/>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Guest Capacity</label>
                                                    <input type="number" class="form-control" id="txt_guest_capacity"/>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Parking Capacity</label>
                                                    <input type="number" class="form-control" id="txt_parking_capacity"/>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label class="text-capitalize">Availability</label>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" name="optionsCheckboxes" checked="checked" id="checkbox_availability"/>
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group label-floating">
                                                    <label class="control-label">Location</label>
                                                    <input type="text" class="form-control" id="txt_Location"/>
                                                </div>
                                            </div>
                                        
                                            <div class="col-md-4">
                                              <div class="form-group label-floating">
                                                    <label class="control-label">Per Hour PPC</label>
                                                    <input type="number" class="form-control" id="txt_PPC"/>
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
                                                      <input type="text" class="form-control input-lg" disabled placeholder="Upload Image"/>
                                                      <span class="input-group-btn">
                                                        <button class="browse btn btn-primary input-lg" type="button"><i class="material-icons">search</i> Browse</button>
                                                      </span>
                                                    </div>
                                                  </div>
                                            </div>
                                        </div>
                                        <button type="submit" class="btn btn-primary pull-right">Add Now</button>
                                        <div class="clearfix"></div>
                                    </form>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </div>
</asp:Content>
