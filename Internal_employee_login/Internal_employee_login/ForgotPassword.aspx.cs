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
    public partial class ForgotPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection dbConnection = new SqlConnection(conStr);
            SqlCommand cmd;
            SqlDataReader reader;

            string query = "SELECT SEC_QUES1,SEC_QUES2,SEC_QUES3,ANSWER1,ANSWER2," +
                            "ANSWER3 FROM EMP_LOGIN WHERE EMP_ID = '" + emp_id.Text + "';";

            cmd = new SqlCommand(query, dbConnection);
            reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                MultiView1.ActiveViewIndex = 1;
                sec_ques1.Text = reader["SEC_QUES1"].ToString();
                sec_ques1.ReadOnly = true;
                sec_ques2.Text = reader["SEC_QUES2"].ToString();
                sec_ques2.ReadOnly = true;
                sec_ques3.Text = reader["SEC_QUES3"].ToString();
                sec_ques3.ReadOnly = true;
                reader.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection dbConnection = new SqlConnection(conStr);
            SqlCommand cmd;
            SqlDataReader reader;

            string query = "SELECT SEC_QUES1,SEC_QUES2,SEC_QUES3,ANSWER1,ANSWER2," +
                            "ANSWER3 FROM EMP_LOGIN WHERE EMP_ID = '" + emp_id.Text + "';";

            cmd = new SqlCommand(query, dbConnection);
            reader = cmd.ExecuteReader();

            if (reader.Read())
            {
                if(answer1.Text.Equals(reader["ANSWER1"].ToString()) && answer2.Text.Equals(reader["ANSWER2"].ToString())
                    && answer3.Text.Equals(reader["ANSWER3"].ToString()))
                {
                    MultiView1.ActiveViewIndex = 2;
                    reader.Close();
                }
                else
                {
                    Label1.Text = "The data entered is wrong. Please try again";
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection dbConnection = new SqlConnection(conStr);
            SqlCommand cmd;

            string query = "UPDATE EMP_LOGIN SET EMP_PASSWORD = '" + password.Text
                            + "' where EMP_ID = '" + emp_id.Text + "';";
            cmd = new SqlCommand(query, dbConnection);
            cmd.ExecuteNonQuery();
            MultiView1.ActiveViewIndex = 3;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}