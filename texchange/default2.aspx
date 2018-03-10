<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="default2.aspx.cs" Inherits="texchange.default2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {padding-top:0}
        .navbar{
            
            color:black;
            font-family:'Arial Rounded MT';
            transition: background-color 250ms linear;
        }
        #navSearch{
            display:none;
        }
        #menu{
            background-color:transparent !important;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript">
(function($) {          
    $(document).ready(function(){                    
        $(window).scroll(function () {
            if ($(this).scrollTop() > 100) {
                $('#menu').fadeIn(500);
                menu.setAttribute('style','background-color:#2E2E2E !important');
                $('#navSearch').css('display', 'normal');
            } else {
                menu.setAttribute('style','background-color:transparent !important');
                $('#navSearch').css('display', 'none');
            }
        });
    });
})(jQuery);
</script>
    
    <div class="jumbotron" id="jumbo2"  >
        <div class="container">
        
        <div class=" text-center" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;color:white">
    <h1>Textchange</h1>    
            <p>Exchange Textbooks </p>
    <div class=" input-group input-group-lg mx-auto col-8">
    <asp:TextBox ID="TxtPost" runat="server" placeholder="Title, Author, ISBN..." CssClass="form-control"  ></asp:TextBox>
    <span class="input-group-append">
        
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" ></asp:Button>
      </span>
            </div>
    </div>
            
            
    </div>
    
  </div>
       

    <div class="container" style="text-align:center;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">
        <h2 id="gettingStarted" style="margin-bottom:35px"><span>Getting Started</span> </h2>
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
            <a href="Login.aspx" class="btn btn-primary">Create</a>
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
