<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userProfileHome.aspx.cs" Inherits="Internal_employee_login.userProfileHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div class="row">
            <div class="col-xs-10 col-sm-12">
                <h4>Please select an option</h4>  
                <br /><br />
                <table runat="server" class="table-condensed table-responsive">
                    <tr>
                        <td>
                            <a href="userProfileUpdate.aspx">Edit/Update Personal Details</a>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>

                        </td>
                    </tr>
                    <tr>
                        <td>
                            <a href="userProfileUpdate.aspx">Edit/Update Security details</a>
                        </td>
                    </tr>
                </table>
            </div>
            </div>
        <div class="row">
            <div class="form-group">
                <div class=" col-sm-2 control-label">
                    <br /><br /><br />
                    <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn" OnClick="Button1_Click" />
                </div>
            </div>   
        </div>
</asp:Content>
