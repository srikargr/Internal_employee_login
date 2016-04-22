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
    public partial class UpdateSecurityDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connstr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

                SqlConnection dbConnection = new SqlConnection(connstr);
                SqlCommand sqlcmnd;
                SqlDataReader sqlReader;

                try
                {
                    dbConnection.Open();
                    string query = "SELECT * FROM EMP_LOGIN WHERE EMP_ID = '" + User.Identity.Name + "';";
                    sqlcmnd = new SqlCommand(query,dbConnection);
                    sqlReader = sqlcmnd.ExecuteReader();

                    if (sqlReader.Read())
                    {
                        sec_ques1.SelectedItem.Text = sqlReader["SEC_QUES1"].ToString();
                        Answer1.Text = sqlReader["ANSWER1"].ToString();
                        sec_ques2.SelectedItem.Text = sqlReader["SEC_QUES2"].ToString();
                        Answer2.Text = sqlReader["ANSWER2"].ToString();
                        sec_ques3.SelectedItem.Text = sqlReader["SEC_QUES3"].ToString();
                        Answer3.Text = sqlReader["ANSWER3"].ToString();
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            SqlConnection dbConnection = new SqlConnection(connstr);
            SqlCommand sqlcmnd;
            SqlDataReader sqlReader;

            try
            {
                dbConnection.Open();
                string query = "update emp_login set sec_ques1='" + sec_ques1.SelectedItem.Text + "',sec_ques2='" +
                    sec_ques2.SelectedItem.Text + "',sec_ques3='" + sec_ques3.SelectedItem.Text + "',answer1='" +
                    Answer1.Text + "',answer2='" + Answer2.Text + "',answer3='" + Answer3.Text + "';";
                sqlcmnd = new SqlCommand(query, dbConnection);
                sqlcmnd.ExecuteNonQuery();
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