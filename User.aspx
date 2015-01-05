<%@ Page Title="NoNews | Profile" Language="C#" AutoEventWireup="true" CodeFile="User.aspx.cs" Inherits="User" MasterPageFile="~/MasterPage.master" %>

<asp:content id="UserContent" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <h1>
            <asp:Label ID="lbl_welcome" runat="server" Text="Welcome, "></asp:Label>
        </h1>
    </div>
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <hr />
            <div>
                <h3>Available commands:</h3>
                <div>
                    <asp:Button ID="btn_logout" runat="server" Text="Log out" Visible="True" OnClick="btn_logout_Click" />
                    <asp:Button ID="btn_manage" runat="server" Text="Manage" Visible="False" PostBackUrl="~/Management.aspx" />
                    <asp:Button ID="btn_seeNews" runat="server" Text="What's new" Visible="True" PostBackUrl="~/Index.aspx" />
                    <div>
                        <asp:Button ID="btn_addArticle" runat="server" Text="Add article" Visible="False" PostBackUrl="~/AddArticle.aspx" />
                        <asp:Button ID="btn_manageArticles" runat="server" Text="Manage Articles" Visible="False" PostBackUrl="~/Articles.aspx" />

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:content>