<%@ Page Title=""  Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="HotalIndex.aspx.cs" Inherits="HotalMania.Admin.HotalIndex" %>
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
                       
                    </div>
                </div>
                <div class="card-content">
                    <div class="tab-content">
                        <asp:Repeater ID="Repeater1" runat="server" 
                            EnableViewState="False">
                            <HeaderTemplate>
                                <table>
                                     <thead>
                                        <th>Name</th>
                                        <th>Location</th>
                                        <th>Person Capacity</th>
                                        <th>Per Person PPC</th>
                                        <th>Actions</th>
                                     </thead>
                                    
                            </HeaderTemplate>
                            <ItemTemplate>
                                <tr>
                                        <td><%# Eval("Name") %></td>
                                        <td><%# Eval("Location") %></td>
                                        <td><%# Eval("TotalPersonCapacity") %></td>
                                        <td><%# Eval("PerHourPPC") %></td>
                                        <td class="td-actions text-right">
                                            <button type="button" id="update_<%# Eval("ID") %>" rel="tooltip" title="Edit Task"  class="btn btn-primary btn-simple btn-xs btn-rose">
                                                <i class="material-icons">edit</i>
                                            </button>
                                            <button type="button" id="delete_<%# Eval("ID") %>" rel="tooltip" title="Remove"  class="btn btn-danger btn-simple btn-xs">
                                                <i class="material-icons">close</i>
                                            </button>
                                        </td>

                                       </tr> 
                            </ItemTemplate>
                            <FooterTemplate>
                                
                                </table>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
     </div>
</asp:Content>
