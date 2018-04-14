<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CreatePost3.aspx.cs" Inherits="texchange.CreatePost3" Async="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container col-md-9 col-lg-9 ">
        <div class="card">
            <div class="card-header text-center bg-light text-primary">
                <h1>Create Post</h1>
            </div>
            <div class="card-body">
                <h2>2. Textbook Information</h2>
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
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Reviews</a>
                    </li>
                    
                    </ul>
                    <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <asp:Label ID="lblDescription" runat="server" Text="By "></asp:Label>
                    </div>
                    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                        <asp:Label ID="lblReview" runat="server" Text="By "></asp:Label>
                    </div>
                     
                    </div>

                    </div>
                <br />
                <h2 class="pt-3">3. Selling Information</h2>
                <hr />
                <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSumbit">

                <div class=" d-inline-block">
                    <label>Condition:</label>
                    <asp:DropDownList ID="DropDownCondition" runat="server" CssClass="form-control" >
                        <asp:ListItem Text="Like New"></asp:ListItem>
                        <asp:ListItem Text="Very Good"></asp:ListItem>
                        <asp:ListItem Text="Good"></asp:ListItem>
                        <asp:ListItem Text="Fair"></asp:ListItem>
                        <asp:ListItem Text="Poor"></asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <label>Price:</label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                    <br />
                    <div class="text-center">
                    <asp:Button ID="btnSumbit" runat="server" Text="Submit"  CssClass="btn btn-success text-center" OnClick="btnSumbit_Click" />
                    </div>
                    </asp:Panel>

                <br />
            </div>
        </div>
    </div>
</asp:Content>
