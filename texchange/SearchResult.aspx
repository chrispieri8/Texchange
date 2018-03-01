<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="texchange.SearchResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container col-md-8">
            <div class="card">
                <div class="card-header text-center">
                    <h2>Search Result</h2>
                </div>
                <div class="card-body">
                    
                    <asp:GridView CssClass="table table-bordered" ID="GridView1" AutoGenerateColumns="false" runat="server">
                        <Columns>
                            
                            <asp:TemplateField HeaderText="Textbook" HeaderStyle-CssClass="text-center text-primary">
                                <ItemTemplate>
                                    Title:
                                    <asp:Label ID="lblTitle" runat="server" Text='<%# Bind("Title") %>'></asp:Label>
                                    <br />
                                    Author:
                                    <asp:Label ID="lblAuthor" runat="server" Text='<%# Bind("Author") %>'></asp:Label>
                                    <br />
                                    Department:
                                    <asp:Label ID="lblDepartment" runat="server" Text='<%# Bind("Department") %>'></asp:Label>
                                    <br />
                                    Condition:<asp:Label ID="lblCondition" runat="server" Text='<%# Bind("Condition") %>'></asp:Label>
                                    <br />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Seller" HeaderStyle-CssClass="text-center text-primary">
                                <ItemTemplate>
                                    Username:
                                    <asp:Label ID="lblUsername" runat="server" Text='<%# Bind("username") %>'></asp:Label>
                                    <br />
                                    Email:
                                    <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("email") %>'></asp:Label>
                                    <br />
                                    Major:
                                    <asp:Label ID="lblMajor" runat="server" Text='<%# Bind("major") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="lblPrice" runat="server" Text='<%# Bind("Price", "{0:C}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            
                        </Columns>
                        
                    </asp:GridView>
                    
                    
                    </div>
                </div>

                </div> 
</asp:Content>
