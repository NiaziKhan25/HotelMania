<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="HotalMania.Customer.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <main>
    <!--Main layout-->
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="row wow fadeIn" data-wow-delay="0.4s">
                        <div class="col-lg-12">
                            <div class="divider-new">
                                <h2 class="h2-responsive">What's new?</h2>
                            </div>

                            <!--Carousel Wrapper-->
                            <div id="carousel-example-1z" class="carousel slide carousel-fade" data-ride="carousel">
                                <!--Indicators-->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-1z" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-1z" data-slide-to="1"></li>
                                    <li data-target="#carousel-example-1z" data-slide-to="2"></li>
                                </ol>
                                <!--/.Indicators-->
                                <!--Slides-->
                                <div class="carousel-inner" role="listbox">
                                    <!--First slide-->
                                    <div class="carousel-item active">
                                        <img src="../img/slider/marriott1.jpg" alt="First slide" class="img-fluid">
                                        <div class="carousel-caption">
                                            <h4>New collection</h4>
                                            <br>
                                        </div>
                                    </div>
                                    <!--/First slide-->
                                    <!--Second slide-->
                                    <div class="carousel-item">
                                        <img src="../img/slider/ramada1.jpg" alt="Second slide" class="img-fluid">
                                        <div class="carousel-caption">
                                            <h4>Get discount!</h4>
                                            <br>
                                        </div>
                                    </div>
                                    <!--/Second slide-->
                                    <!--Third slide-->
                                    <div class="carousel-item">
                                        <img src="../img/slider/serena1.jpg" alt="Third slide" class="img-fluid">
                                        <div class="carousel-caption">
                                            <h4>Only now for 10$</h4>
                                            <br>
                                        </div>
                                    </div>
                                    <!--/Third slide-->
                                </div>
                                <!--/.Slides-->
                                <!--Controls-->
                                <a class="carousel-control-prev" href="#carousel-example-1z" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="carousel-control-next" href="#carousel-example-1z" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                                <!--/.Controls-->
                            </div>
                            <!--/.Carousel Wrapper-->
                        </div>
                    </div>
                    <br>
                    <hr class="extra-margins">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="row">
                                <div class="card-wrapper col-lg-11">
                                    <div id="card-1" class="card-rotating effect__click">
                                        <!--Front Side-->
                                        <div class="face front">
                                            <div class="card-up" style="height:250px;">
                                                <img src="../img/slider/serena1.jpg" class="img-fluid"/>
                                            </div>
                                            <div class="avatar"><img src="../img/icons/hotal-icon.jpg" class="rounded-circle"/>
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
                                                        <a class="btn-floating green btn-rounded btn-sm theme-background-dark" href="OrderPageNew.aspx" style="margin-top:3px;"><i class="fa fa-cart-plus"></i></a>
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
                                                <div class="text-muted"> <button type="button" class="btn btn-rounded peach-gradient" ><i class="fa fa-cart-plus pr-2" aria-hidden="true"></i>Book Now</button></div>
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
                        </div>
                        <div class="col-sm-4">
                            <!--Card-->
                            <!--/Card-->
                        </div>
                        <div class="col-sm-4">
                            <!--Card-->
                            <!--/.Card-->
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-lg-4 col-md-6 mb-r">

                            <h4 class="py-lg-4 pb-4 text-center">Narrower</h4>

                            <!--Card-->
                            <div class="card card-cascade narrower mb-r card-rotating" style="margin-top: 28px" id="food-card-1">

                                <div></div>
                                <!--Card image-->
                                <div class="view overlay hm-white-slight">
                                    <img src="https://mdbootstrap.com/img/Photos/Lightbox/Thumbnail/img%20(147).jpg" class="img-fluid" alt="">
                                    <a>
                                        <div class="mask"></div>
                                    </a>
                                </div>
                                <!--/.Card image-->

                                <!--Card content-->
                                <div class="card-body">
                                    <h5 class="pink-text"><i class="fa fa-cutlery"></i> Culinary</h5>
                                    <!--Title-->
                                    <h4 class="card-title">Cheat day inspirations</h4>
                                    <!--Text-->
                                    <p class="card-text">Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut
                                        aliquid ex ea commodi.</p>
                                    <a class="btn btn-unique">Button</a>
                                </div>
                                <!--/.Card content-->

                            </div>
                            <!--/.Card-->

                        </div>
                    </div>
                </div>
            </div>
        
        <!--/.Main layout-->
    </main>
</asp:Content>
