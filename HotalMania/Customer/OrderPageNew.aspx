<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="OrderPageNew.aspx.cs" Inherits="HotalMania.Customer.OrderPageNew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <h2 class="text-center font-bold pt-4 pb-5 mb-5"><strong>Registration form with steps</strong></h2>

<div class="steps-form-2">
    <div class="steps-row-2 setup-panel-2 d-flex justify-content-between">
        <div class="steps-step-2">
            <a href="#step-4" type="button" class="btn btn-amber btn-circle-2 waves-effect ml-0" data-toggle="tooltip" data-placement="top" title="Basic Information"><i class="fa fa-folder-open-o" aria-hidden="true"></i></a>
        </div>
        <div class="steps-step-2">
            <a href="#step-5" type="button" class="btn btn-blue-grey btn-circle-2 waves-effect" data-toggle="tooltip" data-placement="top" title="Personal Data"><i class="fa fa-pencil" aria-hidden="true"></i></a>
        </div>
        <div class="steps-step-2">
            <a href="#step-6" type="button" class="btn btn-blue-grey btn-circle-2 waves-effect" data-toggle="tooltip" data-placement="top" title="Terms and Conditions"><i class="fa fa-photo" aria-hidden="true"></i></a>
        </div>
        <div class="steps-step-2">
            <a href="#step-7" type="button" class="btn btn-blue-grey btn-circle-2 waves-effect mr-0" data-toggle="tooltip" data-placement="top" title="Finish"><i class="fa fa-check" aria-hidden="true"></i></a>
        </div>
    </div>
</div>

<form role="form" action="" method="post">
    <div class="row setup-content-2" id="step-4">
        <div class="col-md-12">
            <h3 class="font-bold pl-0 my-4"><strong>Booking information</strong></h3>
                <div class="md-form form-group">
                    <i class="fa fa-calendar-o prefix small"></i>
                    <input type="text" id="event_name" class="form-control validate"/>
                    <label for="event_name" data-error="must noy be empty" data-success="right">Enter Event Name</label>
                </div>

                <div class="md-form form-group ">
                    <i class="fa fa-info-circle prefix"></i>
                    <input type="text" id="event_discription" class="form-control validate"/>
                    <label for="event_discription">Enter Event Discription</label>
                </div>
                <div class="md-form form-group">
                    <i class="fa fa-calendar prefix"></i>
                    <input placeholder="Selected date" type="text" id="event-date" class="form-control datepicker"/>
                    <label for="event-date">Select Event Date</label>
                </div>
                <div class="md-form form-group ">
                    <i class="fa fa-clock-o prefix"></i>
                    <input placeholder="sart time" type="text" id="input_starttime" class="form-control timepicker"/>
                    <label for="input_starttime">Start time</label>
                </div>
                            
                <div class="md-form form-group ">
                    <i class="fa fa-clock-o prefix"></i>
                    <input placeholder="end time" type="text" id="input_endtime" class="form-control timepicker"/>
                    <label for="input_endtime">End time</label>
                </div>

            <button class="btn btn-mdb-color btn-rounded nextBtn-2 float-right" type="button">Next</button>
        </div>
    </div>
    <div class="row setup-content-2" id="step-5">
        <div class="col-md-12">
            <h3 class="font-bold pl-0 my-4"><strong>Personal Data</strong></h3>
            <div class="md-form form-group">
                <i class="fa fa-calendar-o prefix small"></i>
                <input type="text" id="hotal_name" class="form-control validate" runat="server" disabled="disabled"/>
                <label for="hotal_name" data-error="must noy be empty" data-success="right">Hotal Name</label>
            </div>

            <div class="md-form form-group">
                <i class="fa fa-envelope prefix"></i>
                <input type="text" id="total_capacity" class="form-control validate" runat="server" disabled="disabled"/>
                <label for="event_discription">Total Capacity</label>
            </div>
            <div class="md-form form-group">
                <i class="fa fa-envelope prefix"></i>
                <input type="text" id="per_h_pcc" class="form-control validate" runat="server" disabled="disabled"/>
                <label for="per_h_pcc">Per hour PPC</label>
            </div>
            <div class="md-form form-group">
                <i class="fa fa-envelope prefix"></i>
                <input type="text" id="parking_capacity" class="form-control validate" runat="server" disabled="disabled"/>
                <label for="parking_capacity">Parking Capacity</label>
            </div>
            <div class="md-form form-group">
                <input placeholder="Enter Capacity" type="text" id="selected_capacity" class="form-control timepicker" runat="server"/>
                <label for="selected_capacity">your capacity</label>
            </div>

            <button class="btn btn-mdb-color btn-rounded prevBtn-2 float-left" type="button">Previous</button>
            <button class="btn btn-mdb-color btn-rounded nextBtn-2 float-right" type="button">Next</button>
        </div>
    </div>
    <div class="row setup-content-2" id="step-6">
        <div class="col-md-12">
            <h3 class="font-bold pl-0 my-4"><strong>Terms and conditions</strong></h3>
            <div class="form-group">
                <input type="checkbox" id="checkbox111">
                <label for="checkbox111">I agree to the terms and conditions</label>
            </div>
            <div class="form-group">
                <input type="checkbox" id="checkbox112">
                <label for="checkbox112">I want to receive newsletter</label>
            </div>
            <button class="btn btn-mdb-color btn-rounded prevBtn-2 float-left" type="button">Previous</button>
            <button class="btn btn-mdb-color btn-rounded nextBtn-2 float-right" type="button">Next</button>
        </div>
    </div>
    <div class="row setup-content-2" id="step-7">
        <div class="col-md-12">
            <h3 class="font-bold pl-0 my-4"><strong>Finish</strong></h3>
            <h2 class="text-center font-bold my-4">Registration completed!</h2>
            <button class="btn btn-mdb-color btn-rounded prevBtn-2 float-left" type="button">Previous</button>
            <button class="btn btn-success btn-rounded float-right" type="submit">Submit</button>
        </div>
    </div>
</form>
                

</asp:Content>
