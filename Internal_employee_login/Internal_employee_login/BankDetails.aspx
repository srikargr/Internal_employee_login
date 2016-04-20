<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="BankDetails.aspx.cs" Inherits="Internal_employee_login.BankDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div class="col-xs-10 col-sm-12">
        <p class="help-block">
            <strong>Please follow the instructions to set up your Direct Deposit</strong>
        </p>
        <table runat="server" class="table table-responsive">
            <thead>
                <tr>
                    <th>Bank Name</th>
                    <th>IFSC Code</th>
                    <th>Account Type</th>
                    <th>Account Number</th>
                    <th>Name on the Account</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <asp:TextBox ID="Bnk_name" runat="server" CssClass="form-group-sm form-control"></asp:TextBox></td>
                    <td>
                        <asp:TextBox ID="Ifsc_code" runat="server" CssClass="form-group-sm form-control"></asp:TextBox></td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="dropdown form-control">
                            <asp:ListItem Value=""></asp:ListItem>
                            <asp:ListItem Value="1">Current</asp:ListItem>
                            <asp:ListItem Value="2">Savings</asp:ListItem>
                        </asp:DropDownList></td>
                    <td>
                        <asp:TextBox ID="Accnt_num" runat="server" CssClass="form-group-sm form-control"></asp:TextBox>
                    </td>

                    <td>
                        <asp:TextBox ID="Account_name" runat="server" CssClass="form-group-sm form-control"></asp:TextBox></td>
                </tr>
            </tbody>
        </table>
        <p>
            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn btn-success" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:Label ID="err_msg" runat="server"></asp:Label>
        </p>
    </div>
    </div>
</asp:Content>
