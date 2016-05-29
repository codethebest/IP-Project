using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Staff_Items_ItemsBookOut : System.Web.UI.Page
{
    string conn = "";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        try
        {
            ItemsDTO dto = new ItemsDTO();
            conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection myConn = new SqlConnection(conn);
            myConn.Open();
            string selectStatement = "Select itemID, customerID, barcode, itemType, description, model, issue, dateBookedIn from Items where (itemID="; selectStatement += dropDownItemID.SelectedValue + ")";
            SqlCommand selectCmd = new SqlCommand(selectStatement, myConn);
            SqlDataReader myReader;
            myReader = selectCmd.ExecuteReader();
            while (myReader.Read())
            {
                if (myReader.GetString(0) == dropDownItemID.SelectedValue)
                {
                    dto.itemID = myReader.GetString(0);
                    dto.custID = myReader.GetString(1);
                    dto.barcode = myReader.GetString(2);
                    dto.itemType = myReader.GetString(3);
                    dto.description = myReader.GetString(4);
                    dto.model = myReader.GetString(5);
                    dto.issue = myReader.GetString(6);
                    dto.dateIn = myReader.GetString(7);
                    break;
                }
            }
            myConn.Close();
            Session["ItemDTO"] = dto;
            Server.Transfer("ItemsBookOut2.aspx");
        }
        catch (SqlException ex)
        {
            Console.Write("Error: " + ex.ToString());
        }
        
    }
}