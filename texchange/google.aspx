﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="google.aspx.cs" Inherits="texchange.google" Async="true" EnableEventValidation="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/2.2.2/jquery.min.js"></script>

    <script src="js/main.js"></script>
    
    
    <div class="container col-9 text-center mx-auto">
        <h1 class="text-primary">Search Results</h1>
        
        <asp:Label ID="Label2" runat="server" Visible="false" Text="No Search Results"></asp:Label>

        <asp:DataList ID="dlSearch"  runat="server" RepeatColumns="4" CellSpacing="4" CellPadding="15" OnItemCommand="dlSearch_ItemCommand">

            <ItemTemplate>
                
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%#Eval("Image") %>' width="120px" height="170px"/><br />
                <asp:LinkButton ID="LinkButton1" runat="server"><%#Eval("Title")%></asp:LinkButton><br />
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Author")%>'></asp:Label><br />
                <asp:Label ID="Label3" runat="server" Text='<%#Eval("Year")%>'></asp:Label>
                <asp:Label ID="Label2" runat="server" Visible="false" Text='<%#Eval("ID")%>'></asp:Label>


            </ItemTemplate>

            <ItemStyle Width="250px" />

        </asp:DataList>

    </div>
</asp:Content>