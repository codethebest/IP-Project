using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Customers_CustEdit : System.Web.UI.Page
{
    string conn = "";
    
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        try
        {
            CustomerFormDTO customer = new CustomerFormDTO();
            conn = ConfigurationManager.ConnectionStrings["ConnectionString"].ToString();
            SqlConnection myConn = new SqlConnection(conn);
            myConn.Open();
            string selectStatement = "Select * from Customers where (customerID="; selectStatement += dropDownCustID.SelectedValue + ")";
            SqlCommand selectCmd = new SqlCommand(selectStatement, myConn);
            SqlDataReader myReader;
            myReader = selectCmd.ExecuteReader();
            while (myReader.Read())
            {
                if (myReader.GetString(0) == dropDownCustID.SelectedValue)
                {
                    customer.id = myReader.GetString(0);
                    customer.name = myReader.GetString(1);
                    customer.surname = myReader.GetString(2);
                    customer.address = myReader.GetString(3);
                    customer.phoneNum = myReader.GetString(4);
                    customer.altPhoneNum = myReader.GetString(5);
                    customer.items = myReader.GetString(6);
                    break;
                }
            }
            myConn.Close();
            Session["CustomerDTO"] = customer;
            Server.Transfer("CustEdit2.aspx");
        }
        catch (SqlException ex)
        {
            Console.Write("Error : " + ex.ToString());
        }
        
    }
}