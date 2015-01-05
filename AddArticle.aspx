<%@ Page Title="NoNews | Add Article" Language="C#" AutoEventWireup="true" CodeFile="AddArticle.aspx.cs" Inherits="AddArticle" MasterPageFile="~/MasterPage.master"%>

<asp:content id="AddArticleContent" contentplaceholderid="ContentPlaceHolder1" runat="server"> 
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3 content">
            <h3>Article Title</h3>
            <asp:TextBox ID="txt_articleTitle" runat="server" Width="100%"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3 content">
            <h3>Article Content</h3>
            <asp:TextBox ID="txt_articleContent" runat="server" Rows="5" TextMode="MultiLine" Width="100%"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3 content">
            <h3>Category</h3>
            <asp:TextBox ID="txt_category" runat="server" Width="100%"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3 content">
            <h3>Thumbnail Link</h3>
            <asp:TextBox ID="txt_thumbnailPath" runat="server" Width="100%"></asp:TextBox>
        </div>
    </div>
     <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <hr />
            <div class="text-center">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
                <asp:Button ID="btn_profile" runat="server" Text="Manage" Visible="True" PostBackUrl="~/User.aspx" />
            </div>
        </div>
    </div>
</asp:content>