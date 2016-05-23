using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Technicians_TechniciansEdit : System.Web.UI.Page
{
    string conn = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        TechnicianDTO dto = new TechnicianDTO();
        conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        SqlConnection myConn = new SqlConnection(conn);
        myConn.Open();
        string selectStatement = "Select * from Technicians  where (technicianID="; selectStatement += dropDownTechID.SelectedValue + ")";
        SqlCommand selectCmd = new SqlCommand(selectStatement, myConn);
        SqlDataReader myReader;
        myReader = selectCmd.ExecuteReader();
        while (myReader.Read())
        {
            if (myReader.GetString(0) == dropDownTechID.SelectedValue)
            {
                dto.id = myReader.GetString(0);
                dto.name = myReader.GetString(1);
                dto.type = myReader.GetString(2);
                break;
            }
        }
        myConn.Close();
        Session["TechnicianDTO"] = dto;
        Server.Transfer("TechniciansEdit2.aspx");
    }
}