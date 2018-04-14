<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="texchange.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container" style="text-align:center">
    <div>
    <asp:RegularExpressionValidator  ID="regEmail" runat="server" Display="Dynamic" ErrorMessage="<strong>Warning: </strong>Invalid Email Format" ForeColor="Red" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
    </div>
       <div>
        <asp:CompareValidator  ID="CompareValidator1" runat="server" Display="Dynamic" ControlToValidate="txtPassword2" ControlToCompare="txtPassword" ErrorMessage="<strong>Warning: </strong>Passwords don't match" ForeColor="Red"></asp:CompareValidator>
      </div>
       <div>
            <asp:CustomValidator  Display="Dynamic" ID="CustomValidator1" ForeColor="Red" runat="server"></asp:CustomValidator>
       </div>
       <div>
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ForeColor="Red" ControlToValidate="txtPassword" ErrorMessage="<strong>Warning: </strong> Password must be atleast 8 characters, 1 uppercase and lowercase letter, 1 special character, 1 number" ValidationExpression="(?=^.{8,}$)(?=.*\d)(?=.*[!@#$%^&*]+)(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$"></asp:RegularExpressionValidator>

       </div>
   </div>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsername"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail"></asp:RequiredFieldValidator>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtPassword"></asp:RequiredFieldValidator>

    <div class="container col-md-6 col-lg-6">
        <div class="card">
            <div class="card-header text-center bg-light">
                <h2>User Registration</h2>
            </div>
                <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSumbit">

            <div class="card-body" >
                <div class="form-group">
                    <label>Username<span style="color:red"> *</span></label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                
                    <label>Email<span style="color:red"> *</span></label>

                   
                    <asp:TextBox ID="txtEmail" runat="server" CSSClass="form-control " ></asp:TextBox>
                    

                    <label>Password<span style="color:red"> *</span></label>

                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control "></asp:TextBox>
                    
                    <label>Confirm Password<span style="color:red"> *</span></label>
                    <asp:TextBox ID="txtPassword2" TextMode="Password" runat="server" CssClass="form-control "></asp:TextBox>
                    
                    <label>Major</label>
                    <asp:TextBox ID="txtMajor" runat="server" CssClass="form-control"></asp:TextBox>
                   
                </div>
                    
                </div>
                
                <div class="form-group text-center">
                    <asp:Button ID="btnSumbit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSumbit_Click" />
                </div>
            </asp:Panel>



            </div>
        </div>
       
</asp:Content>
