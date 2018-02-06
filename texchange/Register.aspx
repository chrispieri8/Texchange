<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="texchange.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="panel panel-success">
            <div class="pandel-heading text-center">
                <h2>Customer Registration</h2>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label>Username</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Password</label>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Confirm Password</label>
                    <asp:TextBox ID="txtPassword2" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Email</label>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Major</label>
                    <asp:TextBox ID="txtMajor" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
                <div class="form-group text-center">
                    <asp:Button ID="btnSumbit" runat="server" Text="Submit" CssClass="btn btn-success" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
