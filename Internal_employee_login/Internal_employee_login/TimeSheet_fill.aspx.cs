using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Internal_employee_login
{
    public partial class TimeSheet_fill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // if(!Page)
            Time_table();
        }

        protected void Time_table()
        {
            //Getting the values of Start Date and end date from previous page
            DateTime StartDate = DateTime.Now.Date;
            DateTime EndDate = DateTime.Now.Date;
            try
            {
                StartDate = (DateTime)(Session["field1"]);
                EndDate = (DateTime)(Session["field2"]);
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            double count = (EndDate - StartDate).TotalDays;
            double counter = 0;
            //int count = 15;
            //int counter = 0;
            TableRow th_row = new TableRow();
            Table2.Rows.Add(th_row);

            TableHeaderRow th_row_1 = new TableHeaderRow();
            Table2.Rows.Add(th_row_1);
            while (counter < count)
            {
                TableCell tcell = new TableCell();
                Label lblNew = new Label();
                tcell.Width = 20;
                tcell.Height = 25;
                //TextBox tb = new TextBox();
                //// Set a unique ID for each TextBox added
                //tb.ID = "TextBoxRow_" + counter;
                //tb.Width = 15;
                //// Add the control to the TableCell
                //tcell.Controls.Add(tb);
                lblNew.Text = (counter + 1).ToString();
                tcell.Controls.Add(lblNew);
                th_row_1.Cells.Add(tcell);
                counter++;
            }
            counter = 0;
            while (counter < count)
            {
                TableCell tcell = new TableCell();
                tcell.Width = 20;
                TextBox tb = new TextBox();
                // Set a unique ID for each TextBox added
                tb.ID = "TextBoxRow_" + counter;
                tb.Width = 15;
                // Add the control to the TableCell
                tcell.Controls.Add(tb);
                th_row.Cells.Add(tcell);
                counter++;
            }

        }

        protected void MultiView1_ActiveViewChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime StartDate = DateTime.Now.Date;
            DateTime EndDate = DateTime.Now.Date;
            try
            {
                StartDate = (DateTime)(Session["field1"]);
                EndDate = (DateTime)(Session["field2"]);
            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            double count = (EndDate - StartDate).TotalDays;
            double counter = 0;
            int sumOfHours = 0;
            List<string> data = new List<string>();

            while (counter < count)
            {
                TextBox x = new TextBox { ID = "TextBoxRow_" + counter };
                data.Add(x.Text);
                counter++;
            }
        }
    }
}