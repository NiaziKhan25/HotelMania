<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="Hotels.aspx.cs" Inherits="HotalMania.Customer.Hotels" %>
<%@ register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
      <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
                  <telerik:RadListView ID="rvlHotels" runat="server" OnItemCommand="rvlHotels_ItemCommand"   AllowPaging="false"
                    ItemPlaceholderID="HotelItemContainer" DataKeyNames="ID">
                    <LayoutTemplate>
                        <div class="">                        	
                                <fieldset style="border:0px;">                            
                                    <div class="row col-lg-12">
                                        <asp:PlaceHolder ID="HotelItemContainer" runat="server"></asp:PlaceHolder>
                                    </div>
                                </fieldset>                            
                        </div>  
                    </LayoutTemplate>
                    <ItemTemplate>
                        <div class="col-sm-4">
                            <div class="row">
                                <div class="card-wrapper col-lg-11" style="margin-top:20px;">
                                    <div id="card-1" class="card-rotating effect__click">
                                        <!--Front Side-->
                                        <div class="face front">
                                            <div class="card-up" style="height:250px;">
                                                <img src="../img/slider/serena1.jpg" class="img-fluid">
                                            </div>
                                            <div class="avatar"><img src="../img/icons/hotal-icon.jpg" class="rounded-circle">
                                            </div>
                                            <div class="card-body hotal-card-body">
                                                <h4><%# Eval("Name")%></h4>
                                                <p><%# Eval("Location")%></p>
                                                <!--Rating-->
                                                <p>
                                                    <%# Eval("Rating")%>
                                                    <ul class="rating">
                                                        <li><i class="fa fa-star"></i></li>
                                                    </ul>
                                                </p>
                                                
                                                
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
                                                    <h2 class="card-title blue-text"> <%# Eval("Name")%></h2>
                                                </div>
                                                <div class="text-muted"> <button type="button" class="btn btn-rounded peach-gradient"><i class="fa fa-cart-plus pr-2" aria-hidden="true"></i>Book Now</button></div>
                                                <h4 class="card-title green-text"><strong><a>'<%#  (Convert.ToBoolean(Eval("IsAvailible"))) ? "Availible" :  "Not Availible" %>'</a></strong></h4>
                                                <!--Description-->                                            
                                                <p>Heaving the capcity of <strong class="blue-text font-weight-bold"><%# Eval("TotalPersonCapacity")%></strong> Guests</p>
                                                <!--Card footer-->
                                                <p class="btn-outline-green waves-effect btn-rounded"><i class="fa fa-check pr-2" aria-hidden="true"></i>Parking capcity of <strong class="blue-text font-weight-bold"><%# Eval("ParkingCapacity")%></strong> Vehicles</p>

                                            </div>
                                            <div class="align-bottom">
                                                <hr />
                                                <h3>Per hour Per Person Charge <strong><%# Eval("PerHourPPC")%></strong> </h3>
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
                        
                         
                    </ItemTemplate>
                </telerik:RadListView>   
             
  
</asp:Content>
