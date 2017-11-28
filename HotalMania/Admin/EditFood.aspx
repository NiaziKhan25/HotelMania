<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="EditFood.aspx.cs" Inherits="HotalMania.Admin.EditFood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div class="row">
        <div class="col-md-4">
            <div class="form-group label-floating">
                <label class="control-label">Food Name</label>
                <input type="text" runat="server" class="form-control" id="txt_Food_name" />
                <input type="hidden" runat="server" class="form-control" id="ID" />
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group label-floating">
                <label class="control-label">Food Type</label>
                <input type="text" runat="server" class="form-control" id="txt_Food_Type" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <label class="text-capitalize">Availability</label>
            <div class="checkbox">
                <label>
                    <input type="checkbox" runat="server" checked="checked" id="checkbox_availability1" />
                </label>
            </div>
        </div>

        <div class="col-md-4">
            <div class="form-group label-floating">
                <label class="control-label">Per Person Charge</label>
                <input type="number" runat="server" class="form-control" id="txt_PPC" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <div class="input-group col-xs-12">
                    <asp:FileUpload ID="fuFrontImage" Width="225px" runat="server" />
                </div>
            </div>
        </div>
    </div>                 
    <asp:Button ID="btnSubmit" runat="server" class="btn btn-primary pull-right" Text="Update" ValidationGroup="Purchase"
        OnClick="btnSubmit_Click" />
    <div class="clearfix"></div>  
</asp:Content>
