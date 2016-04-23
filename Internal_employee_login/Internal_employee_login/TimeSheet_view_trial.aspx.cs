using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Internal_employee_login
{
    public partial class TimeSheet_view_trial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //DataTable dt = new DataTable();

            //string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            //SqlConnection dbConnection = new SqlConnection(conStr);
            //SqlCommand command;

            //try
            //{
            //    dbConnection.Open();
            //    string query = "SELECT * FROM TIMESHEET WHERE EMP_ID = '" + User.Identity.Name + "';";
            //    command = new SqlCommand(query, dbConnection);
            //    SqlDataAdapter rd = new SqlDataAdapter(command);
            //    rd.Fill(dt);
            //    GridView1.DataSource = dt;
            //    GridView1.DataBind();
            //}
            //catch (SqlException ex)
            //{
            //    Label1.Text = "<p>Error Code" + ex.Number + ": " + ex.Message + "</p>";
            //}
            //finally
            //{
            //    dbConnection.Close();
            //}
            var cookieName = FormsAuthentication.FormsCookieName;
            var test = Request.Cookies["username"];
        }
    }
}