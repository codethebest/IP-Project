using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Customers_CustInsert : System.Web.UI.Page
{
    private string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    private int totalRecords = 0;
    private int custID = 1001;
    protected void Page_Load(object sender, EventArgs e)
    {
        setCustID();
    }
    protected void btnCustInsertClear_Click(object sender, EventArgs e)
    {
        clearText();
    }
    protected void btnCustInsertNext_Click(object sender, EventArgs e)
    {
        String custName = txtCustName.Text;
        String custSurname = txtCustSurname.Text;
        String custAddress = txtCustAddress.Text;
        String custPhoneNumber = txtCustPhoneNumber.Text;
        String custAltPhoneNumber = txtCustAltNumber.Text;
        String totalItems = txtTotalItems.Text; 
        CustomerFormDTO customer = new CustomerFormDTO();
        customer.id = custID.ToString();
        customer.name = custName ;
        customer.surname = custSurname;
        customer.address = custAddress;
        customer.phoneNum = custPhoneNumber;
        customer.altPhoneNum = custAltPhoneNumber;
        customer.items = totalItems;
        Session["CustomerFormDTO"] = customer;
        Server.Transfer("CustInsert2.aspx", true);
    }

    private void setCustID()
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        SqlCommand select = new SqlCommand("Select * from Customers", conn);
        SqlDataReader reader = select.ExecuteReader();
        while (reader.Read())
        {
            totalRecords++;
        }
        conn.Close();
        custID += totalRecords;
        txtCustID.Text = custID.ToString();
    }
    private void clearText()
    {
        txtCustName.Text = "";
        txtCustSurname.Text = "";
        txtCustAddress.Text = "";
        txtCustPhoneNumber.Text = "";
        txtCustAltNumber.Text = "";
        txtTotalItems.Text = "";
    }
}