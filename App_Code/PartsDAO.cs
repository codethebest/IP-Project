using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for PartsDOA
/// </summary>
public class PartsDAO
{
	public String connString { get; set; }
	public PartsDAO()
	{
		connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
	}

	public void savePart(Parts partsObject)
	{
		SqlConnection myConn = new SqlConnection(connString);
		myConn.Open();
		string insertStatement = "insert into Parts (partID, partName, partType, manufacturer, dateBought, price, supplier, inStock) " +
			"values (@partID, @partName, @partType, @manufacturer, @dateBought, @price, @supplier, @inStock)";
		SqlCommand insertCommand = new SqlCommand(insertStatement, myConn);
		insertCommand.Parameters.Add("@partID", SqlDbType.VarChar).Value = partsObject.partID;
		insertCommand.Parameters.Add("@partName", SqlDbType.VarChar).Value = partsObject.partName;
		insertCommand.Parameters.Add("@partType", SqlDbType.VarChar).Value = partsObject.partType;
		insertCommand.Parameters.Add("@manufacturer", SqlDbType.VarChar).Value = partsObject.manufacturer;
		insertCommand.Parameters.Add("@dateBought", SqlDbType.VarChar).Value = partsObject.datePurchased;
		insertCommand.Parameters.Add("@price", SqlDbType.VarChar).Value = partsObject.price;
		insertCommand.Parameters.Add("@supplier", SqlDbType.VarChar).Value = partsObject.supplier;
		insertCommand.Parameters.Add("@inStock", SqlDbType.VarChar).Value = partsObject.inStock;
		int rows = insertCommand.ExecuteNonQuery();
		myConn.Close();
		if (rows != 1) throw new Exception("unexpected result");
	}

	public void updatePart(Parts partObj)
	{
		SqlConnection myConn = new SqlConnection(connString);
		myConn.Open();
		string updateString = "UPDATE Parts SET partName = @partName, partType = @partType, manufacturer = @manufacturer, dateBought = @dateBought, price = @price, supplier = @supplier, inStock = @inStock WHERE partID = @partID";
		SqlCommand updateComm = new SqlCommand(updateString, myConn);
		updateComm.Parameters.AddWithValue("@partID", partObj.partID);
		updateComm.Parameters.AddWithValue("@partName", partObj.partName);
		updateComm.Parameters.AddWithValue("@partType", partObj.partType);
		updateComm.Parameters.AddWithValue("@manufacturer", partObj.manufacturer);
		updateComm.Parameters.AddWithValue("@dateBought", partObj.datePurchased);
		updateComm.Parameters.AddWithValue("@price", partObj.price);
		updateComm.Parameters.AddWithValue("@supplier", partObj.supplier);
		updateComm.Parameters.AddWithValue("@inStock", partObj.inStock);
		int rows = updateComm.ExecuteNonQuery();
		myConn.Close();
		if (rows != 1) throw new Exception("Unexpected Result for Update");
	}

	public void deletePart(string partID)
	{
		SqlConnection myConn = new SqlConnection(connString);
		myConn.Open();
		string deleteString = "Delete from parts where partID = '" + partID + "'";
		SqlCommand deleteComm = new SqlCommand(deleteString, myConn);
		int rows = deleteComm.ExecuteNonQuery();
		myConn.Close();
		if (rows != 1) throw new Exception("Unexpected Result for Update");
	}
}