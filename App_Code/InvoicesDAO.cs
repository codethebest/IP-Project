using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for InvoicesDAO
/// </summary>
public class InvoicesDAO
{
	public String connString { get; set; }
	public InvoicesDAO()
	{
		connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
	}

	public void saveInvoice(Invoices invoice)
	{
		try
		{
			SqlConnection myConn = new SqlConnection(connString);
			myConn.Open();
			string insertStatement = "insert into Invoice (invoiceID, jobID, customerID, customerName, customerSurname, itemID, technicianID, technicianName, hoursWorked, billAmount, dateIssued) VALUES (@invoiceID, @jobID, @customerID, @customerName,@customerSurname, @itemID, @technicianID, @technicianName, @hoursWorked, @billAmount, @dateIssued)";
			SqlCommand insertCommand = new SqlCommand(insertStatement, myConn);
			insertCommand.Parameters.Add("@invoiceID",SqlDbType.VarChar).Value = invoice.invoiceID;
			insertCommand.Parameters.Add("@jobID",SqlDbType.VarChar).Value = invoice.jobID;
			insertCommand.Parameters.Add("@customerID",SqlDbType.VarChar).Value = invoice.custID;
			insertCommand.Parameters.Add("@customerName",SqlDbType.VarChar).Value = invoice.custName;
			insertCommand.Parameters.Add("@customerSurname",SqlDbType.VarChar).Value = invoice.custSurname;
			//insertCommand.Parameters.Add("@itemID",SqlDbType.VarChar).Value = invoice.itemID;
			insertCommand.Parameters.Add("@technicianID",SqlDbType.VarChar).Value = invoice.techID;
			insertCommand.Parameters.Add("@technicianName",SqlDbType.VarChar).Value = invoice.techName;
			insertCommand.Parameters.Add("@hoursWorked",SqlDbType.VarChar).Value = invoice.hoursWorked;
			insertCommand.Parameters.Add("@billAmount",SqlDbType.VarChar).Value = invoice.billAmount;
			insertCommand.Parameters.Add("@dateIssued", SqlDbType.VarChar).Value = invoice.dateIssued;
			int rows = insertCommand.ExecuteNonQuery();
			myConn.Close();
			if (rows != 1) throw new Exception("unexpected result");
		}
		catch (SqlException ex)
		{
			Console.Write("Error: " + ex.ToString());
		}
	}
}