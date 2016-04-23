using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Internal_employee_login
{
    public partial class AdminCreateUser : System.Web.UI.Page
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
            string employee_id = lastName.Text.Substring(0, 3) + firstName.Text.Substring(0, 3);

            try
            {
                dbConnection.Open();

                string query = "INSERT INTO EMPLOYEE(EMP_ID,EMP_FIRSTNM,EMP_LASTNM,EMAIL,PAY_PER_HOUR,ROLE) VALUES('" +
                                employee_id + "','" + firstName.Text + "','" + lastName.Text
                                + "','" + User_email.Text + "','" + pay_per_hour.Text + "','" +
                                Role_user.Text + "');";

                sqlcommand = new SqlCommand(query, dbConnection);
                int number = sqlcommand.ExecuteNonQuery();

                query = string.Empty;
                query = "INSERT INTO EMP_LOGIN(EMP_ID,EMP_PASSWORD) VALUES('" +
                        employee_id + "','" + password + "')";
                sqlcommand = new SqlCommand(query, dbConnection);
                number = sqlcommand.ExecuteNonQuery();

                //returing the admin the username and password:
                Label1.Text = "The user has been created" + "<br /><br />";
                Label1.Text += "Username is :   " + employee_id + "<br /><br />";
                table1.Visible = false;

                //message body for email
                Label2.Text = "Welcome to FruitBowl Digial. We are happy to welcome you into our team" + "<br /><br />";
                Label2.Text += "Please login with the following details to access the Employee portal";
                Label2.Text += "Login ID:    " + employee_id + "<br />";
                Label2.Text += "Password:    " + password + "<br /><br /><br />";
                Label2.Text += "<p>You will be prompted to change the password the first time you login.</p>";
                Label2.Text += "<p> </p>";
                Label2.Text += "<p>Administrative Team</p>";
                Label2.Text += "<p>FruitBowl Digital</p>";

                mailsender(Label2.Text);
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

        public static string RandomString(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            var random = new Random();
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }

        public void mailsender(string s)
        {
            string toAddress = User_email.Text;

            MailAddress messageFrom = new MailAddress("sgonugu@ilstu.edu", "Admin");
            MailMessage emailMessage = new MailMessage();
            emailMessage.From = messageFrom;
            MailAddress messageTo = new MailAddress(User_email.Text.ToLower());
            emailMessage.To.Add(messageTo.Address);
            emailMessage.Subject = "Welcome to FruitBowl Digital";
            string messageText = s.Replace("<br />", Environment.NewLine);
            emailMessage.Body = messageText;
            SmtpClient mailClient = new SmtpClient();
            mailClient.UseDefaultCredentials = true;// false;
            mailClient.Send(emailMessage);
        }
    }
}