<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" MasterPageFile="~/MasterPage.master"%>

<asp:content id="RegisterContent" contentplaceholderid="ContentPlaceHolder1" runat="server">
    <h1 class="text-center">
        Registration
    </h1>
    <div class="row">
        <div class="col-sm-3 col-sm-offset-3">
            <span>username</span>
        </div>
        <div class="col-sm-6">
            <asp:TextBox ID="txtb_username" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="username is required" ForeColor="#CC0000" ControlToValidate="txtb_username"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3 col-sm-offset-3">
            <span>email</span>
        </div>
        <div class="col-sm-6">
            <asp:TextBox ID="txtb_email" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="email is required" ForeColor="#CC0000" ControlToValidate="txtb_email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="that is not an email" ForeColor="#CC0000" ControlToValidate="txtb_email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3 col-sm-offset-3">
            <span>password</span>
        </div>
        <div class="col-sm-6">
            <asp:TextBox ID="txtb_pass" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="password is required" ForeColor="#CC0000" ControlToValidate="txtb_pass"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3 col-sm-offset-3">
            <span>repeat password</span>
        </div>
        <div class="col-sm-6">
            <asp:TextBox ID="txtb_pass2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="confirmation is required" ForeColor="#CC0000" ControlToValidate="txtb_pass2"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtb_pass" ControlToValidate="txtb_pass2" ErrorMessage="passwords are not the same" ForeColor="#CC0000"></asp:CompareValidator>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3 col-sm-offset-3">
            <span>role</span>
        </div>
        <div class="col-sm-6">
            <asp:DropDownList ID="dlst_role" runat="server">
                <asp:ListItem Selected="True">choose role</asp:ListItem>
                <asp:ListItem>admin</asp:ListItem>
                <asp:ListItem>editor</asp:ListItem>
                <asp:ListItem>user</asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="select a role" ForeColor="#CC0000" ControlToValidate="dlst_role" InitialValue="choose role"></asp:RequiredFieldValidator>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3 col-sm-offset-3">
            <asp:Button ID="btn_register" runat="server" Text="Register" OnClick="btn_register_Click" />
            <input id="btn_rst" type="reset" value="Reset" /></div>
    </div>
</asp:content>    