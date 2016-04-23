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
    public partial class ChangePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            table1.Visible = true;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            SqlConnection dbConnection = new SqlConnection(conStr);
            SqlCommand command;
            SqlDataReader reader;

            string query = "UPDATE EMP_LOGIN SET EMP_PASSWORD = '" + password.Text + "' WHERE EMP_ID = '" +
                            User.Identity.Name + "'";
            try
            {
                dbConnection.Open();
                command = new SqlCommand(query, dbConnection);
                command.ExecuteNonQuery();
                Label1.Text = "Your password has been reset";
                table1.Visible = false;
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