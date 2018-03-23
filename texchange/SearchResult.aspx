﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="SearchResult.aspx.cs" Inherits="texchange.SearchResult" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container col-md-8">
            <div class="card">
                <div class="card-header text-center">
                    <h2>Search Result</h2>
                </div>
                <div class="card-body">
                    <h2>Textbook Information</h2>
                <hr />
                <br />
                <div class="d-inline-block col-12" >
                <asp:Image ID="Image1" runat="server" Width="150px" Height="212px" CssClass="float-left pr-3"  />
                <asp:Label ID="Label1" runat="server" CssClass="font-weight-bold" Font-Size="Larger" Text="Label"></asp:Label><br />
                <asp:Label ID="Label2" runat="server" Text="By "></asp:Label><br />
                    <asp:Label ID="Label3" runat="server" Text="Retail Price "></asp:Label><br /><br />

                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Description</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
                    </li>
                    <li class="nav-item">
                    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Contact</a>
                    </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <asp:Label ID="lblDescription" runat="server" Text="By "></asp:Label>
                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <asp:Label ID="lblReview" runat="server" Text="By "></asp:Label>
                    </div>
                     <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                         <asp:Label ID="lblContact" runat="server" Text="By "></asp:Label>
                     </div>
                    </div>

                    </div>
                <br />
                    <br />
                
                    <h2>Seller Information</h2>
                    <hr />
                    <asp:Label ID="Label4" runat="server" Text="Nobody is selling this book" Visible="false" CssClass="text-muted text-center"></asp:Label>
                    
                    <asp:GridView CssClass="table table-bordered" ID="GridView1" AutoGenerateColumns="false" runat="server">
                        <Columns>                          
                           
                            <asp:TemplateField>
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
                                    Condition:<asp:Label ID="lblCondition" runat="server" Text='<%# Bind("Condition") %>'></asp:Label>
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
