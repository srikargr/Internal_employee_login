<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UpdateSecurityDetails.aspx.cs" Inherits="Internal_employee_login.UpdateSecurityDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <table id="secquestion" runat="server" class="table table-condensed">
        <%--<tr>
            <td>Password:</td>
            <td>
                <asp:TextBox ID="password" TextMode="Password" runat="server" CssClass="form-group-sm form-control form-inline" Width="250px"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="password" ErrorMessage="Enter Password"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td>Confirm Password:</td>
            <td>
                <asp:TextBox ID="cnfrm_password" TextMode="Password" runat="server" CssClass="form-group-sm form-control form-inline" Width="250px"></asp:TextBox></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="cnfrm_password" ErrorMessage="Re-enter Password"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password do not match"
                    ControlToCompare="password" ControlToValidate="cnfrm_password"></asp:CompareValidator></td>
        </tr>--%>
        <tr>
            <td>Security Question 1:</td>
            <td>
                <asp:DropDownList ID="sec_ques1" runat="server" CssClass="dropdown form-control">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="1">What was your favourite book?</asp:ListItem>
                    <asp:ListItem Value="2">what is your favourite place?</asp:ListItem>
                    <asp:ListItem Value="3">Your nick name?</asp:ListItem>
                    <asp:ListItem Value="4">Your pet's name?</asp:ListItem>
                    <asp:ListItem Value="5">Name of your role model?</asp:ListItem>
                </asp:DropDownList></td>
            <%--<td><asp:TextBox ID="sec_ques1" runat="server" CssClass="form-group-sm form-control form-inline" Width="250px"></asp:TextBox></td>--%>
        </tr>
        <tr>
            <td>Answer:</td>
            <td>
                <asp:TextBox ID="Answer1" runat="server" CssClass="form-group-sm form-control form-inline" Width="250px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Security Question 2:</td>
            <td>
                <asp:DropDownList ID="sec_ques2" runat="server" CssClass="dropdown form-control">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="1">What was your favourite book?</asp:ListItem>
                    <asp:ListItem Value="2">what is your favourite place?</asp:ListItem>
                    <asp:ListItem Value="3">Your nick name?</asp:ListItem>
                    <asp:ListItem Value="4">Your pet's name?</asp:ListItem>
                    <asp:ListItem Value="5">Name of your role model?</asp:ListItem>
                </asp:DropDownList></td>
            <%--<td><asp:TextBox ID="sec_ques2" runat="server" CssClass="form-group-sm form-control form-inline" Width="250px"></asp:TextBox></td>--%>
        </tr>
        <tr>
            <td>Answer:</td>
            <td>
                <asp:TextBox ID="Answer2" runat="server" CssClass="form-group-sm form-control form-inline" Width="250px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Security Question 3:</td>
            <td>
                <asp:DropDownList ID="sec_ques3" runat="server" CssClass="dropdown form-control">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem Value="1">What was your favourite book?</asp:ListItem>
                    <asp:ListItem Value="2">what is your favourite place?</asp:ListItem>
                    <asp:ListItem Value="3">Your nick name?</asp:ListItem>
                    <asp:ListItem Value="4">Your pet's name?</asp:ListItem>
                    <asp:ListItem Value="5">Name of your role model?</asp:ListItem>
                </asp:DropDownList></td>
            <%--<td><asp:TextBox ID="sec_ques3" runat="server" CssClass="form-group-sm form-control form-inline" Width="250px"></asp:TextBox></td>--%>
        </tr>
        <tr>
            <td>Answer:</td>
            <td>
                <asp:TextBox ID="Answer3" runat="server" CssClass="form-group-sm form-control form-inline" Width="250px"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" CssClass=" btn right" /></td>
        </tr>
    </table>
</asp:Content>
