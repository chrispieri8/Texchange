<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="CreatePostConfirm.aspx.cs" Inherits="texchange.CreatePostConfirm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container col-md-9 col-lg-8">
        <div class="card">
            <div class="card-header text-center bg-success" style="color:white">
                <h2>Create a Post Confirmation</h2>
            </div>
            

            <div class="card-body">
                <label class="col-md-3 col-lg-3">Title:</label>
                <asp:Label ID="lblTitle" runat="server" Text="" CssClass="col-md-3 col-lg-3"></asp:Label>
                <div class="clearfix"></div> 

                <label class="col-md-3 col-lg-3">Author:</label>
                <asp:Label ID="lblAuthor" runat="server" Text="" CssClass="col-md-3 col-lg-3"></asp:Label>
                <div class="clearfix"></div>

                <label class="col-md-3 col-lg-3">Course:</label>
                <asp:Label ID="lblCourse" runat="server" Text="" CssClass="col-md-3 col-lg-3"></asp:Label>
                <div class="clearfix"></div>

                <label class="col-md-3 col-lg-3">Department:</label>
                <asp:Label ID="lblDepartment" runat="server" Text="" CssClass="col-md-3 col-lg-3"></asp:Label>
                <div class="clearfix"></div>

                <label class="col-md-3 col-lg-3">Price:</label>
                <asp:Label ID="lblPrice" runat="server" Text="" CssClass="col-md-3 col-lg-3"></asp:Label>
                <div class="clearfix"></div>

                <label class="col-md-3 col-lg-3">Product Image:</label>
                <asp:Label ID="lblImage" runat="server" Text="" CssClass="col-md-3 col-lg-3"></asp:Label>
                <div class="clearfix"></div>


                <div class="form-group text-center">
                     <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSubmit_Click"  />
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-warning" OnClick="btnCancel_Click" />
                   
                </div>
            </div>
        </div>
    </div>
</asp:Content>
