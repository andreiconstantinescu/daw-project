<%@ Page Title="NoNews | Add Article" Language="C#" AutoEventWireup="true" CodeFile="AddArticle.aspx.cs" Inherits="AddArticle" MasterPageFile="~/MasterPage.master"%>

<asp:content id="RegisterContent" contentplaceholderid="ContentPlaceHolder1" runat="server"> 
    <div>

        <asp:TextBox ID="txt_articleTitle" runat="server"></asp:TextBox>
        <asp:TextBox ID="txt_articleContent" runat="server" Rows="5" TextMode="MultiLine"></asp:TextBox>
        <asp:TextBox ID="txt_thumbnailPath" runat="server"></asp:TextBox>

    </div>
</asp:content>