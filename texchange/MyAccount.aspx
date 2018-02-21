<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="texchange.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="container">
            <div class="row">
                <div class="col-md-3">
            <div class="card">
                <div class="card-header">
                    <h2>My Account</h2>
                </div>
                <div class="card-body" style="text-align:center">
                    <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
                </div>
                <div class="card-footer">
                    <asp:LinkButton ID="btnEdit" runat="server"> Edit Credentials</asp:LinkButton>
                    <asp:LinkButton ID="btnLogout" runat="server" CssClass="pull-right">Logout</asp:LinkButton>
                    </div>
                </div>                
            </div>
                <div class="col-md-9">
            <div class="card">
                <div class="card-header">
                    <h2>My Books</h2>
                </div>
                <div class="card-body" style="text-align:center">
                    <p>You're not selling any books</p>
                    </div>
                </div>

                </div>                
            </div>
                </div>
            

      

    

</asp:Content>
