<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Internal_employee_login.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div class="row">
        <div class="col-xs-10 col-sm-12">
            <h5>
                <asp:Label ID="Label1" runat="server"></asp:Label></h5>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <div>
                <table runat="server" class="table table-responsive">
                    <tr>
                        <td>
                            <ul>
                                Update Profile
                                <br />
                                <li><a href="UserPersonalDetails.aspx">Edit/Update Personal details</a></li>
                                <li><a href="UpdateSecurityDetails.aspx">Edit/Update Secuirty details</a></li>
                            </ul>
                        </td>
                        <td>
                            <ul>
                                Time Sheets
                                <li><a href="TimeSheet_periodSelection.aspx">Create a new time sheet</a></li>
                                <li><a href="#">View time sheets</a></li>
                            </ul>
                        </td>
                    </tr>
                    <tr id ="admin_row" runat="server">
                        <td>
                            <a href="AdminTimeSheet.aspx">Approve TimeSheets</a>
                        </td>
                        <td>
                            <a href="AdminCreateUser.aspx">Create a new User</a>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <ul>
                                Bank Information
                                <li><a href="BankDetails.aspx">View/Edit Bank Details</a></li>
                            </ul>
                        </td>
                        <td>
                            <ul>
                                Others
                                <li><a href="ChangePassword.aspx">Change Password</a></li>
                                <li><a href="#">Contact Administrator</a></li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</asp:Content>
