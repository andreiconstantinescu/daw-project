<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>    
    <div class="container">
        <h1 class="text-center">Login Page</h1>
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
            <div class="col-sm-3 col-sm-offset-3">
                <asp:Button ID="Button1" runat="server" Text="Log in" OnClick="Button1_Click" />
                <asp:HyperLink ID="hlnk_register" runat="server" NavigateUrl="~/Registration.aspx">Register</asp:HyperLink>
        </div>
    </div>
        
    </form>
</body>
</html>
