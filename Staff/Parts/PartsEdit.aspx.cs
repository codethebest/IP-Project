using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Parts_PartsEdit : System.Web.UI.Page
{
    String conn = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        PartsDTO dto = new PartsDTO();
        conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
        SqlConnection myConn = new SqlConnection(conn);
        myConn.Open();
        string selectStatement = "Select * from Parts where (partID="; selectStatement += DropDownList1.SelectedValue + ")";
        SqlCommand selectCmd = new SqlCommand(selectStatement, myConn);
        SqlDataReader myReader;
        myReader = selectCmd.ExecuteReader();
        while (myReader.Read())
        {
            if (myReader.GetString(0) == DropDownList1.SelectedValue)
            {
                dto.id = myReader.GetString(0);
                dto.name = myReader.GetString(1);
                dto.type = myReader.GetString(2);
                dto.manufacturer = myReader.GetString(3);
                dto.datePurchased = myReader.GetString(4);
                dto.price = myReader.GetString(5);
                dto.supplier = myReader.GetString(6);
                dto.inStock = myReader.GetString(7);
                break;
            }
        }
        myConn.Close();
        Session["PartsDTO"] = dto;
        Server.Transfer("PartsEdit2.aspx");
    }
}