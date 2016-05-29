using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class Staff_Jobs_JobsEdit : System.Web.UI.Page
{
    string conn = "";
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        try
        {
            JobsDTO dto = new JobsDTO();
            conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection myConn = new SqlConnection(conn);
            myConn.Open();
            string select = "Select jobID, itemID, technicianID, dateAssigned from Jobs where (jobID= "; select += dropDownJobID.SelectedValue + ")";
            SqlCommand selectCmd = new SqlCommand(select, myConn);
            SqlDataReader myReader;
            myReader = selectCmd.ExecuteReader();
            while (myReader.Read())
            {
                if (myReader.GetString(0) == dropDownJobID.SelectedValue)
                {
                    dto.jobID = myReader.GetString(0);
                    dto.itemID = myReader.GetString(1);
                    dto.techID = myReader.GetString(2);
                    dto.dateAssigned = myReader.GetString(3);
                    break;
                }
            }
            myConn.Close();
            Session["JobsDTO"] = dto;
            Server.Transfer("JobsEdit2.aspx");
        }
        catch (SqlException ex)
        {
            Console.Write("Error: " + ex.ToString());
        }
    }
}