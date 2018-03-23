<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CreatePost2.aspx.cs" Inherits="texchange.CreatePost2" Async="true" EnableEventValidation="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container col-md-8 col-lg-8 ">
        <div class="card">
            <div class="card-header text-center bg-light text-primary">
                <h1>Create Post</h1>
            </div>
            <div class="card-body mx-auto text-center">
                 <asp:DataList ID="dlSearch"  runat="server" RepeatColumns="4" CellSpacing="4" CellPadding="6" OnItemCommand="dlSearch_ItemCommand" >

            <ItemTemplate>
                
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%#Eval("Image") %>' width="120px" height="170px"/><br />
                <asp:LinkButton ID="LinkButton1" runat="server"><%#Eval("Title")%></asp:LinkButton><br />
                <asp:Label ID="Label1" runat="server" Text='<%#Eval("Author")%>'></asp:Label><br />
                <asp:Label ID="Label3" runat="server" Text='<%#Eval("Year")%>'></asp:Label><br />
                <asp:Label ID="Label2" runat="server" Visible="false" Text='<%#Eval("ID")%>'></asp:Label>


            </ItemTemplate>

            <ItemStyle Width="250px" />

        </asp:DataList>
            </div>
        </div>
    </div>
</asp:Content>
