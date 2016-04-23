<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminTimeSheetAproval.aspx.cs" Inherits="Internal_employee_login.test2" %>
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
    <asp:Label ID="strt_date" runat="server" Text="Label"></asp:Label><br />
    <b>End Date:</b>
    <asp:Label ID="end_date" runat="server" Text="Label"></asp:Label><br /><br /><br />
    <asp:Table class="table table-responsive table-bordered" id ="table2" runat="server">
        <%--<asp:TableHeaderRow>
            <asp:TableHeaderCell>1</asp:TableHeaderCell>
            <asp:TableHeaderCell>2</asp:TableHeaderCell>
            <asp:TableHeaderCell>3</asp:TableHeaderCell>
            <asp:TableHeaderCell>4</asp:TableHeaderCell>
            <asp:TableHeaderCell>5</asp:TableHeaderCell>
            <asp:TableHeaderCell>6</asp:TableHeaderCell>
            <asp:TableHeaderCell>7</asp:TableHeaderCell>
            <asp:TableHeaderCell>8</asp:TableHeaderCell>
            <asp:TableHeaderCell>9</asp:TableHeaderCell>
            <asp:TableHeaderCell>10</asp:TableHeaderCell>
            <asp:TableHeaderCell>11</asp:TableHeaderCell>
            <asp:TableHeaderCell>12</asp:TableHeaderCell>
            <asp:TableHeaderCell>13</asp:TableHeaderCell>
            <asp:TableHeaderCell>14</asp:TableHeaderCell>
            <asp:TableHeaderCell>15</asp:TableHeaderCell>
            
        </asp:TableHeaderRow>--%>
    </asp:Table>
    
    <asp:Button ID="Button1" runat="server" Text="Approve" CssClass="btn" OnClick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Reject" CssClass="btn" OnClick="Button2_Click" />
</asp:Content>
