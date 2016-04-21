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
    public partial class UserPersonalDetails : System.Web.UI.Page
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
                    string query = "SELECT * FROM EMPLOYEE WHERE EMP_ID = '"+User.Identity.Name+"'";
                    sqlcmnd = new SqlCommand(query, dbConnection);
                    sqlReader = sqlcmnd.ExecuteReader();

                    if (sqlReader.Read())
                    {
                        frst_name.Text = sqlReader["EMP_FIRSTNM"].ToString();
                        last_name.Text = sqlReader["EMP_LASTNM"].ToString();
                        email_txt.Text = sqlReader["EMAIL"].ToString();
                        location_txt.Text = sqlReader["LOCATION"].ToString();
                        contact_num.Text = sqlReader["CONTACT_DETAILS"].ToString();
                        wrk_grp.Text = sqlReader["WORK_GRP"].ToString();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;

            SqlConnection dbConnection = new SqlConnection(connstr);
            SqlCommand sqlcmnd;
            SqlDataReader sqlReader;

            try
            {
                dbConnection.Open();
                string query = "UPDATE EMPLOYEE SET EMP_FIRSTNM = '" + frst_name.Text + "', EMP_LASTNM = '" + last_name.Text
                                + "', EMAIL = '"+email_txt.Text+"', LOCATION = '"+location_txt.Text
                                +"', CONTACT_DETAILS = '"+contact_num.Text+"',WORK_GRP = '"+
                                wrk_grp.Text+"' WHERE EMP_ID = '" + User.Identity.Name + "';";
                sqlcmnd = new SqlCommand(query, dbConnection);
                sqlReader = sqlcmnd.ExecuteReader();
                
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