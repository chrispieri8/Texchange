<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="texchange.SearchResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="col-md-8">
            <div class="card">
                <div class="card-header text-center">
                    <h2>Search Result</h2>
                </div>
                <div class="card-body">
                    
                    <asp:GridView ID="GridView1" runat="server">
                        <Columns>
                            <asp:BoundField HeaderText="Book"/>
                            <asp:BoundField HeaderText="Seller" />
                        </Columns>
                    </asp:GridView>
                    
                    
                    </div>
                </div>

                </div> 
</asp:Content>
