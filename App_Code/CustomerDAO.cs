using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for CustomerDAO
/// </summary>
public class CustomerDAO
{
	public String connString { get; set; }
	public CustomerDAO()
	{
		connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
	}

	public void saveCustomer(Customer customer)
	{
		SqlConnection myConn = new SqlConnection(connString);
		myConn.Open();
		string insertStatement = "insert into Customers (customerID, name, surname, address, primaryPhone, secondaryPhone, totalItems) " +
			"values (@customerID, @name, @surname, @address, @primaryPhone, @secondaryPhone, @totalItems)";
		SqlCommand insertCommand = new SqlCommand(insertStatement,myConn);
		insertCommand.Parameters.Add("@customerID",SqlDbType.VarChar).Value = customer.customerID;
		insertCommand.Parameters.Add("@name", SqlDbType.VarChar).Value = customer.customerName;
		insertCommand.Parameters.Add("@surname", SqlDbType.VarChar).Value = customer.customerSurname;
		insertCommand.Parameters.Add("@address", SqlDbType.VarChar).Value = customer.customerAdress;
		insertCommand.Parameters.Add("@primaryPhone", SqlDbType.VarChar).Value = customer.cutomerPhoneNumber;
		insertCommand.Parameters.Add("@secondaryPhone", SqlDbType.VarChar).Value = customer.customerAltPhoneNuber;
		insertCommand.Parameters.Add("@totalItems", SqlDbType.VarChar).Value = customer.totalItems;
		int rows = insertCommand.ExecuteNonQuery();
		myConn.Close();
		if(rows !=1) throw new Exception("unexpected result");
	}

	public void updateCustomer(Customer custObj)
	{
		SqlConnection myConn = new SqlConnection(connString);
		myConn.Open();
		string updateString = "UPDATE customers SET name = @name, surname = @surname, address = @address, primaryPhone = @primaryPhone, secondaryPhone = @secondaryPhone, totalItems = @totalItems WHERE customerID = @customerID";
		SqlCommand updateComm = new SqlCommand(updateString,myConn);
		updateComm.Parameters.AddWithValue("@customerID", custObj.customerID);
		updateComm.Parameters.AddWithValue("@name", custObj.customerName);
		updateComm.Parameters.AddWithValue("@surname", custObj.customerSurname);
		updateComm.Parameters.AddWithValue("@address", custObj.customerAdress);
		updateComm.Parameters.AddWithValue("@primaryPhone", custObj.cutomerPhoneNumber);
		updateComm.Parameters.AddWithValue("@secondaryPhone", custObj.customerAltPhoneNuber);
		updateComm.Parameters.AddWithValue("@totalItems", custObj.totalItems);
		int rows = updateComm.ExecuteNonQuery();
		myConn.Close();
		if (rows != 1) throw new Exception("Unexpected Result for Update");
	}

	public void deleteCustomer(string custID)
	{
		SqlConnection myConn = new SqlConnection(connString);
		myConn.Open();
		string deleteString = "Delete from Customers where customerID = '"+custID+"'";
		SqlCommand deleteComm = new SqlCommand(deleteString, myConn);
		int rows = deleteComm.ExecuteNonQuery();
		myConn.Close();
		if (rows != 1) throw new Exception("Unexpected Result for Update");
	}
}