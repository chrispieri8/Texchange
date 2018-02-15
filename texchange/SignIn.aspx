<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="texchange.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
      <div class="container">  
     <div class="card">
        <div class="card-header text-center bg-light">
            <h1>Sign In</h1>
        </div>
        <br />
       
         <div class="card-body">
                <label>Username or Email</label>
                <asp:TextBox ID="txtUserName" runat="server" placeholder="Enter Username or Email" CssClass="form-control col-xs-4"> </asp:TextBox>
                <div class="clearfix"></div>
             <br />
             
                <label>Password</label>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" placeholder="Enter Password" CssClass="form-control col-xs-4"> </asp:TextBox>
                <div class="clearfix"></div>
             <br />
             <div class="form-group text-center">
             <asp:Button ID="btnSignIn" runat="server" Text="Sign In" CssClass="btn btn-primary" />
             <a href="Register.aspx" class="btn btn-info">Register</a>
             </div>
             </div>
         </div>
    </div>
</asp:Content>
