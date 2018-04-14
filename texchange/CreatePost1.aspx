<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CreatePost1.aspx.cs" Inherits="texchange.CreatePost1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container col-md-8 col-lg-8 ">
        <div class="card">
            <div class="card-header text-center bg-light text-primary">
                <h1>Create Post</h1>
            </div>
            <div class="card-body">
                <h2>1. Find the Textbook</h2>
                <hr />
                <br />
                <asp:Panel ID="Panel1" runat="server" DefaultButton="LinkButton1">
                <div class=" input-group col-10 mx-auto" style="width:100%">
                <asp:TextBox ID="TxtPost" runat="server" placeholder="Title, Author, ISBN..." CssClass="form-control"  ></asp:TextBox>
                <span class="input-group-append">
                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-light" OnClick="Button1_Click" runat="server"><i class="fa fa-search" aria-hidden="true"></i></asp:LinkButton>
                </span>

                </div>
                    </asp:Panel>
                <br />
            </div>
        </div>
    </div>
</asp:Content>
