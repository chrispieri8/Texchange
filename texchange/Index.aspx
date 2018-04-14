<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="texchange.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        body {padding-top:0}
        .navbar{
            
           // color:black;
            font-family:'Arial Rounded MT';
            transition: background-color 250ms linear;
        }
        #navSearch{
          display:none;
        }
        #menu{
           // background-color:transparent !important;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript">
  /*  (function($) {          
        $(document).ready(function () {
            $(window).scroll(function () {
                if ($(this).scrollTop() > 180) {
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
  
  */
</script>

    <script type="text/javascript"  lang="js">
 $(document).ready(function(){
 
    $(".collapse").on('show.bs.collapse', function(){
        alert('The collapsible content is about to be shown.');
    });
    $("#collapsibleNavbar").on('shown.bs.collapse', function () {
        alert('The collapsible content is now fully shown.');
    });
    $(".collapse").on('hide.bs.collapse', function(){
        alert('The collapsible content is about to be hidden.');
    });
    $(".collapse").on('hidden.bs.collapse', function(){
        alert('The collapsible content is now hidden.');
    });
 });
     </script>

 

    <script type="text/javascript"  lang="js">
        $(function()
        {
            $("#<%=TxtPost.ClientID %>").keydown(function (e) {
                if (e.which == 13) {
                    document.getElementById("LinkButton1").click();
                   // __doPostback('LinkButton1', 'OnClick')


                }
           });
                    });
    </script>
    
    <div id="jumbo2">
    <div class="container">
      <br />   
        <div class="text-center" style="font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;color:white">
    <h1>Textbook Exchange For Hofstra</h1>    
            <p>Find textbooks being sold by students around you </p>
            <asp:Panel ID="Panel1" runat="server" DefaultButton="LinkButton1">
    <div class=" input-group input-group-lg mx-auto col-md-8">
    <asp:TextBox ID="TxtPost" runat="server" placeholder="Title, Author, ISBN..." CssClass="form-control" ></asp:TextBox>
    <span class="input-group-append">
        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-light" OnClick="LinkButton1_Click" runat="server"><i class="fa fa-search" aria-hidden="true"></i></asp:LinkButton>
      </span>
            </div>
                </asp:Panel>
    </div>
    </div>
  </div>

    <div class="container" style="text-align:center;font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">
        <div id="gettingStarted">
        <h1><span>Welcome to Textchanged</span></h1>
            </div>
        <p class="col-11 text-center mx-auto">Textchanged is a textbook exchange website made by Hofstra students for Hofstra students. 
            Are you tired of spending hundreds of dollars on textbooks at the start of each semester just to have them collect dust by the end?
            Well worry no longer, you just found the solution! On Textchanged you can buy and sell textbooks directly with students for better prices than you find at the bookstore.</p>
        <a id="ff" href="about.aspx" class="btn btn-outline-primary mx-auto">Learn More</a> 
        
        <br />
        <hr />

        <div id="gettingStarted" style="padding-bottom:20px">
        <h1><span>Getting Started</span> </h1>
            </div>
    <div class="row">
        <div class="col-sm-4" style="padding-bottom:35px">
            <i class="fa fa-search" aria-hidden="true" id="icon"></i>
            <h3 style="padding-bottom:5px">Search for Textbook</h3>
            <p class="col-11 mx-auto">Don't waste your money at the bookstore, buy books from students.</p>
            <asp:Button ID="Button1" CssClass="btn btn-primary" Width="80px" runat="server" Text="Search" OnClick="Button1_Click" />
        </div>

        <div class="col-sm-4" style="padding-bottom:35px">
            <i class="fa fa-user" aria-hidden="true" id="icon"></i>
            <h3 style="padding-bottom:5px">Create an Account</h3>
            <p class="col-11 mx-auto">You'll need to create an account before you can start selling books.</p>
            <a href="Login.aspx" class="btn btn-primary" style="width:80px">Create</a>
        </div>
      
        <div class="col-sm-4">
            <i class="fa fa-usd" aria-hidden="true" id="icon"></i>
            <h3 style="padding-bottom:5px">Sell a Textbook</h3>
            <p class="col-11 mx-auto">Knowledge is great, but money is better. Sell your textbooks.</p>
            <a id="ff" href="CreatePost1.aspx" class="btn btn-primary" style="width:80px">Sell</a>            
        </div>
    </div>
        
        </div>
</asp:Content>
