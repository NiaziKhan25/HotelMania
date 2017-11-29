<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Customer.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="HotalMania.Customer.SignUp" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="bodyContentPlaceHolder" runat="server">
    <p class="h5 text-center mb-4">Sign up</p>

    <div class="md-form">
        <i class="fa fa-user prefix grey-text"></i>
        <input type="text" id="orangeForm-name" class="form-control"/>
        <label for="orangeForm-name">Your name</label>
    </div>
    <div class="md-form">
        <i class="fa fa-envelope prefix grey-text"></i>
        <input type="text" id="orangeForm-email" class="form-control"/>
        <label for="orangeForm-email">Your email</label>
    </div>

    <div class="md-form">
        <i class="fa fa-lock prefix grey-text"></i>
        <input type="password" id="orangeForm-pass" class="form-control"/>
        <label for="orangeForm-pass">Your password</label>
    </div>

    <div class="text-center">
        <button class="btn btn-deep-orange">Sign up</button>
    </div>

</asp:Content>
