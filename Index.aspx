<%@ Page Title="NoNews | Welcome" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<asp:content ID="ArticleContent"   contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div>

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="IndexArticlesSqlDataSource" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="content" HeaderText="content" SortExpression="content" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="IndexArticlesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [title], [content] FROM [articles]"></asp:SqlDataSource>

    </div>
</asp:content>
