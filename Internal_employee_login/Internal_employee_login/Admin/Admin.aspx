<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Project1.Admin" %>

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
        <form id="form1" runat="server">
        <div class="body-content">
            <div class="row">
                <div class="col-xs-10 col-sm-12">
                    aDMIN HOMEPAGE
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/Admin.aspx.designer.cs">HyperLink</asp:HyperLink>
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
