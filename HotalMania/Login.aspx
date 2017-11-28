<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotalMania.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <div class="md-form form-sm">
           <i class="fa fa-envelope prefix"></i>
           <input type="email" id="email" runat="server" class="form-control validate">
           <label data-error="wrong" data-unnamed_loggingout="right" for="email">Your email</label>
       </div>
       <div class="md-form form-sm" style="margin-top: 45px;">
           <i class="fa fa-lock prefix"></i>
           <input type="password" id="password" runat="server" class="form-control validate">
           <label data-error="wrong" data-success="right" for="password">Your password</label>
       </div>                                        
       <asp:Button ID="btnSubmit" runat="server" class="btn btn-info btn-rounded" Text="Log In"
           OnClick="btnSubmit_Click" />                                             
                                       
      <!--Footer-->
       <div class="form-footer">
           <div class="options text-center text-md-right mt-1 btn-rounded">
               <p>Not a member? <a href="SignUp.aspx" class="blue-text">Sign Up</a></p>

           </div>
       </div>                                          
</asp:Content>
