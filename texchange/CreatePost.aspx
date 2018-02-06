<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CreatePost.aspx.cs" Inherits="texchange.CreatePost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container">
        <div class="panel panel-success">
            <div class="pandel-heading text-center">
                <h2>Create a Post</h2>
            </div>
            <div class="panel-body">
                <div class="form-group">
                    <label>Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Author</label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Price</label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Quantity</label>
                    <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Department ID</label>
                    <asp:TextBox ID="txtDepartmentID" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Category ID</label>
                    <asp:TextBox ID="txtCategoryID" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Product Image</label>
                    <asp:FileUpload ID="FileUploadImage" CssClass="form-control" runat="server" />
                    

                </div>
                <div class="form-group text-center">
                    <asp:Button ID="btnSumbit" runat="server" Text="Submit"  CssClass="btn btn-success" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
