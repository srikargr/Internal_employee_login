<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminCreateUser.aspx.cs" Inherits="Internal_employee_login.AdminCreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <div class="row">
        <div class="col-xs-10 col-sm-12">
            <table class="table-responsive">
                <tr>
                    <td>User email:</td>
                    <td>
                        <asp:TextBox ID="User_email" runat="server" CssClass="form-control" Width="250px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>User ID:</td>

                    <td>
                        <asp:TextBox ID="employee_id" runat="server" CssClass="form-control" Width="250px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="password" runat="server" CssClass="form-control" Width="250px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <br />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Create" CssClass="btn" OnClick="Button1_Click" /></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
