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

    <div class="container col-md-6 col-lg-6">
        <div class="card">
            <div class="card-header text-center bg-light">
                <h2>User Registration</h2>
            </div>
            <div class="card-body" >
                <div class="form-group">
                    <label>Username:</label>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>
                
                    <label>Email:</label>

                   
                    <asp:TextBox ID="txtEmail" runat="server" CSSClass="form-control " ></asp:TextBox>
                    

                    <label>Password:</label>

                    <asp:TextBox ID="txtPassword" TextMode="Password" runat="server" CssClass="form-control "></asp:TextBox>
                    
                    <label>Confirm Password:</label>
                    <asp:TextBox ID="txtPassword2" TextMode="Password" runat="server" CssClass="form-control "></asp:TextBox>
                    
                    <label>Major:</label>
                    <asp:TextBox ID="txtMajor" runat="server" CssClass="form-control"></asp:TextBox>
                   
                </div>
                </div>
                
                <div class="form-group text-center">
                    <asp:Button ID="btnSumbit" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="btnSumbit_Click" />
                </div>



            </div>
        </div>
       
</asp:Content>
