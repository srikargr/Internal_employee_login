<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Internal_employee_login.ForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <asp:Label ID="Label1" runat="server"></asp:Label>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <b>Please enter your employee id:</b><br /><br />
            <asp:TextBox ID="emp_id" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Next" CssClass="btn" OnClick="Button1_Click" />
        </asp:View>
        <asp:View ID="View2" runat="server">
            <b>Please give answer to all the questions and then click on next to reset the password</b>
            <br />
            <br />
            Question 1:
            <asp:TextBox ID="sec_ques1" runat="server" CssClass="form-control"></asp:TextBox>
            Answer 1:
            <asp:TextBox ID="answer1" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
            Question 2:
            <asp:TextBox ID="sec_ques2" runat="server" CssClass="form-control"></asp:TextBox>
            Answer 2:
            <asp:TextBox ID="answer2" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
            Question 3:
            <asp:TextBox ID="sec_ques3" runat="server" CssClass="form-control"></asp:TextBox>
            Answer 3:
            <asp:TextBox ID="answer3" runat="server" CssClass="form-control" Width="250px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Reset" CssClass="btn" OnClick="Button2_Click" />
        </asp:View>
        <asp:View ID="View3" runat="server">
            <b>Please reset your password:</b>
            <table>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="password" TextMode="Password" runat="server" CssClass="form-group-sm form-control form-inline" Width="250px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Enter Password"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td>Confirm Password:</td>
                    <td>
                        <asp:TextBox ID="cnfrm_password" TextMode="Password" runat="server" CssClass="form-group-sm form-control form-inline" Width="250px"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="cnfrm_password" ErrorMessage="Re-enter Password"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password do not match"
                            ControlToCompare="password" ControlToValidate="cnfrm_password"></asp:CompareValidator></td>
                </tr>
            </table>
           <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Reset" OnClick="Button3_Click" CssClass="btn" />      
        </asp:View>
        <asp:View ID="View4" runat="server">
            <b>Your password has been reset.</b>
            <br />
            <br />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Click Here to login</asp:LinkButton>
        </asp:View>
    </asp:MultiView>
</asp:Content>
