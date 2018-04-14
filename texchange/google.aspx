<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="google.aspx.cs" Inherits="texchange.google" Async="true" EnableEventValidation="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/2.2.2/jquery.min.js"></script>

    <script src="js/main.js"></script>
    
    
    <div class="container col-md-8 col-lg-8 text-center mx-auto">
        <div class="card">
            <div class="card-header text-center bg-light text-primary">
                <h2>Search Results</h2>
            </div>
        <div class="card-body">
        <asp:Label ID="Label2" runat="server" Visible="false" Text="No Search Results"></asp:Label>

        <asp:DataList ID="dlSearch" CssClass="list"  runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" OnItemCommand="dlSearch_ItemCommand">

            <ItemTemplate>
                
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%#Eval("Image") %>' width="120px" height="170px"/><br />
                <asp:LinkButton ID="LinkButton1" runat="server"><%#Eval("Title")%></asp:LinkButton><br />
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Author")%>'></asp:Label><br />
                <asp:Label ID="Label3" CssClass="pb-5" runat="server" Text='<%#Eval("Year")%>'></asp:Label>
                <asp:Label ID="Label2" runat="server" Visible="false" Text='<%#Eval("ID")%>'></asp:Label>

            </ItemTemplate>

            <ItemStyle Width="200px" Height="300px" />

        </asp:DataList>
        </div>
        </div>

    </div>
</asp:Content>
