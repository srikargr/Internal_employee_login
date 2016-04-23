<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TimeSheetdetails.aspx.cs" Inherits="Internal_employee_login.TimeSheetdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <h3>Time Sheet Details:</h3><br /><br />
    <b>Start Date:</b>
    <asp:Label ID="strt_date" runat="server" ></asp:Label><br />
    <b>End Date:</b>
    <asp:Label ID="end_date" runat="server" ></asp:Label><br />
    <b>Status:</b>
    <asp:Label ID="stauts" runat="server"></asp:Label><br /><br />
    <asp:Table ID="table1" runat="server" CssClass="table table-bordered table-responsive"></asp:Table>
    <br /><br />
    <asp:Button ID="Button1" runat="server" Text="Update" CssClass="btn" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Go Back" CssClass="btn" />
</asp:Content>
