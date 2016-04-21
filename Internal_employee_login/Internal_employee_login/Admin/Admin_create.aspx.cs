using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project1
{
    public partial class Admin_create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!User.Identity.IsAuthenticated)
            //{
            //    Label1.Text = "You do not have permissions to access this page";
            //    form1.Visible = false;
            //}
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            SqlConnection dbConnection = new SqlConnection(conStr);
            SqlCommand sqlcommand;
            SqlDataReader reader;
            string password = RandomString(6);

            try
            {
                dbConnection.Open();

                string query = "INSERT INTO EMPLOYEE(EMP_ID,EMAIL) VALUES('"+
                                employee_id.Text+"','"+User_email.Text+"');";

                sqlcommand = new SqlCommand(query, dbConnection);
                int number = sqlcommand.ExecuteNonQuery();

                query = string.Empty;
                query = "INSERT INTO EMP_LOGIN(EMP_ID,EMP_PASSWORD) VALUES('" +
                        employee_id.Text + "','" + password + "')";
                sqlcommand = new SqlCommand(query, dbConnection);
                number = sqlcommand.ExecuteNonQuery();
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

        public static string RandomString(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            var random = new Random();
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }
    }
}