<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="UserIndex.aspx.cs" Inherits="HotalMania.Admin.UserIndex" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div>
        <a href="AddUser.aspx" class="material-icons">Add New
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
                                             <asp:TextBox runat="server" type="text" ReadOnly="false" ID="Name" value='<%# Eval("UserName")%>' Text='<%# Eval("UserName")%>'> </asp:TextBox>
                                         </ItemTemplate>
                                         <HeaderTemplate>
                                             <asp:Label ID="Label1" runat="server">User Name:</asp:Label>
                                         </HeaderTemplate>
                                     </telerik:GridTemplateColumn>
                                     <telerik:GridTemplateColumn UniqueName="Column2">
                                         <ItemTemplate>
                                             <asp:TextBox runat="server" type="email" ReadOnly="true" ID="Email" value='<%# Eval("Email")%>' Text='<%# Eval("Email")%>'> </asp:TextBox>
                                         </ItemTemplate>
                                         <HeaderTemplate>
                                             <asp:Label ID="Label2" runat="server">Email:</asp:Label>
                                         </HeaderTemplate>
                                     </telerik:GridTemplateColumn>
                                     <telerik:GridTemplateColumn UniqueName="Column3">
                                         <ItemTemplate>
                                             <asp:TextBox runat="server" type="tel" ReadOnly="false" ID="ContactNo" value='<%# Eval("ContactNo")%>' Text='<%# Eval("ContactNo")%>'> </asp:TextBox>
                                         </ItemTemplate>
                                         <HeaderTemplate>
                                             <asp:Label ID="Label3" runat="server">Contact No:</asp:Label>
                                         </HeaderTemplate>
                                     </telerik:GridTemplateColumn>
                                     <telerik:GridTemplateColumn UniqueName="Column4">
                                         <ItemTemplate>
                                             <asp:TextBox runat="server" type="text" ReadOnly="false" ID="Address" value='<%# Eval("Address")%>' Text='<%# Eval("Address")%>'> </asp:TextBox>
                                         </ItemTemplate>
                                         <HeaderTemplate>
                                             <asp:Label ID="Label4" runat="server">Address:</asp:Label>
                                         </HeaderTemplate>
                                     </telerik:GridTemplateColumn>
                                      <telerik:GridTemplateColumn UniqueName="Column5">
                                         <ItemTemplate>
                                             <asp:TextBox runat="server" type="text" ReadOnly="true" ID="UserRole" value='<%# Eval("tblRole.Name")%>' Text='<%# Eval("tblRole.Name")%>'> </asp:TextBox>
                                         </ItemTemplate>
                                         <HeaderTemplate>
                                             <asp:Label ID="Label4" runat="server">User Role:</asp:Label>
                                         </HeaderTemplate>
                                     </telerik:GridTemplateColumn>                                  
                                     <telerik:GridTemplateColumn UniqueName="Column6">
                                         <ItemTemplate>
                                             <asp:Button class="btn btn-primary fa-edit btn-xs btn-round " ID="btnUpdate" Text="Update" CommandName="Update" CommandArgument='<%# Eval("ID")%>' runat="server" />
                                         </ItemTemplate>
                                         <HeaderTemplate >
                                             <asp:Label ID="Label7" runat="server">Actions</asp:Label>
                                         </HeaderTemplate>
                                     </telerik:GridTemplateColumn>
                                     <telerik:GridTemplateColumn UniqueName="Column7">                                        
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
