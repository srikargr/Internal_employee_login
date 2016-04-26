<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TimeSheetView.aspx.cs" Inherits="Internal_employee_login.TimeSheetView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <p>Time Sheet details for you id:</p>
    <asp:GridView ID="GridView1" CssClass="table table-bordered table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="TIMESHEET_ID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:HyperLinkField DataTextField="TIMESHEET_ID" HeaderText="Time Sheet ID" InsertVisible="false" SortExpression="TIMESHEET_ID" DataNavigateUrlFields="TIMESHEET_ID" DataNavigateUrlFormatString="AdminTimeSheetAproval.aspx?details={0}" />
                    <%--<asp:BoundField DataField="TIMESHEET_ID" HeaderText="TIMESHEET_ID" InsertVisible="False" ReadOnly="True" SortExpression="TIMESHEET_ID" />--%>
                    <asp:BoundField DataField="EMP_ID" HeaderText="EMP_ID" SortExpression="EMP_ID" />
                    <asp:BoundField DataField="TIMESHEET_STATUS" HeaderText="TIMESHEET_STATUS" SortExpression="TIMESHEET_STATUS" />
                    <asp:BoundField DataField="STARTDATE" HeaderText="START DATE" SortExpression="STARTDATE" />
                    <asp:BoundField DataField="ENDDATE" HeaderText="ENDDATE" SortExpression="ENDDATE" />
                </Columns>
            </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:myConnectionString %>" SelectCommand="SELECT [TIMESHEET_ID], [EMP_ID], [TIMESHEET_STATUS], [STARTDATE], [ENDDATE] FROM [TIMESHEET] WHERE ([EMP_ID] = @EMP_ID)">
        <SelectParameters>
            <asp:Parameter Name="EMP_ID" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
