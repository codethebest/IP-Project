using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for ItemsDAO
/// </summary>
public class ItemsDAO
{
	public String connString { get; set; }
	public ItemsDAO()
	{
		connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
	}

	public void bookInItem(Items item)
	{
		SqlConnection myConn = new SqlConnection(connString);
		myConn.Open();
		string insertStatement = "insert into Items (itemID, customerID, barcode, itemType, description, model, issue, dateBookedIn) " +
			"values (@itemID, @customerID, @barcode, @itemType, @description, @model, @issue, @dateBookedIn)";
		SqlCommand insertCommand = new SqlCommand(insertStatement, myConn);
		insertCommand.Parameters.Add("@itemID", SqlDbType.VarChar).Value = item.itemID;
		insertCommand.Parameters.Add("@customerID", SqlDbType.VarChar).Value = item.custID;
		insertCommand.Parameters.Add("@barcode", SqlDbType.VarChar).Value = item.barcode;
		insertCommand.Parameters.Add("@itemType", SqlDbType.VarChar).Value = item.itemType;
		insertCommand.Parameters.Add("@description", SqlDbType.VarChar).Value = item.description;
		insertCommand.Parameters.Add("@model", SqlDbType.VarChar).Value = item.model;
		insertCommand.Parameters.Add("@issue", SqlDbType.VarChar).Value = item.issue;
		insertCommand.Parameters.Add("@dateBookedIn", SqlDbType.VarChar).Value = item.dateIn;
		int rows = insertCommand.ExecuteNonQuery();
		myConn.Close();
		if (rows != 1) throw new Exception("unexpected result");
	}

	public void updateItem(Items item)
	{
		SqlConnection myConn = new SqlConnection(connString);
		myConn.Open();
		string updateString = "UPDATE Items SET customerID = @customerID, barcode = @barcode, itemType = @itemType, description = @description, model = @model, issue = @issue, dateBookedIn = @dateBookedIn WHERE itemID = @itemID";
		SqlCommand updateComm = new SqlCommand(updateString,myConn);
		updateComm.Parameters.AddWithValue("@itemID", item.itemID);
		updateComm.Parameters.AddWithValue("@customerID", item.custID);
		updateComm.Parameters.AddWithValue("@barcode", item.barcode);
		updateComm.Parameters.AddWithValue("@itemType", item.itemType);
		updateComm.Parameters.AddWithValue("@description", item.description);
		updateComm.Parameters.AddWithValue("@model", item.model);
		updateComm.Parameters.AddWithValue("@issue", item.issue);
		updateComm.Parameters.AddWithValue("@dateBookedIn", item.dateIn);
		int rows = updateComm.ExecuteNonQuery();
		myConn.Close();
		if (rows != 1) throw new Exception("Unexpected Result for Update");
	}

	public void bookOutItem(Items item)
	{
		SqlConnection myConn = new SqlConnection(connString);
		myConn.Open();
		string updateString = "UPDATE Items SET dateBookedOut = @dateBookedOut WHERE itemID = @itemID";
		SqlCommand updateComm = new SqlCommand(updateString, myConn);
		updateComm.Parameters.AddWithValue("@itemID", item.itemID);
		updateComm.Parameters.Add("@dateBookedOut", SqlDbType.VarChar).Value = item.dateOut;
		int rows = updateComm.ExecuteNonQuery();
		myConn.Close();
		if (rows != 1) throw new Exception("Unexpected Result for Update");
	}
}