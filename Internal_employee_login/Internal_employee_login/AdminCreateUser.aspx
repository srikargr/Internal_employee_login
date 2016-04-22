<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminCreateUser.aspx.cs" Inherits="Internal_employee_login.AdminCreateUser" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <asp:Label ID="Label1" runat="server" ></asp:Label>
    <asp:Label ID="Label2" runat="server" ></asp:Label>
    <div class="row">
        <div class="col-xs-10 col-sm-12">
            <table id="table1" class="table-responsive table" runat="server">
                <tr>
                    <td>Email:</td>
                    <td>
                        <asp:TextBox ID="User_email" runat="server" CssClass="form-control" Width="250px"></asp:TextBox></td>
                </tr>
                
                <tr>
                    <td>First Name</td>

                    <td>
                        <asp:TextBox ID="firstName" runat="server" CssClass="form-control" Width="250px"></asp:TextBox></td>
                </tr>
                                <tr>
                    <td>Last Name</td>

                    <td>
                        <asp:TextBox ID="lastName" runat="server" CssClass="form-control" Width="250px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Create User" CssClass="btn" OnClick="Button1_Click" /></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
