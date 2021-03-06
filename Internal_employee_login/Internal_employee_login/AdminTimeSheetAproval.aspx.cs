﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Internal_employee_login
{
    public partial class test2 : System.Web.UI.Page
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
                string query = "SELECT STARTDATE, ENDDATE FROM TIMESHEET WHERE TIMESHEET_ID = '" + s1 + "'";
                sqlcommand = new SqlCommand(query, dbConnection);
                reader = sqlcommand.ExecuteReader();
                if (reader.Read())
                {
                    strt_date.Text = Convert.ToDateTime(reader["startdate"]).Date.ToString("d");
                    end_date.Text = Convert.ToDateTime(reader["enddate"]).Date.ToString("d");
                    TableHeaderRow t_row = new TableHeaderRow();
                    TableRow th_row = new TableRow();
                    table2.Rows.Add(t_row);
                    table2.Rows.Add(th_row);
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
            catch(SqlException ex)
            {
                Label1.Text= "<p>Error Code" + ex.Number + ": " + ex.Message + "</p>";
            }
            finally
            {
                dbConnection.Close();
            }
            //try
            //{
            //    dbConnection.Open();
            //    string query = "SELECT NO_HOURS FROM TIMESHEET_DETAILS WHERE TIMESHEET_ID=" + s1;
            //    sqlcommand = new SqlCommand(query, dbConnection);
            //    reader = sqlcommand.ExecuteReader();
            //    int counter = 1;
            //    TableRow th_row = new TableRow();
            //    table2.Rows.Add(th_row);
            //    while (reader.Read())
            //    {
            //        TableCell tcell = new TableCell();
            //        Label lb = new Label();
            //        lb.Text = (String.Format("{0}", reader[0]));
            //        tcell.Width = 20;
            //        tcell.Height = 25;
            //        tcell.Controls.Add(lb);
            //        th_row.Cells.Add(tcell);
            //    }

            //    //foreach(var x in (string)reader["NO_HOURS"])
            //    //{
            //    //    Label1.Text += Convert.ToInt32(x).ToString();
            //    //}

            //}
            //catch (SqlException ex)
            //{
            //    Label1.Text = "<p>Error Code" + ex.Number + ": " + ex.Message + "</p>";
            //}
            //finally
            //{
            //    dbConnection.Close();
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s1 = Request.QueryString[0];
            string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection dbConnection = new SqlConnection(conStr);
            SqlCommand sqlcommand;
            SqlDataReader reader;

            try
            {
                dbConnection.Open();
                string query = "Update timesheet set timesheet_status= 'APPROVED' where timesheet_id = " + s1 + "";
                sqlcommand = new SqlCommand(query, dbConnection);
                sqlcommand.ExecuteNonQuery();

                Response.Redirect("~/AdminTimeSheet.aspx");
            }
            catch(SqlException ex)
            {
                Label1.Text = "<p>Error Code" + ex.Number + ": " + ex.Message + "</p>";
            }
            finally
            {
                dbConnection.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string s1 = Request.QueryString[0];
            string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection dbConnection = new SqlConnection(conStr);
            SqlCommand sqlcommand;
            SqlDataReader reader;

            try
            {
                dbConnection.Open();
                string query = "Update timesheet set timesheet_status= 'REJECTED' where timesheet_id = " + s1 + "";
                sqlcommand = new SqlCommand(query, dbConnection);
                sqlcommand.ExecuteNonQuery();
                Response.Redirect("~/AdminTimeSheet.aspx");
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
    }
}