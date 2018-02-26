﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="texchange.MyAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="container">
            <div class="row">
                <div class="col-md-3">
            <div class="card">
                <div class="card-header">
                    <h2>My Account</h2>
                </div>
                <div class="card-body">
                    <asp:Label ID="Label1" runat="server" Text="Username:" CssClass="font-weight-bold"></asp:Label>
                    <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text="Email:" CssClass="font-weight-bold"></asp:Label>
                    <asp:Label ID="lblEmail" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="Major:" CssClass="font-weight-bold"></asp:Label>
                    <asp:Label ID="lblMajor" runat="server" Text=""></asp:Label>
                </div>
                <div class="card-footer">
                    <asp:LinkButton ID="btnEdit" runat="server"> Edit Credentials</asp:LinkButton>
                    <asp:LinkButton ID="btnLogout" runat="server" CssClass="pull-right" OnClick="btnLogout_Click1">Logout</asp:LinkButton>
                    </div>
                </div>                
            </div>
                <div class="col-md-9">
            <div class="card">
                <div class="card-header">
                    <h2>My Books</h2>
                </div>
                <div class="card-body" style="text-align:center">
                    <asp:GridView CssClass= "col-md-12" HeaderStyle-CssClass="text-uppercase" ID="GridView1" runat="server" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit"  OnRowUpdating="GridView1_RowUpdating" >
                         <Columns>
                            <asp:CommandField ShowEditButton="true" ShowHeader="false" />
                            <asp:CommandField ShowDeleteButton="true" ShowHeader="false"  />
                        </Columns>
                    </asp:GridView>
                    
                    </div>
                </div>

                </div>                
            </div>
                </div>
            

      

    

</asp:Content>