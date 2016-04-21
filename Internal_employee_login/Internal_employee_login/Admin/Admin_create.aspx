<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_create.aspx.cs" Inherits="Project1.Admin_create" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheet1.css" rel="stylesheet" />
    <link href="../css/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="row">
            <div id="headerbanner">
                <div id="homebanner"></div>
            </div>
        </div>
        <nav class="nav-left-custom navbar-left navbar-static-top navbar-fixed-bottom">
            <ul>
                <li>
                    Create user
                </li>
                <li>
                    Timesheet review
                </li>
            </ul>
        </nav>
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <form id="form1" runat="server">
        <div class="body-content">
            <div class="row">
                <div class="col-xs-10 col-sm-12">
                    <table class="table-responsive">
                        <tr>
                            <td>User email:</td>
                            <td>
                                <asp:TextBox ID="User_email" runat="server" CssClass="form-control" Width="250px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><br /></td>
                        </tr>
                        <tr>
                            <td>User ID:</td>
                            
                            <td><asp:TextBox ID="employee_id" runat="server" CssClass="form-control" Width="250px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><br /></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><asp:TextBox ID="password" runat="server" CssClass="form-control" Width="250px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td><br /></td>
                        </tr>
                        
                        <tr>
                            <td><asp:Button ID="Button1" runat="server" Text="Create" CssClass="btn" OnClick="Button1_Click" /></td>
                        </tr>
                    </table>
                </div>
                </div>
            </div>
            </form>
        <footer class="footer navbar-fixed-bottom">
            <div id="footerbanner">
                <div id="footer"></div>
            </div>
        </footer>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/npm.js"></script>
    </div>
</body>
</html>