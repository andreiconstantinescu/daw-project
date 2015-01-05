<%@ Page Title="NoNews | Welcome" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="_Default" %>

<asp:content ID="ArticleContent"   contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div>
        <pre>
            Welcome!
            `NoNews` is the ultimate tool for keeping and spreading short articles across the world. It was prodly coded in ASP.Net in ~30 hours (check the log <a href="https://github.com/andreiconstantinescu/daw-project">here</a>) without knowing anything about this "marvellous" framework.
            
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login.aspx" >Login</asp:HyperLink>
        </pre>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataSourceID="IndexArticlesSqlDataSource" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%" DataKeyNames="title">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" ReadOnly="True" />
                <asp:BoundField DataField="content" HeaderText="content" SortExpression="content" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:BoundField DataField="thumbnail" HeaderText="thumbnail" SortExpression="thumbnail" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="IndexArticlesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [title], [content], [category], [thumbnail] FROM [articles]"></asp:SqlDataSource>

    </div>
</asp:content>
