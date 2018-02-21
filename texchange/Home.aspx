<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="texchange.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="jumbotron" id="jumbo" >
        <div class="container">
        <div class="row">
        <div class="col-8 col-sm-7 col-md-7 col-lg-7" style="text-align:center;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">
    <h2>Welcome to Textchange</h2>      
    <p>Buy and sell textbooks for better prices than the bookstore.</p>
      <a href="about.aspx" class="btn btn-outline-primary">Learn More</a>
    </div>
    </div>
  </div>
        </div>

    <div class="container" style="text-align:center;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">
        <h2 style="margin:20px">Getting Started</h2>
    <div class="row">
        <div class="col-sm-4" style="padding-bottom:15px">
            <i class="fa fa-search" aria-hidden="true" id="icon"></i>
            <h2>Search for Textbook</h2>
            <p>Find someone selling the book you need</p>
            <a href="Search.aspx" class="btn btn-primary">Search</a>
        </div>

        <div class="col-sm-4" style="padding-bottom:15px">
            <i class="fa fa-user" aria-hidden="true" id="icon"></i>
            <h2>Create an Account</h2>
            <p>Create an account to sell a book</p>
            <a href="Search.aspx" class="btn btn-primary">Create</a>
        </div>
      
        <div class="col-sm-4">
            <i class="fa fa-usd" aria-hidden="true" id="icon"></i>
            <h2>Sell a Textbook</h2>
            <p>List your books for cash</p>
            <a href="CreatePost.aspx" class="btn btn-primary">Sell</a>            
        </div>
    </div>
        
        </div>
</asp:Content>
