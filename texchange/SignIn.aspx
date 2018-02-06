<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="texchange.SignIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br />
        
     <div class="panel; container">
        <div class="panel-heading text-center">
            <h1>Sign In</h1>
        </div>
        <br />
       
         <div class="panel-body">
                <label>Username</label>
                <asp:TextBox ID="txtUserName" runat="server" placeholder="Enter Username" CssClass="form-control col-xs-4"> </asp:TextBox>
                <div class="clearfix"></div>
             <br />
             

                <label>Password</label>
                <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" placeholder="Enter Password" CssClass="form-control col-xs-4"> </asp:TextBox>
                <div class="clearfix"></div>
             <br />
             <div class="form-group text-center">
             <a href="Register.aspx" class="btn btn-primary">Register</a>
             <asp:Button ID="btnSignIn" runat="server" Text="Sign In" CssClass="btn btn-success" />
             </div>
             </div>
    </div>
</asp:Content>
