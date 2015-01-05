<%@ Page Title="NoNews | Article" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ArticlePage.aspx.cs" Inherits="_Default" %>

<asp:content ID="ArticleContent"   contentplaceholderid="ContentPlaceHolder1" runat="server">
    <div class="text-center">
        <h1>
            <asp:Label ID="lbl_article_title" runat="server" Text="Label"></asp:Label>
        </h1>
    </div>
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <asp:TextBox ID="txt_article_content" runat="server" BorderStyle="None" EnableTheming="False" EnableViewState="False" Height="208px" ReadOnly="True" TextMode="MultiLine" Width="100%"></asp:TextBox>
        </div>
    </div>

    <div class="row" id="commentBox" runat="server">
        <div class="col-sm-6 col-sm-offset-3">
            <h2>Add a comment</h2>
            <hr />
            <asp:TextBox ID="txt_comment" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
            <asp:Button ID="btn_submit_comment" runat="server" Text="Add comment" OnClick="btn_submit_comment_Click" />
            <asp:Label ID="lbl_result" runat="server"></asp:Label>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <hr />
            <asp:SqlDataSource ID="RepeaterSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:RegistrationConnectionString %>" SelectCommand="SELECT [username], [comment] FROM [comments]"></asp:SqlDataSource>
            <asp:Repeater ID="Repeater1" runat="server" DataSourceID="RepeaterSqlDataSource">
                <ItemTemplate>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <asp:Label ID="lbl_comment" runat="server" Text='<%# Eval ("comment") %>'></asp:Label>
                        </div>
                        <div class="panel-footer">
                            <asp:Label ID="lbl_username" runat="server" Text='<%# Eval ("username") %>'></asp:Label>
                        </div>
                    </div>
                </ItemTemplate>  
            </asp:Repeater>
        </div>
    </div>
</asp:content>

