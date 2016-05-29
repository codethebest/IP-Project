using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Staff_Jobs_JobsIssue : System.Web.UI.Page
{
    private string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    private int totalRecords = 0;
    private int itemID = 4001;
    JobsDTO dto = new JobsDTO();

    protected void Page_Load(object sender, EventArgs e)
    {
        setJobID();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String jobID = lblJobID.Text;
        String itemID = dropDownItemID.SelectedValue;
        String techID = dropDownTechID.SelectedValue;
        String dateAssigned = calDateAssigned.SelectedDate.ToShortDateString();
        dto.jobID = jobID;
        dto.itemID = itemID;
        dto.techID = techID;
        dto.dateAssigned = dateAssigned;
        Session["JobsDTO"] = dto;
        Server.Transfer("JobsIssue2.aspx");
    }
    protected void calDateAssigned_SelectionChanged(object sender, EventArgs e)
    {
        dto.dateAssigned = calDateAssigned.SelectedDate.ToShortDateString();
    }

    private void setJobID()
    {
        try
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand select = new SqlCommand("Select * from Jobs", conn);
            SqlDataReader reader = select.ExecuteReader();
            while (reader.Read())
            {
                totalRecords++;
            }
            conn.Close();
            itemID += totalRecords;
            lblJobID.Text = itemID.ToString();
        }
        catch (SqlException ex)
        {
            Console.Write("Error: " + ex.ToString());
        }
    }
}