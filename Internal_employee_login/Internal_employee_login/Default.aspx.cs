using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Internal_employee_login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connstr = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            SqlConnection dbConnection = new SqlConnection(connstr);
            SqlCommand sqlCmnd;
            SqlDataReader sqlReader;

            if (Page.IsPostBack)
            {
                string emp_id = empid_text.Text;
                string paswrd = paswd_text.Text;

                try
                {
                    dbConnection.Open();
                    string info = "SELECT * FROM EMP_LOGIN WHERE EMP_ID = '" + emp_id.Trim() + "';";
                    sqlCmnd = new SqlCommand(info, dbConnection);
                    sqlReader = sqlCmnd.ExecuteReader();

                    //checking if login id and password are correct
                    if (sqlReader.Read())
                    {

                        if (sqlReader["EMP_ID"].Equals(emp_id) && sqlReader["EMP_PASSWORD"].Equals(paswrd))
                        {
                            //HttpCookie employee_id = new HttpCookie("userName");
                            //employee_id.Value = emp_id;
                            //employee_id.Expires = DateTime.Now.AddMinutes(2);
                            //Response.Cookies.Add(employee_id);

                            FormsAuthentication.SetAuthCookie(emp_id, false);
                            //if admin then change the page
                            if (sqlReader["EMP_ID"].Equals("admin"))
                            {
                                Response.Redirect("~/Admin/Admin.aspx");
                            }
                            //if any other id then go to home page
                            else
                            {
                                Response.Redirect("~/Home.aspx");
                            }

                            //FormsAuthentication.SignOut();
                        }
                        else
                        {
                            login_lbl.Text = "User ID or Password is incorrect";
                        }
                    }
                    else
                    {
                        login_lbl.Text = "No such Employee ID exists";
                    }
                }
                catch (SqlException ex)
                {
                    login_lbl.Text = "<p>Error Code" + ex.Number + ": " + ex.Message + "</p>";
                }
                finally
                {
                    dbConnection.Close();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}