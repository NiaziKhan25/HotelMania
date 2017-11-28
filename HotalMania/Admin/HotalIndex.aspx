<%@ Page Title=""  Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="HotalIndex.aspx.cs" Inherits="HotalMania.Admin.HotalIndex" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
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
                        <telerik:RadGrid ID="rgListing" runat="server" AutoGenerateColumns="false" GridLines="None" AllowSorting="true"
                            AllowPaging="true" PageSize="20" PagerStyle-Mode="NumericPages" OnUpdateCommand="rgListing_UpdateCommand" OnEditCommand="rgListing_EditCommand">
                            <MasterTableView EditMode="Inplace">
                                <Columns>
                                    <telerik:GridTemplateColumn UniqueName="Column0">
                                        <ItemTemplate>
                                            <asp:TextBox type="hidden" runat="server" ID="ID" value='<%# Eval("ID")%>'></asp:TextBox>
                                        </ItemTemplate>
                                    </telerik:GridTemplateColumn>
                                    <telerik:GridTemplateColumn UniqueName="Column1">
                                        <ItemTemplate>
                                            <asp:TextBox runat="server" type="text" ReadOnly="false" ID="Name" value='<%# Eval("Name")%>' Text='<%# Eval("Name")%>'> </asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderTemplate>
                                            <asp:Label ID="Label1" runat="server">Hotel Name:</asp:Label>
                                        </HeaderTemplate>
                                    </telerik:GridTemplateColumn>
                                    <telerik:GridTemplateColumn UniqueName="Column2">
                                        <ItemTemplate>
                                            <asp:TextBox runat="server" type="text" ReadOnly="false" ID="Type" value='<%# Eval("Location")%>' Text='<%# Eval("Location")%>'> </asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderTemplate>
                                            <asp:Label ID="Label2" runat="server">Location:</asp:Label>
                                        </HeaderTemplate>
                                    </telerik:GridTemplateColumn>
                                    <telerik:GridTemplateColumn UniqueName="Column3">
                                        <ItemTemplate>
                                            <asp:TextBox runat="server" type="number" ReadOnly="false" ID="PerHourPPC" value='<%# Eval("PerHourPPC")%>' Text='<%# Eval("PerHourPPC")%>'> </asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderTemplate>
                                            <asp:Label ID="Label3" runat="server">Per Hour PPC:</asp:Label>
                                        </HeaderTemplate>
                                    </telerik:GridTemplateColumn>
                                    <telerik:GridTemplateColumn UniqueName="Column4">
                                        <ItemTemplate>
                                            <asp:TextBox runat="server" type="number" ReadOnly="false" ID="TotalPersonCapacity" value='<%# Eval("TotalPersonCapacity")%>' Text='<%# Eval("TotalPersonCapacity")%>'> </asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderTemplate>
                                            <asp:Label ID="Label4" runat="server">Total Person Capacity:</asp:Label>
                                        </HeaderTemplate>
                                    </telerik:GridTemplateColumn>
                                    <telerik:GridTemplateColumn UniqueName="Column5">
                                        <ItemTemplate>
                                            <asp:TextBox runat="server" type="number" ReadOnly="false" ID="ParkingCapacity" value='<%# Eval("ParkingCapacity")%>' Text='<%# Eval("ParkingCapacity")%>'> </asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderTemplate>
                                            <asp:Label ID="Label5" runat="server">Parking Capacity:</asp:Label>
                                        </HeaderTemplate>
                                    </telerik:GridTemplateColumn>
                                    <telerik:GridTemplateColumn UniqueName="Column6">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="isAvailible" Checked='<%# Convert.ToBoolean(Eval("IsAvailible")) %>' runat="server" />
                                        </ItemTemplate>
                                        <HeaderTemplate>
                                            <asp:Label ID="Label6" runat="server">Is Available:</asp:Label>
                                        </HeaderTemplate>
                                    </telerik:GridTemplateColumn>
                                    <telerik:GridTemplateColumn UniqueName="Column7">
                                        <ItemTemplate>
                                            <asp:TextBox runat="server" type="number" ReadOnly="false" ID="Rating" value='<%# Eval("Rating")%>' Text='<%# Eval("Rating")%>'> </asp:TextBox>
                                        </ItemTemplate>
                                        <HeaderTemplate>
                                            <asp:Label ID="Label7" runat="server">Rating:</asp:Label>
                                        </HeaderTemplate>
                                    </telerik:GridTemplateColumn>
                                    <telerik:GridTemplateColumn UniqueName="Column8">
                                         <ItemTemplate>
                                             <asp:Button class="btn btn-primary fa-edit btn-xs btn-round " ID="btnUpdate" Text="Update" CommandName="Update" CommandArgument='<%# Eval("ID")%>' runat="server" />
                                         </ItemTemplate>
                                         <HeaderTemplate >
                                             <asp:Label ID="Label7" runat="server">Actions</asp:Label>
                                         </HeaderTemplate>
                                     </telerik:GridTemplateColumn>
                                     <telerik:GridTemplateColumn UniqueName="Column9">                                        
                                         <ItemTemplate>
                                             <asp:Button class="btn btn-primary fa-edit btn-xs btn-rose " ID="btnDetail" Text="Detail & Edit" CommandName="Edit" CommandArgument='<%# Eval("ID")%>' runat="server" />
                                         </ItemTemplate>
                                     </telerik:GridTemplateColumn>
                                </Columns>
                            </MasterTableView>
                            <ClientSettings EnablePostBackOnRowClick="true">
                                <Selecting AllowRowSelect="false" />
                            </ClientSettings>
                        </telerik:RadGrid>
                    </div>
                </div>
            </div>
        </div>
     </div>
</asp:Content>
