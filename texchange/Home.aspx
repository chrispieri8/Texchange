<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="texchange.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1>Welcome to Texchange</h1>      
    <p>Buy and sell textbooks for better prices than the bookstore.</p>
  </div>
</div>

    <div class="container">
    <div class="row">
        <div class="col-sm-6" style="text-align:center">
            <h2>Search for Book</h2>
            <p>Find someone selling the book you need</p>
            <a href="Search.aspx" class="btn btn-primary">Search</a>
        </div>
        
      
        <div class="col-sm-6" style="text-align:center">
            <h2>Create a Post</h2>
            <p>List your books for cash</p>
            <a href="CreatePost.aspx" class="btn btn-primary">Create</a>
            
        </div>
    </div>
        </div>
</asp:Content>
