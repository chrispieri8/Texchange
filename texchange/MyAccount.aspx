<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="texchange.MyAccount" %>
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
                <div class="card-body table-responsive">
                    <asp:GridView CssClass= " table table-bordered" AutoGenerateEditButton="True" ID="GridView1" runat="server" HeaderStyle-CssClass="text-primary text-left bg-light" RowStyle-CssClass="text-left"    OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit"  OnRowUpdating="GridView1_RowUpdating" >
                         <Columns>
                            
                             <asp:TemplateField ShowHeader="False">
                                 <ItemTemplate>
                                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Are you sure you want to delete?'); "></asp:LinkButton>
                                 </ItemTemplate>
                             </asp:TemplateField>
                            
                        </Columns>
                        
                        <AlternatingRowStyle CssClass="bg-light text-left" />

<HeaderStyle CssClass="text-primary text-left bg-light"></HeaderStyle>

<RowStyle CssClass="text-left"></RowStyle>
                    </asp:GridView>
                    
                    </div>
                </div>

                </div>                
            </div>
                </div>
            

      

    

</asp:Content>
