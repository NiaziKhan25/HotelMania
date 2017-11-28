<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AddUser.aspx.cs" Inherits="HotalMania.Admin.AddUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <div class="row">
        <div class="col-md-4">
            <div class="form-group label-floating">
                <label class="control-label">User Name</label>
                <input type="text" runat="server" class="form-control" id="txt_user_name" />
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group label-floating">
                <label class="control-label">Email</label>
                <input type="email" runat="server" class="form-control" id="txt_Email" />
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group label-floating">
                <label class="control-label">Password</label>
                <input type="password" runat="server" class="form-control" id="txt_Password" />
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="form-group label-floating">
                <label class="control-label">Contact No</label>
                <input type="tel" runat="server" class="form-control" id="txt_Tel" />
            </div>
        </div>
        <div class="col-md-4">
            <div class="form-group label-floating">
                <label class="control-label">Address</label>
                <input type="text" runat="server" class="form-control" id="txt_Address" />
            </div>
        </div>
        <div class="col-md-4">
            <label class="text-capitalize">IsActive</label>
            <div class="checkbox">
                <label>
                    <input type="checkbox" runat="server" checked="checked" id="checkbox_Active" />
                </label>
            </div>
        </div>
        <div class="col-md-4">
            <label class="text-capitalize">Is Admin</label>
            <div class="checkbox">
                <label>
                    <input type="checkbox" runat="server" checked="checked" id="checkbox_IsAdmin" />
                </label>
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
    <asp:Button ID="btnSubmit" runat="server" class="btn btn-primary pull-right" Text="Add Now" ValidationGroup="Purchase"
        OnClick="btnSubmit_Click" />
    <div class="clearfix"></div>   
</asp:Content>
