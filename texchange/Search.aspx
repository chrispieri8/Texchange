<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="texchange.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br />
     <div class="container">
        <div class="panel panel-success">
            <div class="pandel-heading text-center">
                <h2>Search for Book</h2>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label>Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Middle Name</label>
                    <asp:TextBox ID="txtMName" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Author</label>
                    <asp:TextBox ID="txtAuthor" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Address</label>
                    <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Address 2</label>
                    <asp:TextBox ID="txtAddress2" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>City</label>
                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>State</label>
                    <asp:TextBox ID="txtState" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Zip</label>
                    <asp:TextBox ID="txtZip" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="form-group text-center">
                    <asp:Button ID="btnSumbit" runat="server" Text="Submit"  CssClass="btn btn-success" />
                </div>
            </div>
        </div>
    </div> 
</asp:Content>
