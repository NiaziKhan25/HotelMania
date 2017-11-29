<%@ Page Title="Order Now" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="HotalMania.OrderPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <!--Main layout-->
            <div class="row col-md-12">
                <div id="hotal_name_div">
                    <h3 class="text-center">Booking for <span id="order_hotal_name" runat="server"> Saerna Hotal</span></h3>
                </div>
                   <%-- <div class="card">
                        <!--Card image-->
                        <img class="img-fluid" src="../img/all/orb1.jpg" alt="Card image cap" style="height:409px;" />

                        <!--Card content-->
                        <div class="card-body">
                            <!--Title-->
                            <h4 class="card-title">Book hotal for your event</h4>
                            <!--Text-->
                            <p class="card-text">place order to us for the reveave service for the managing the event</p>
                        </div>
                    </div>--%>
                            
                    <section class="form-gradient col-lg-12" >

                        <!--Form with header-->
                        <div class="card">

                            <!--Header-->
                            <div class="header pt-3 peach-gradient">

                                <div class="row d-flex justify-content-center">
                                    <h3 class="white-text mb-3 pt-3 font-bold">Log in</h3>
                                </div>

                                <div class="row mt-2 mb-3 d-flex justify-content-center">
                                    <!--Facebook-->
                                    <a class="icons-sm fb-ic"><i class="fa fa-facebook white-text fa-lg"> </i></a>
                                    <!--Twitter-->
                                    <a class="icons-sm tw-ic"><i class="fa fa-twitter white-text fa-lg"> </i></a>
                                    <!--Google +-->
                                    <a class="icons-sm gplus-ic"><i class="fa fa-google-plus white-text fa-lg"> </i></a>
                                </div>

                            </div>
                            <!--Header-->

                            <div class="card-body mx-4 mt-4">

                                <!--Body-->
                                <div class="md-form form-group">
                                    <i class="fa fa-calendar-o prefix small"></i>
                                    <input type="text" id="event_name" class="form-control validate"/>
                                    <label for="event_name" data-error="must noy be empty" data-success="right">Enter Event Name</label>
                                </div>

                                <div class="md-form form-group ">
                                    <i class="fa fa-envelope prefix"></i>
                                    <input type="text" id="event_discription" class="form-control validate"/>
                                    <label for="event_discription">Enter Event Discription</label>
                                </div>
                                <div class="md-form form-group">
                                    <input placeholder="Selected date" type="text" id="event-date" class="form-control datepicker"/>
                                    <label for="event-date">Select Event Date</label>
                                </div>
                                <div class="md-form form-group ">
                                    <input placeholder="sart time" type="text" id="input_starttime" class="form-control timepicker"/>
                                    <label for="input_starttime">Start time</label>
                                </div>
                            
                                <div class="md-form form-group ">
                                    <input placeholder="end time" type="text" id="input_endtime" class="form-control timepicker"/>
                                    <label for="input_endtime">End time</label>
                                </div>

                                <!--Grid row-->
                                <div class="row d-flex align-items-center mb-4">

                                    <!--Grid column-->
                                    <div class="col-md-1 col-md-5 d-flex align-items-start">
                                        <div class="text-center">
                                            <button type="button" class="btn btn-grey btn-rounded z-depth-1a">Log in</button>
                                        </div>
                                    </div>
                                    <!--Grid column-->

                                    <!--Grid column-->
                                    <div class="col-md-7">
                                        <p class="font-small grey-text d-flex justify-content-end mt-3">Don't have an account? <a href="#" class="dark-grey-text ml-1 font-bold"> Sign up</a></p>
                                    </div>
                                    <!--Grid column-->

                                </div>
                                <!--Grid row-->
                            </div>

                        </div>
                        <!--/Form with header-->

                    </section>
                            <div class="row col-md-12" style="margin-left:0px;">
                                
                            </div>
                            <div class="row col-md-12" style="margin-top:30px;">

                            </div>
                            <hr />
                            <h3 > Hotal Details</h3> 
                            <div class="row col-md-12" style="margin-top:30px;">
                                   
                                 <div class="md-form form-group col-md-3">
                                    <i class="fa fa-calendar-o prefix small"></i>
                                    <input type="text" id="hotal_name" class="form-control validate" runat="server" disabled="disabled"/>
                                    <label for="hotal_name" data-error="must noy be empty" data-success="right">Hotal Name</label>
                                 </div>

                                 <div class="md-form form-group col-md-3">
                                    <i class="fa fa-envelope prefix"></i>
                                    <input type="text" id="total_capacity" class="form-control validate" runat="server" disabled="disabled"/>
                                    <label for="event_discription">Total Capacity</label>
                                </div>
                                 <div class="md-form form-group col-md-3">
                                    <i class="fa fa-envelope prefix"></i>
                                    <input type="text" id="per_h_pcc" class="form-control validate" runat="server" disabled="disabled"/>
                                    <label for="per_h_pcc">Per hour PPC</label>
                                </div>
                                 <div class="md-form form-group col-md-3">
                                    <i class="fa fa-envelope prefix"></i>
                                    <input type="text" id="parking_capacity" class="form-control validate" runat="server" disabled="disabled"/>
                                    <label for="parking_capacity">Parking Capacity</label>
                                </div>
                            </div>
                            <div class="row col-md-12" style="margin-top:30px;">
                                <div class="md-form form-group col-md-3 offset-5">
                                    <input placeholder="end time" type="text" id="selected_capacity" class="form-control timepicker" runat="server"/>
                                    <label for="selected_capacity">your capacity</label>
                                </div>

                            </div>
                            
                    


                            

                        
                    </div>
           
</asp:Content>
