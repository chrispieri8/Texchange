<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CreatePost.aspx.cs" Inherits="texchange.CreatePost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class="container col-md-9 col-lg-8 ">
        <div class="card">
            <div class="card-header text-center bg-light">
                <h2>Create a Post</h2>
            </div>
            <div class="card-body">
                <div class="form-group">
                    <label>Title:</label>
                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Author:</label>
                    <asp:TextBox ID="txtAuthor" runat="server" CssClass="form-control"></asp:TextBox>

                    <label>Condition:</label>
                    <asp:DropDownList ID="DropDownCondition" runat="server" CssClass="form-control" >
                        <asp:ListItem Text="Like New"></asp:ListItem>
                        <asp:ListItem Text="Very Good"></asp:ListItem>
                        <asp:ListItem Text="Good"></asp:ListItem>
                        <asp:ListItem Text="Fair"></asp:ListItem>
                        <asp:ListItem Text="Poor"></asp:ListItem>
                    </asp:DropDownList>

                    <label>Department:</label>
                    <asp:TextBox ID="txtDepartment" runat="server" CssClass="form-control"></asp:TextBox>
                    

                    <label>Price:</label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>

                   

                    <label>Product Image:</label>
                    <asp:FileUpload ID="FileUploadImage" CssClass="form-control" runat="server" />
                    

                </div>
                <div class="form-group text-center">
                    <asp:Button ID="btnSumbit" runat="server" Text="Submit"  CssClass="btn btn-success" OnClick="btnSumbit_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
