<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="Internal_employee_login.ChangePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <b>Please make sure that your new password comprises of the following:<br />
    </b>
    <ul class="list-group">
        <li>It should be 6-8 characters in length</li>
        <li>Should have atleast 1 capital letter</li>
        <li>Should be alphanumeric</li>
    </ul>
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <br />
    <br />
    <table id="table1" runat="server" class="table table-responsive">
        <tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="password" TextMode="Password" runat="server" CssClass="form-group-sm form-control form-inline" Width="250px"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Enter Password"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Confirm Password:</td>
            <td>
                <asp:TextBox ID="cnfrm_password" TextMode="Password" runat="server" CssClass="form-group-sm form-control form-inline" Width="250px"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cnfrm_password" ErrorMessage="Re-enter Password"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password do not match"
                    ControlToCompare="password" ControlToValidate="cnfrm_password"></asp:CompareValidator></td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn" OnClick="Button1_Click" />
</asp:Content>
