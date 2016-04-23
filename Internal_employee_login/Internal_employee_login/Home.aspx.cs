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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Welcome " + User.Identity.Name;

            string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            SqlConnection dbConnection = new SqlConnection(conStr);
            SqlCommand command;
            SqlDataReader reader;

            try
            {
                dbConnection.Open();
                string query = "SELECT ROLE FROM EMP_LOGIN WHERE EMP_ID = '" + User.Identity.Name + "';";
                command = new SqlCommand(query, dbConnection);
                reader = command.ExecuteReader();

                if (reader.Read())
                {
                    if (reader["ROLE"].ToString().Equals("ADMINISTRATOR"))
                    {
                        admin_row.Visible = true;
                    }
                    else
                    {
                        admin_row.Visible = false;
                    }
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