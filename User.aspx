<%@ Page Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <script src="Scripts/jquery-1.9.1.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <div class="container">
        <div class="text-center">
            <h1>
                <asp:Label ID="lbl_welcome" runat="server" Text="Welcome "></asp:Label>
            </h1>
        </div>
        <asp:Button ID="btn_logout" runat="server" Text="Log out" OnClick="btn_logout_Click" />
    </div>
        
    </form>
</body>
</html>
