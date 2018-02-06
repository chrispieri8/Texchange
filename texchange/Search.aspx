﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="texchange.Search" %>
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
                    <label>Title</label>
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Author</label>
                    <asp:TextBox ID="txtAuthor" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Coarse</label>
                    <asp:TextBox ID="txtCoarse" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Department</label>
                    <asp:TextBox ID="txtDepartment" runat="server" CssClass="form-control"></asp:TextBox>

                </div>
                <div class="form-group text-center">
                    <asp:Button ID="btnSumbit" runat="server" Text="Submit"  CssClass="btn btn-success" />
                </div>
            </div>
        </div>
    </div> 
</asp:Content>
