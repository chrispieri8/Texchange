<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="texchange.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
      <div class="container col-md-6 col-lg-6">  
     <div class="card">
        <div class="card-header text-center bg-light">
            <h1>Login</h1>
        </div>
        <br />
       
         <div class="card-body">
             <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSignIn">
                <label>Username or Email:</label>
                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"> </asp:TextBox>
                <div class="clearfix"></div>
             <br />
             
                <label>Password:</label>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control"> </asp:TextBox>
                <div class="clearfix"></div>
             <br />

             
             <asp:Label ID="Label1" CssClass="text-danger" runat="server"></asp:Label>
             


             <div class="form-group text-center">
             <asp:Button ID="btnSignIn" runat="server" Text="Sign In" CssClass="btn btn-primary" OnClick="btnSignIn_Click" />
             <a href="Register.aspx" class="btn btn-info">Register</a>
             </div>
                 </asp:Panel>
             </div>
         </div>
    </div>
</asp:Content>
