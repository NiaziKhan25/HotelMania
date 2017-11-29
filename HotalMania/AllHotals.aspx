<%@ Page Title="All Hotals" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="~/AllHotals.aspx.cs" Inherits="HotalMania._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


 <main>
    <!--Main layout-->
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                 
                    <br>
                    <hr class="extra-margins">
                    <div class="row">
                        <% for (var i = 0; i < 10; i++) {%>
                        <div class="col-sm-4">
                            <div class="row">
                                <div class="card-wrapper col-lg-11" style="margin-top:20px;">
                                    <div id="card-1" class="card-rotating effect__click">
                                        <!--Front Side-->
                                        <div class="face front">
                                            <div class="card-up" style="height:250px;">
                                                <img src="img/slider/serena1.jpg" class="img-fluid">
                                            </div>
                                            <div class="avatar"><img src="img/icons/hotal-icon.jpg" class="rounded-circle">
                                            </div>
                                            <div class="card-body hotal-card-body">
                                                <h4>Serena Hotal</h4>
                                                <p>Islamabad</p>
                                                <!--Rating-->
                                                <ul class="rating">
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star"></i></li>
                                                    <li><i class="fa fa-star-o"></i></li>
                                                </ul>
                                                
                                                <div class="row ">
                                                    <div class="col-lg-7">
                                                        <button class="btn btn-info btn-rounded btn-sm rotate-btn" data-card="card-1">Check Details  <i class="fa fa-renren ml-1 prefix"></i></button>
                                                    </div>
                                                    <div class="col-lg-2">
                                                        <a class="btn-floating green btn-rounded btn-sm theme-background-dark" href="#" style="margin-top:3px;"><i class="fa fa-cart-plus"></i></a>
                                                    </div>
                                                </div>
                                             </div>
                                        </div>
                                        <!--/.Front Side-->
                                        <!--Back Side-->
                                        <div class="face back">
                                        <!--Content-->
                                        <!--Section: Products v.1-->
                                            <div class="card-body text-center no-padding">
                                            <!--Category & Title-->
                                                <div class="rounded">
                                                    <h2 class="card-title blue-text"> Serana Hotal</h2>
                                                </div>
                                                <div class="text-muted"> <button type="button" class="btn btn-rounded peach-gradient"><i class="fa fa-cart-plus pr-2" aria-hidden="true"></i>Book Now</button></div>
                                                <h4 class="card-title green-text"><strong><a>Availabe</a></strong></h4>
                                                <!--Description-->
                                                <p class="card-text">the best hotal for ever to hold an event on that place</p>
                                                <p>Heaving the capcity of <strong class="blue-text font-weight-bold">200</strong> people</p>
                                                <!--Card footer-->
                                                <p class="btn-outline-green waves-effect btn-rounded"><i class="fa fa-check pr-2" aria-hidden="true"></i>Parking</p>

                                            </div>
                                            <div class="align-bottom">
                                                <hr />
                                                <h3>Per person charge <strong>$40</strong> </h3>
                                            </div>
                                            <div class="align-baseline">
                                                <a class="btn-floating blue-gradient btn-rounded btn-sm rotate-btn" data-card="card-1" style="margin-top:3px;"><i class="fa fa-arrow-circle-o-left"></i></a>
                                            </div>
                                        </div>
                                        <!--/.Back Side-->
                                    </div>
                                </div>
                            </div>
                        </div><%} %>
                        
                        <div class="col-sm-4">
                            <!--Card-->
                            <!--/Card-->
                        </div>
                        <div class="col-sm-4">
                            <!--Card-->
                            <!--/.Card-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--/.Main layout-->
    </main>          

</asp:Content>