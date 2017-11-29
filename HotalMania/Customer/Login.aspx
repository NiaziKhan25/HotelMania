<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotalMania.Customer.Login" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">

    <p class="h5 text-center mb-4">Sign in</p>

    <div class="md-form">
        <i class="fa fa-envelope prefix grey-text"></i>
        <input type="text" id="defaultForm-email" class="form-control"/>
        <label for="defaultForm-email">Your email</label>
    </div>

    <div class="md-form">
        <i class="fa fa-lock prefix grey-text"></i>
        <input type="password" id="defaultForm-pass" class="form-control"/>
        <label for="defaultForm-pass">Your password</label>
    </div>

    <div class="text-center">
        <asp:Button class="btn btn-default" runat="server" OnClick="btn_login_Click" Text="Login" ID="btn_login" ValidationGroup="Purchase"></asp:Button>
    </div>
</asp:Content>
