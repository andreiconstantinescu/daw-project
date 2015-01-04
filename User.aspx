<%@ Page Title="NoNews | Profile" Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" MasterPageFile="~/MasterPage.master" %>

<asp:content id="UserContent" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <h1>
            <asp:Label ID="lbl_welcome" runat="server" Text="Welcome, "></asp:Label>
        </h1>
    </div>
    <asp:Button ID="btn_logout" runat="server" Text="Log out" OnClick="btn_logout_Click" />
</asp:content>