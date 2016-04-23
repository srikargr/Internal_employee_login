<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserPersonalDetails.aspx.cs" Inherits="Internal_employee_login.UserPersonalDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <table class="table-responsive table" runat="server">
        <tr>
            <td>First Name:</td>
            <td>
                <asp:TextBox ID="frst_name" runat="server" CssClass="form-group form-control" Width="250px"></asp:TextBox></td>
        </tr>
        <tr class="table_self_tr">
            <td>Last Name:</td>
            <td>
                <asp:TextBox ID="last_name" runat="server" CssClass="form-group form-control" Width="250px"></asp:TextBox></td>
        </tr>
        <tr class="table_self_tr">
            <td>email ID:</td>
            <td>
                <asp:TextBox ID="email_txt" runat="server" CssClass="form-group form-control" Width="250px"></asp:TextBox></td>
        </tr>
        <tr class="table_self_tr">
            <td>Location:</td>
            <td>
                <asp:TextBox ID="location_txt" runat="server" CssClass="form-group form-control" Width="250px"></asp:TextBox></td>
        </tr>
        <tr class="table_self_tr">
            <td>Pan Card</td>
            <td>
                <asp:TextBox ID="pan_card" runat="server" CssClass="form-group form-control" Width="250px"></asp:TextBox></td>
        </tr>
        <tr class="table_self_tr">
            <td>Contact Details:</td>
            <td>
                <asp:TextBox ID="contact_num" runat="server" CssClass="form-group form-control" Width="250px"></asp:TextBox></td>
        </tr>
        <tr class="table_self_tr">
            <td>Working Group:</td>
            <td>
                <asp:TextBox ID="wrk_grp" runat="server" CssClass="form-group form-control" Width="250px"></asp:TextBox></td>
        </tr>
    </table>
    <br />

    <asp:Button ID="Button1" runat="server" Text="Next Page" CssClass="btn" OnClick="Button1_Click" />
</asp:Content>
