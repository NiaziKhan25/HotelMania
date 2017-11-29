<%@ Page Title="Order Now" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="HotalMania.OrderPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <main style="padding-top:1rem;">
    <!--Main layout-->
        <div class="container">
            <div class="row col-md-12">
                <div id="hotal_name_div">
                    <h3 class="text-center">Booking for <span id="order_hotal_name" runat="server"> Saerna Hotal</span></h3>
                </div>
                    <div class="card">
                        <!--Card image-->
                        <img class="img-fluid" src="img/all/orb1.jpg" alt="Card image cap" style="height:409px;" >

                        <!--Card content-->
                        <div class="card-body">
                            <!--Title-->
                            <h4 class="card-title">Book hotal for your event</h4>
                            <!--Text-->
                            <p class="card-text">place order to us for the reveave service for the managing the event</p>
                        </div>
                    </div>
                    <div class="row" style="margin-top:30px;">
                        <form class="form-inline">
                            <div class="row" style="margin-left:0px;">
                                <div class="md-form form-group">
                                    <i class="fa fa-calendar-o prefix small"></i>
                                    <input type="text" id="event_name" class="form-control validate">
                                    <label for="event_name" data-error="must noy be empty" data-success="right">Enter Event Name</label>
                                </div>

                                <div class="md-form form-group">
                                    <i class="fa fa-envelope prefix"></i>
                                    <input type="text" id="event_discription" class="form-control validate">
                                    <label for="event_discription">Enter Event Discription</label>
                                </div>
                                <div class="md-form form-group">
                                    <input placeholder="Selected date" type="text" id="event-date" class="form-control datepicker">
                                    <label for="event-date">Select Event Date</label>
                                </div>
                                <div class="md-form form-group">
                                    <input placeholder="sart time" type="text" id="input_starttime" class="form-control timepicker">
                                    <label for="input_starttime">Start time</label>
                                </div>
                                
                            </div>
                            <div class="row" style="margin-top:30px;">
                                <div class="md-form form-group">
                                    <input placeholder="end time" type="text" id="input_endtime" class="form-control timepicker">
                                    <label for="input_endtime">End time</label>
                                </div>

                            </div>
                            
                            

                        </form>                        
                        
                    </div>
                </div>
            
        </div>
    </main>
</asp:Content>
