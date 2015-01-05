<%@ Page Title="NoNews | Articles" Language="C#" AutoEventWireup="true" CodeFile="Articles.aspx.cs" Inherits="AddArticle" MasterPageFile="~/MasterPage.master"%>

<asp:content id="ArticlesContent" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Button ID="btn_profile" runat="server" Text="Profile" Visible="True" PostBackUrl="~/User.aspx" />
        <asp:SqlDataSource ID="ArticlesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [articles] WHERE [title] = @title" InsertCommand="INSERT INTO [articles] ([Id], [title], [content], [thumbnail], [category]) VALUES (@Id, @title, @content, @thumbnail, @category)" SelectCommand="SELECT * FROM [articles]" UpdateCommand="UPDATE [articles] SET [Id] = @Id, [content] = @content, [thumbnail] = @thumbnail, [category] = @category WHERE [title] = @title">
            <DeleteParameters>
                <asp:Parameter Name="title" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="content" Type="String" />
                <asp:Parameter Name="thumbnail" Type="String" />
                <asp:Parameter Name="category" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="content" Type="String" />
                <asp:Parameter Name="thumbnail" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="title" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="title" DataSourceID="ArticlesSqlDataSource" Width="100%">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" ReadOnly="True" />
                <asp:BoundField DataField="content" HeaderText="content" SortExpression="content" />
                <asp:BoundField DataField="thumbnail" HeaderText="thumbnail" SortExpression="thumbnail" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
            </Columns>
        </asp:GridView>

    </div>

</asp:content>
