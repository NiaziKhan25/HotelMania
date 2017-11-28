<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="FoodIndex.aspx.cs" Inherits="HotalMania.Admin.FoodIndex" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
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
                                         Food Listing
                                        <div class="ripple-container"></div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                 <div class="card-content">
                     <div class="tab-content ">
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
                                             <asp:Label ID="Label1" runat="server">Food Name:</asp:Label>
                                         </HeaderTemplate>
                                     </telerik:GridTemplateColumn>
                                     <telerik:GridTemplateColumn UniqueName="Column2">
                                         <ItemTemplate>
                                             <asp:TextBox runat="server" type="number" ReadOnly="false" ID="PerPersonCharge" value='<%# Eval("PerPersonCharge")%>' Text='<%# Eval("PerPersonCharge")%>'> </asp:TextBox>
                                         </ItemTemplate>
                                         <HeaderTemplate>
                                             <asp:Label ID="Label1" runat="server">Per Person Charge:</asp:Label>
                                         </HeaderTemplate>
                                     </telerik:GridTemplateColumn>
                                     <telerik:GridTemplateColumn UniqueName="Column3">
                                         <ItemTemplate>
                                             <asp:TextBox runat="server" type="text" ReadOnly="false" ID="Type" value='<%# Eval("Type")%>' Text='<%# Eval("Type")%>'> </asp:TextBox>
                                         </ItemTemplate>
                                         <HeaderTemplate>
                                             <asp:Label ID="Label1" runat="server">Food Type:</asp:Label>
                                         </HeaderTemplate>
                                     </telerik:GridTemplateColumn>
                                     <telerik:GridTemplateColumn UniqueName="Column4">
                                         <ItemTemplate>
                                             <asp:CheckBox ID="isAvailible" Checked='<%# Convert.ToBoolean(Eval("IsAvailible")) %>' runat="server" />
                                         </ItemTemplate>
                                         <HeaderTemplate>
                                             <asp:Label ID="Label2" runat="server">Is Available:</asp:Label>
                                         </HeaderTemplate>
                                     </telerik:GridTemplateColumn>
                                     <telerik:GridTemplateColumn UniqueName="Column7">
                                         <ItemTemplate>
                                             <asp:Button class="btn btn-primary fa-edit btn-xs btn-round " ID="btnUpdate" Text="Update" CommandName="Update" CommandArgument='<%# Eval("ID")%>' runat="server" />
                                         </ItemTemplate>
                                         <HeaderTemplate >
                                             <asp:Label ID="Label7" runat="server">Actions</asp:Label>
                                         </HeaderTemplate>
                                     </telerik:GridTemplateColumn>
                                     <telerik:GridTemplateColumn UniqueName="Column8">                                        
                                         <ItemTemplate>
                                             <asp:Button class="btn btn-primary fa-edit btn-xs btn-rose " ID="btnDetail" Text="Detail & Edit" CommandName="Edit" CommandArgument='<%# Eval("ID")%>' runat="server" />
                                         </ItemTemplate>
                                     </telerik:GridTemplateColumn>
                                 </Columns>
                             </MasterTableView>
                             <ClientSettings EnablePostBackOnRowClick="true">
                                 <Selecting AllowRowSelect="true" />
                             </ClientSettings>
                         </telerik:RadGrid>
                     </div>
                     <div class="tab-content" id="editTab" runat="server" style="visibility:Hidden">
                         <div class="row">
                             <div class="col-md-4">
                                 <div class="form-group label-floating">
                                     <label class="control-label">Food Name</label>
                                     <input type="text"  class="form-control" id="txt_Food_name" />
                                 </div>
                             </div>
                             <div class="col-md-4">
                                 <div class="form-group label-floating">
                                     <label class="control-label">Food Type</label>
                                     <input type="text"  class="form-control" id="txt_Food_Type" />
                                 </div>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-4">
                                 <label class="text-capitalize">Availability</label>
                                 <div class="checkbox">
                                     <label>
                                         <input type="checkbox"  checked="checked" id="checkbox_availability1" />
                                     </label>
                                 </div>
                             </div>
                             <div class="col-md-4">
                                 <div class="form-group label-floating">
                                     <label class="control-label">Per Person Charge</label>
                                     <input type="number"  class="form-control" id="txt_PPC" />
                                 </div>
                             </div>
                         </div>
                         <div class="row">
                             <div class="col-md-4">
                                 <div class="form-group">
                                     <input type="file" name="img[]" class="file" />
                                     <div class="input-group col-xs-12">
                                         <span class="input-group-addon"><i class="material-icons">add_a_photo</i></span>
                                         <input type="text" class="form-control input-lg" placeholder="Upload Image" />
                                         <span class="input-group-btn">
                                             <button class="browse btn btn-primary input-lg" type="button"><i class="material-icons">search</i> Browse</button>
                                         </span>
                                     </div>
                                 </div>
                             </div>
                         </div>                 
                         <div class="clearfix"></div>   
                     </div>
                 </div>
            </div>
        </div>
     </div>
</asp:Content>
