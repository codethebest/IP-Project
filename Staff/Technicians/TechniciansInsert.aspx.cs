using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Technicians_TechniciansInsert : System.Web.UI.Page
{
    private string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    private int totalRecords = 0;
    private int techID = 6001;
    protected void Page_Load(object sender, EventArgs e)
    {
        setTechnicianID();
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        String techID = txtTechID.Text;
        String techName = txtTechName.Text;
        String techType = dropDownType.SelectedValue;
        TechnicianDTO technician = new TechnicianDTO();
        technician.id = techID;
        technician.name = techName;
        technician.type = techType;
        Session["TechnicianDTO"] = technician;
        Server.Transfer("TechniciansInsert2.aspx", true);
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtTechName.Text = "";
        dropDownType.SelectedIndex = 0;
    }

    private void setTechnicianID()
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        SqlCommand select = new SqlCommand("Select * from Technicians", conn);
        SqlDataReader reader = select.ExecuteReader();
        while (reader.Read())
        {
            totalRecords++;
        }
        conn.Close();
        techID += totalRecords;
        txtTechID.Text = techID.ToString();
    }
    
}