<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminTimeSheet.aspx.cs" Inherits="Internal_employee_login.Admin.AdminTimeSheet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div class="row">
        <div class="col-xs-10 col-sm-12">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <p>Following are the Time Sheets that have not yet been approved:</p>
            <br />
            <br />
            <asp:Table ID="table1" CssClass="table table-responsive" runat="server">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>TimeSheet ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Employee Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Start Date</asp:TableHeaderCell>
                    <asp:TableHeaderCell>End Date</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>
        </div>
    </div>
</asp:Content>
