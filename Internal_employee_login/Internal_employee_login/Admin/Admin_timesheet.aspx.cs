using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1.Admin
{
    public partial class Admin_timesheet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TableRow th_row = new TableRow();
            table1.Rows.Add(th_row);

            string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            SqlConnection dbConnection = new SqlConnection(conStr);
            SqlCommand sqlcommand;
            SqlDataReader reader;

            try
            {
                dbConnection.Open();
                string query = "SELECT COUNT(*) num FROM TIMESHEET WHERE STATUS = 'PENDING'";
                sqlcommand = new SqlCommand(query, dbConnection);
                reader = sqlcommand.ExecuteReader();
                int count = 0;
                if (reader.Read())
                {
                    count = (int)reader["num"];
                }
                int counter = 0;

                while (counter < count)
                {
                    TableCell tcell = new TableCell();
                    TextBox tb = new TextBox();
                    
                    // Set a unique ID for each TextBox added
                    tb.ID = "TextBoxRow_" + counter;
                    tb.Width = 15;
                    // Add the control to the TableCell
                    //tcell.Controls.Add(tb);
                    th_row.Cells.Add(tcell);
                    counter++;
                }
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
    }
}