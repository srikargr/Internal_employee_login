<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminTimeSheetAproval.aspx.cs" Inherits="Internal_employee_login.test2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <asp:Table class="table table-responsive table-bordered" id ="table2" runat="server">
        <asp:TableHeaderRow>
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
            
        </asp:TableHeaderRow>
    </asp:Table>
    <%--<table >
        <thead>
            <tr>
                <th>1</th>
                <th>2</th>
                <th>3</th>
                <th>4</th>
                <th>5</th>
                <th>6</th>
                <th>7</th>
                <th>8</th>
                <th>9</th>
                <th>10</th>
                <th>11</th>
                <th>12</th>
                <th>13</th>
                <th>14</th>
                <th>15</th>
            </tr>
        </thead>
        <tbody>
            <%--<tr>
                <td><asp:TextBox ID="TextBox1" runat="server" Width="20px"></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox2" runat="server" Width="20px"></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox3" runat="server" Width="20px"></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox4" runat="server" Width="20px"></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox5" runat="server" Width="20px"></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox6" runat="server" Width="20px"></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox7" runat="server" Width="20px"></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox8" runat="server" Width="20px"></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox9" runat="server" Width="20px"></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox10" runat="server" Width="20px"></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox11" runat="server" Width="20px"></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox12" runat="server" Width="20px"></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox13" runat="server" Width="20px"></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox14" runat="server" Width="20px"></asp:TextBox></td>
                <td><asp:TextBox ID="TextBox15" runat="server" Width="20px"></asp:TextBox></td>
            </tr>
        </tbody>
    </table>--%>
    <asp:Button ID="Button1" runat="server" Text="Approve" CssClass="btn" OnClick="Button1_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="Reject" CssClass="btn" OnClick="Button2_Click" />
</asp:Content>
