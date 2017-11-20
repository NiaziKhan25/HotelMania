<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="FoodIndex.aspx.cs" Inherits="HotalMania.Admin.FoodIndex" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
      <div>
        <a href="AddFood.aspx" class="material-icons">Add New
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
                                        <i class="material-icons">bug_report</i> Foods
                                        <div class="ripple-container"></div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="card-content">              
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
            </div>
        </div>
     </div>
</asp:Content>
