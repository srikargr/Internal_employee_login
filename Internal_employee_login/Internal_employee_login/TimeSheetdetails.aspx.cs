using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Internal_employee_login
{
    public partial class TimeSheetdetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s1 = Request.QueryString[0];

            string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection dbConnection = new SqlConnection(conStr);
            SqlCommand sqlcommand;
            SqlDataReader reader;

            try
            {
                dbConnection.Open();
                string query = "SELECT STARTDATE, ENDDATE,TIMESHEET_STATUS FROM TIMESHEET WHERE TIMESHEET_ID = '" + s1 + "'";
                sqlcommand = new SqlCommand(query, dbConnection);
                reader = sqlcommand.ExecuteReader();
                if (reader.Read())
                {
                    strt_date.Text = Convert.ToDateTime(reader["startdate"]).Date.ToString("d");
                    end_date.Text = Convert.ToDateTime(reader["enddate"]).Date.ToString("d");
                    stauts.Text = reader["TIMESHEET_STATUS"].ToString();
                    Session["stauts"] = reader["TIMESHEET_STATUS"].ToString();
                    TableHeaderRow t_row = new TableHeaderRow();
                    TableRow th_row = new TableRow();
                    table1.Rows.Add(t_row);
                    table1.Rows.Add(th_row);
                    reader.Close();
                    query = string.Empty;

                    //fetching the timesheet data
                    query = "SELECT DATE_HOURS,NO_HOURS FROM TIMESHEET_DETAILS WHERE TIMESHEET_ID = '" + s1 + "'";
                    sqlcommand = new SqlCommand(query, dbConnection);
                    reader = sqlcommand.ExecuteReader();
                    while (reader.Read())
                    {
                        TableCell thcell = new TableCell();
                        TableCell tcell = new TableCell();
                        Label hours_lb = new Label();
                        Label date_lb = new Label();
                        string curr_date = Convert.ToDateTime(reader["DATE_HOURS"]).Date.ToString("d");
                        date_lb.Text = curr_date;
                        hours_lb.Text = (String.Format("{0}", reader["NO_HOURS"]));

                        thcell.Controls.Add(date_lb);
                        tcell.Controls.Add(hours_lb);
                        t_row.Cells.Add(thcell);
                        th_row.Cells.Add(tcell);
                    }
                }
            }
            catch (SqlException ex)
            {
                Label1.Text = "<p>Error Code" + ex.Number + ": " + ex.Message + "</p>";
            }
            finally
            {
                dbConnection.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Session["status"] != null)
            {
                string status = Session["status"].ToString();
                if (status.Equals("APPROVED"))
                {
                    Button1.Visible = false;
                }
                else
                {
                    string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

                    SqlConnection dbConnection = new SqlConnection(conStr);
                    SqlCommand command;
                    SqlDataReader reader;

                    try
                    {
                        string query = "UPDATE ";
                    }
                    catch(SqlException ex)
                    {
                        Label1.Text = "<p>Error Code" + ex.Number + ": " + ex.Message + "</p>";
                    }
                    finally
                    {

                    }
                }
            }
        }
    }
}