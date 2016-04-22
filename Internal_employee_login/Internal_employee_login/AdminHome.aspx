<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="Internal_employee_login.AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div class="row">
        <div class="col-xs-10 col-sm-12">
            <a href="AdminCreateUser.aspx">Create a new user</a><br />
            <a href="AdminTimeSheet.aspx">Approve Timesheets</a><br />
        </div>
    </div>
</asp:Content>
