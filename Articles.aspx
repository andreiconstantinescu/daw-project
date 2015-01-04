<%@ Page Title="NoNews | Articles" Language="C#" AutoEventWireup="true" CodeFile="Articles.aspx.cs" Inherits="AddArticle" MasterPageFile="~/MasterPage.master"%>

<asp:content id="ArticlesContent" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div>

        <asp:SqlDataSource ID="ArticlesSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" DeleteCommand="DELETE FROM [articles] WHERE [Id] = @Id" InsertCommand="INSERT INTO [articles] ([Id], [title], [content], [thumbnail]) VALUES (@Id, @title, @content, @thumbnail)" SelectCommand="SELECT * FROM [articles]" UpdateCommand="UPDATE [articles] SET [title] = @title, [content] = @content, [thumbnail] = @thumbnail WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Id" Type="String" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="content" Type="String" />
                <asp:Parameter Name="thumbnail" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="content" Type="String" />
                <asp:Parameter Name="thumbnail" Type="String" />
                <asp:Parameter Name="Id" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="ArticlesSqlDataSource" Width="100%">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="content" HeaderText="content" SortExpression="content" />
                <asp:BoundField DataField="thumbnail" HeaderText="thumbnail" SortExpression="thumbnail" />
            </Columns>
        </asp:GridView>

    </div>

<asp:EntityDataSource ID="EntityDataSource1" runat="server">
</asp:EntityDataSource>

</asp:content>
