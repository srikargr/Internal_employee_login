<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin_timesheet.aspx.cs" Inherits="Project1.Admin.Admin_timesheet" %>

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
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <form id="form1" runat="server">
        <div class="body-content">
            <div class="row">
                <div class="col-xs-10 col-sm-12">
                    <p>Following are the Time Sheets that have not yet been approved:</p>
                    <br />
                    <br />
                    <asp:Table ID="table1" CssClass="table table-responsive" runat="server">
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell>TimeSheet ID</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Employee Name</asp:TableHeaderCell>
                            <asp:TableHeaderCell>Start Date</asp:TableHeaderCell>
                            <asp:TableHeaderCell>End Date</asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                    </asp:Table>
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

