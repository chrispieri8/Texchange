<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="google.aspx.cs" Inherits="texchange.google" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/2.2.2/jquery.min.js"></script>

    <script src="js/main.js"></script>
    
    
    <div class="container col-9 text-center mx-auto">
        <h1 class="text-primary">Search Results</h1>

        <asp:DataList ID="dlSearch"  runat="server" RepeatColumns="4" CellSpacing="4" CellPadding="15">

            <ItemTemplate>
                
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%#Eval("Url") %>'><img src='<%#Eval("Image") %>' width="120px" height="170px"/></asp:HyperLink><br />

                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#Eval("Url") %>'><%#Eval("Title")%></asp:HyperLink><br />

                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Author")%>'></asp:Label><br />
                <asp:Label ID="Label3" runat="server" Text='<%#Eval("Year")%>'></asp:Label>


            </ItemTemplate>

            <ItemStyle Width="250px" />

        </asp:DataList>

    </div>
</asp:Content>
