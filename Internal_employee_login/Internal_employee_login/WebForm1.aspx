<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Internal_employee_login.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    
Number of TextBoxes: <asp:TextBox runat="server" ID="CounterTextBox" 
    OnTextChanged="CounterTextBox_TextChanged" AutoPostBack="True" /><br/>
<asp:PlaceHolder runat="server" ID="TextBoxPlaceHolder" /><br/>
<asp:Button runat="server" ID="ConfirmButton" Text="Confirm" 
    OnClick="ConfirmButton_Click" /><br/>
Result: <asp:Literal runat="server" ID="ResultLiteral"/>
</asp:Content>
