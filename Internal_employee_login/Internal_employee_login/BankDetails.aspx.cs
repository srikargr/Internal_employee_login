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
    public partial class BankDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // err_msg.Text = User.Identity.Name;
            if (!IsPostBack)
            {
                user_populate();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            update_insert();
        }

        protected void update_insert()
        {
            string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection dbConnection = new SqlConnection(conStr);
            SqlCommand sqlcommand;
            SqlDataReader sqlreader;
            string query;
            string userName = User.Identity.Name;

            if (IsPostBack)
            {
                query = "SELECT * FROM USER_ACCOUNT WHERE EMP_ID = '" + userName + "';";

                try
                {
                    dbConnection.Open();
                    sqlcommand = new SqlCommand(query, dbConnection);
                    sqlreader = sqlcommand.ExecuteReader();
                    if (sqlreader.Read())
                    {
                        query = string.Empty;
                        query = "UPDATE USER_ACCOUNT SET EMP_ID = '" + userName + "', BANK_NAME = '" +
                        Bnk_name.Text + "', IFSC_CODE = '" + Ifsc_code.Text + "', ACCOUNT_TYPE = '" +
                        DropDownList1.SelectedItem.Text + "', ACCOUNT_NUMBER = '" + Accnt_num.Text + "', NAME_ACCOUNT = '" +
                        Account_name.Text + "';";
                        //To close the existing sql reader
                        sqlreader.Close();

                        try
                        {

                            //dbConnection.Open();
                            //LOAD THE QUERY INTO SQLCOMMAND
                            sqlcommand = new SqlCommand(query, dbConnection);
                            sqlreader = sqlcommand.ExecuteReader();
                            err_msg.Text = "Bank records updated successfully";
                        }
                        catch (SqlException ex)
                        {
                            err_msg.Text = "<p>Error Code" + ex.Number + ": " + ex.Message + "</p>";
                        }

                    }
                    else
                    {
                        query = string.Empty;
                        query = "INSERT INTO USER_ACCOUNT VALUES('" + userName + "','" + Bnk_name.Text + "','" +
                            Ifsc_code.Text + "','" + DropDownList1.SelectedItem.Text + "','" + Accnt_num.Text +
                            "','" + Account_name.Text + "');";
                        //To close the existing sql reader
                        sqlreader.Close();
                        try
                        {

                            //dbConnection.Open();
                            //LOAD THE QUERY INTO SQLCOMMAND
                            sqlcommand = new SqlCommand(query, dbConnection);
                            sqlreader = sqlcommand.ExecuteReader();
                            err_msg.Text = "Bank records inserted successfully";
                        }
                        catch (SqlException ex)
                        {
                            err_msg.Text = "<p>Error Code" + ex.Number + ": " + ex.Message + "</p>";
                        }
                    }
                }
                catch (SqlException ex)
                {
                    err_msg.Text = "<p>Error Code" + ex.Number + ": " + ex.Message + "</p>";
                }
                finally
                {
                    dbConnection.Close();
                    // sqlreader.Close();
                }


            }
        }

        protected void user_populate()
        {
            string conStr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection dbconnection = new SqlConnection(conStr);
            SqlCommand sqlcommand;
            SqlDataReader sqlreader;

            string query = "SELECT * FROM USER_ACCOUNT WHERE EMP_ID = '" + User.Identity.Name + "';";
            try
            {
                dbconnection.Open();
                sqlcommand = new SqlCommand(query, dbconnection);
                sqlreader = sqlcommand.ExecuteReader();
                if (sqlreader.Read())
                {
                    //"', BANK_NAME = '" +
                    //    Bnk_name.Text + "', IFSC_CODE = '" + Ifsc_code.Text + "', ACCOUNT_TYPE = '" +
                    //    DropDownList1.SelectedItem.Text + "', ACCOUNT_NUMBER = '" + Accnt_num.Text + "', NAME_ACCOUNT = '" +
                    //    Account_name.Text + "';"

                    Bnk_name.Text = sqlreader["BANK_NAME"].ToString();
                    Ifsc_code.Text = sqlreader["IFSC_CODE"].ToString();
                    DropDownList1.SelectedItem.Text = sqlreader["ACCOUNT_TYPE"].ToString();
                    Accnt_num.Text = sqlreader["ACCOUNT_NUMBER"].ToString();
                    Account_name.Text = sqlreader["NAME_ACCOUNT"].ToString();
                    Button1.Text = "Update";
                }
                else
                {
                    Bnk_name.Text = string.Empty;
                    Ifsc_code.Text = string.Empty;
                    DropDownList1.SelectedItem.Text = string.Empty;
                    Accnt_num.Text = string.Empty;
                    Account_name.Text = string.Empty;
                    Button1.Text = "Submit";
                }
            }
            catch (SqlException ex)
            {
                err_msg.Text = "<p>Error Code" + ex.Number + ": " + ex.Message + "</p>";
            }
            finally
            {
                dbconnection.Close();
                // sqlreader.Close();
            }
        }
    }
}