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
    public partial class userProfileUpdate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string username = User.Identity.Name;
            if (!Page.IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
            }
            else
            {
                
            }
            err_msg.Text = "Welcome" + username;
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
                string query = "UPDATE EMPLOYEE SET EMP_FIRSTNM = '"+frst_name.Text+"', EMP_LASTNM = '"+last_name.Text
                                +"', EMP_JOIN_DT = '', EMAIL = '', LOCATION = '', CONTACT_DETAILS = '', CLIENT_NAME = '', WORK_GRP = '' WHERE EMP_ID = '"+User.Identity.Name+"';";
                sqlcmnd = new SqlCommand(query, dbConnection);
                sqlReader = sqlcmnd.ExecuteReader();
                MultiView1.ActiveViewIndex = 1;
            }
            catch (SqlException ex)
            {
                err_msg.Text = "<p>Error Code" + ex.Number + ": " + ex.Message + "</p>";
            }
            finally
            {
                dbConnection.Close();
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
                string query = "update emp_login set emp_password ='" +
                    password.Text + "',sec_ques1='" + sec_ques1.SelectedItem.Text + "',sec_ques2='" +
                    sec_ques2.SelectedItem.Text + "',sec_ques3='" + sec_ques3.SelectedItem.Text + "',answer1='" +
                    Answer1.Text + "',answer2='" + Answer2.Text + "',answer3='" + Answer3.Text + "';";

            }
            catch (SqlException ex)
            {
                err_msg.Text = "<p>Error Code" + ex.Number + ": " + ex.Message + "</p>";
            }
            finally
            {
                dbConnection.Close();
            }
        }
    }
}