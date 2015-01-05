<%@ Page Title="NoNews | Login" Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" MasterPageFile="~/MasterPage.master"%>

<asp:content id="LoginContent" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <h1 class="text-center">Login Page</h1>
            <hr />
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3 col-sm-offset-3">
            <span>username</span>
        </div>
        <div class="col-sm-6">
            <asp:TextBox ID="txtb_login_username" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtb_login_username" ErrorMessage="username is required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3 col-sm-offset-3">
            <span>password</span>
        </div>
        <div class="col-sm-6">
            <asp:TextBox ID="txtb_login_password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtb_login_password" ErrorMessage="password is also required" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <hr />
            <div class="text-center">
                <asp:Button ID="Button1" runat="server" Text="Log in" OnClick="Button1_Click" />
                <asp:HyperLink ID="hlnk_register" runat="server" NavigateUrl="~/Registration.aspx">Register</asp:HyperLink>
            </div>
        </div>
    </div>
</asp:content>
