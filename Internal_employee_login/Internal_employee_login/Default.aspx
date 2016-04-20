<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Internal_employee_login.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div style="width: 500px; margin: 0 auto;" >

        <asp:Panel ID="Panel1" runat="server" CssClass="panel-body">
            <asp:Label ID="login_lbl" runat="server" CssClass="label-warning"></asp:Label><br />
            <strong>Employee ID:</strong> <asp:TextBox ID="empid_text" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
            <br />
            <strong>Password:</strong> <asp:TextBox ID="paswd_text" runat="server" CssClass="form-control" Width="250px" TextMode="Password"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn" OnClick="Button1_Click"/>
        </asp:Panel>

    </div>
</asp:Content>
