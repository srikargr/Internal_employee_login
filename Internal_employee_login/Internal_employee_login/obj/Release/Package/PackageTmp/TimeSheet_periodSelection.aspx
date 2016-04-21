<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="TimeSheet_periodSelection.aspx.cs" Inherits="Internal_employee_login.TimeSheet_periodSelection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContentPlaceHolder" runat="server">
    <div class="row">
        <div class="col-xs-10 col-sm-12">
            <h4>Please select the time period for filling time sheet</h4>
        </div>
    </div>

    <div class="row">

        <div class="form-group">
            <div class=" col-sm-2 control-label">Start Date:</div>
            <div class="col-xs-12 col-sm-6">
                <asp:TextBox ID="Start_date" runat="server" CssClass="input-sm input-group-sm"></asp:TextBox>
                <asp:ImageButton ID="cal" runat="server" ImageUrl="~/images/date_picker1.gif" OnClick="cal_Click" />

                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnDayRender="Calendar1_DayRender" Width="200px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </div>
        </div>

    </div>
    <div class="row">

        <div class="form-group">
            <div class="col-sm-2">End Date:</div>
            <div class="col-xs-12 col-sm-6">
                <asp:TextBox ID="End_date" runat="server" CssClass="input-sm input-group-sm"></asp:TextBox>
                <asp:ImageButton ID="cal2" runat="server" ImageUrl="~/images/date_picker1.gif" OnClick="cal2_Click" />

                <asp:Calendar ID="Calendar2" runat="server" OnSelectionChanged="Calendar2_SelectionChanged" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnDayRender="Calendar2_DayRender" Width="200px">
                    <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                    <NextPrevStyle VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#808080" />
                    <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <SelectorStyle BackColor="#CCCCCC" />
                    <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                    <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <WeekendDayStyle BackColor="#FFFFCC" />
                </asp:Calendar>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="form-group">
            <div class=" col-sm-2 control-label">
                <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="btn" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
</asp:Content>
