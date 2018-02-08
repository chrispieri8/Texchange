﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CreatePostConfirm.aspx.cs" Inherits="texchange.CreatePostConfirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <div class="container">
        <div class="panel panel-success">
            <div class="panel-heading text-center">
                <h2>Create a Post Conformation</h2>
            </div>
            <br />

            <div class="panel-body">
                <label class="col-md-3 col-lg-3">Title</label>
                <asp:Label ID="lblTitle" runat="server" Text="" CssClass="col-md-3 col-lg-3"></asp:Label>
                <div class="clearfix"></div> 

                <label class="col-md-3 col-lg-3">Author</label>
                <asp:Label ID="lblAuthor" runat="server" Text="" CssClass="col-md-3 col-lg-3"></asp:Label>
                <div class="clearfix"></div>

                <label class="col-md-3 col-lg-3">Coarse</label>
                <asp:Label ID="lblCoarse" runat="server" Text="" CssClass="col-md-3 col-lg-3"></asp:Label>
                <div class="clearfix"></div>

                <label class="col-md-3 col-lg-3">Department</label>
                <asp:Label ID="lblDepartment" runat="server" Text="" CssClass="col-md-3 col-lg-3"></asp:Label>
                <div class="clearfix"></div>

                <label class="col-md-3 col-lg-3">Price</label>
                <asp:Label ID="lblPrice" runat="server" Text="" CssClass="col-md-3 col-lg-3"></asp:Label>
                <div class="clearfix"></div>

                <label class="col-md-3 col-lg-3">Product Image</label>
                <asp:Label ID="lblImage" runat="server" Text="" CssClass="col-md-3 col-lg-3"></asp:Label>
                <div class="clearfix"></div>


                <div class="form-group text-center">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-warning" OnClick="btnCancel_Click" />
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success"  />
                </div>
            </div>
        </div>
    </div>
</asp:Content>