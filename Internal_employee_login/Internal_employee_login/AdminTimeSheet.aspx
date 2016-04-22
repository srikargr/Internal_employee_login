<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminTimeSheet.aspx.cs" Inherits="Internal_employee_login.Admin.AdminTimeSheet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div class="row">
        <div class="col-xs-10 col-sm-12">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <p>Following are the Time Sheets that have not yet been approved:</p>
            <br />
            <br />
            <%--<asp:Table ID="table1" CssClass="table table-responsive" runat="server">
                <asp:TableHeaderRow>
                    <asp:TableHeaderCell>TimeSheet ID</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Employee Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell>Start Date</asp:TableHeaderCell>
                    <asp:TableHeaderCell>End Date</asp:TableHeaderCell>
                </asp:TableHeaderRow>
            </asp:Table>--%>
            <asp:GridView ID="GridView1" CssClass="table table-borderedtable-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="TIMESHEET_ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:HyperLinkField DataTextField="TIMESHEET_ID" HeaderText="Time Sheet ID" InsertVisible="false" SortExpression="TIMESHEET_ID" DataNavigateUrlFields="TIMESHEET_ID" DataNavigateUrlFormatString="AdminTimeSheetAproval.aspx?details={0}" />
                    <%--<asp:BoundField DataField="TIMESHEET_ID" HeaderText="TIMESHEET_ID" InsertVisible="False" ReadOnly="True" SortExpression="TIMESHEET_ID" />--%>
                    <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" SortExpression="EMP_ID" />
                    <asp:BoundField DataField="TIMESHEET_STATUS" HeaderText="TIMESHEET_STATUS" SortExpression="TIMESHEET_STATUS" />
                    <asp:BoundField DataField="STARTDATE" HeaderText="START DATE" SortExpression="STARTDATE" />
                    <asp:BoundField DataField="ENDDATE" HeaderText="ENDDATE" SortExpression="ENDDATE" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:emp_login_capstoneConnectionString %>" SelectCommand="SELECT [TIMESHEET_ID], [EMP_ID], [TIMESHEET_STATUS], [STARTDATE], [ENDDATE] FROM [TIMESHEET] WHERE ([TIMESHEET_STATUS] = @TIMESHEET_STATUS)">
                <SelectParameters>
                    <asp:Parameter DefaultValue="PENDING" Name="TIMESHEET_STATUS" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
