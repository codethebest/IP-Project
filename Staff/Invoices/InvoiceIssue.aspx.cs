using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Staff_Invoices_InvoiceIssue : System.Web.UI.Page
{
    InvoicesDTO dto = new InvoicesDTO();
    private string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    private int totalRecords = 0;
    private int invID = 2001;
    CalculateBill calcBill = new CalculateBill();

    protected void Page_Load(object sender, EventArgs e)
    {
        setInvoiceID();
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        getCustData();
        getJobData();
        getTechnicianData();
        Session["invoiceDTO"] = dto;
        Server.Transfer("InvoiceIssue2.aspx");
    }

    private void getCustData()
    {
        try
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            string selectStatement = "Select * from customers where (customerID = "; selectStatement += dropDownCustID.SelectedValue + ")";
            SqlCommand selectCmd = new SqlCommand(selectStatement,conn);
            SqlDataReader reader;
            reader = selectCmd.ExecuteReader();
            while (reader.Read())
            {
                if (reader.GetString(0) == dropDownCustID.SelectedValue)
                {
                    dto.custID = reader.GetString(0);
                    dto.custName = reader.GetString(1);
                    dto.custSurname = reader.GetString(2);
                    break;
                }
            }
            conn.Close();
        }
        catch (SqlException ex)
        {
            Console.Write("Error: " + ex.ToString());
        }
    }

    private void getJobData()
    {
        try
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            string selectStatement = "select * from Jobs where ( jobID ="; selectStatement += dropDownJobID.SelectedValue + ")";
            SqlCommand selectCmd = new SqlCommand(selectStatement, conn);
            SqlDataReader reader;
            reader = selectCmd.ExecuteReader();
            while (reader.Read())
            {
                if (reader.GetString(0) == dropDownJobID.SelectedValue)
                {
                    dto.jobID = reader.GetString(0);
                    dto.itemID = reader.GetString(1);
                    dto.techID = reader.GetString(2);
                    dto.hoursWorked = reader.GetString(5);
                    break;
                }
            }
            conn.Close();
            dto.billAmount = calcBill.calcBillAmount(Int32.Parse(dto.hoursWorked));
        }
        catch (SqlException ex)
        {
            Console.Write("Error: " + ex.ToString());
        }
    }

    private void setInvoiceID()
    {
        try
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand select = new SqlCommand("Select * from Invoice", conn);
            SqlDataReader reader = select.ExecuteReader();
            while (reader.Read())
            {
                totalRecords++;
            }
            conn.Close();
            invID += totalRecords;
        }
        catch (SqlException ex)
        {
            Console.Write("Error: " + ex.ToString());
        }
        lblInvoiceID.Text = invID.ToString();
        dto.invoiceID = invID.ToString();
        lblDateIssued.Text = DateTime.Today.ToShortDateString();
        dto.dateIssued = DateTime.Today.ToShortDateString();
    }

    private void getTechnicianData()
    {
        try
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            string selectStatement = "select * from Technicians where ( technicianID ="; selectStatement += dto.techID + ")";
            SqlCommand selectCmd = new SqlCommand(selectStatement, conn);
            SqlDataReader reader;
            reader = selectCmd.ExecuteReader();
            while (reader.Read())
            {
                if (reader.GetString(0) == dto.techID)
                {
                    dto.techName = reader.GetString(1);
                    break;
                }
            }
            conn.Close();
        }
        catch (SqlException ex)
        {
            Console.Write("Error: " + ex.ToString());
        }
    }
}