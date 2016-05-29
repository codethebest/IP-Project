using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for TechnicianDAO
/// </summary>
public class TechnicianDAO
{
	public String connString { get; set; }
	public TechnicianDAO()
	{
		connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
	}

	public void saveTechnician(Technician technician)
	{
		try
		{
			SqlConnection myConn = new SqlConnection(connString);
			myConn.Open();
			string insertStatement = "insert into Technicians (technicianID, name, technicianType) " +
				"values (@technicianID, @name, @technicianType)";
			SqlCommand insertCommand = new SqlCommand(insertStatement, myConn);
			insertCommand.Parameters.Add("@technicianID", SqlDbType.VarChar).Value = technician.technicianID;
			insertCommand.Parameters.Add("@name", SqlDbType.VarChar).Value = technician.technicianName;
			insertCommand.Parameters.Add("@technicianType", SqlDbType.VarChar).Value = technician.technicianType;

			int rows = insertCommand.ExecuteNonQuery();
			myConn.Close();
			if (rows != 1) throw new Exception("unexpected result");
		}
		catch (SqlException ex)
		{
			Console.Write("Error : " + ex.ToString());
		}
	}

	public void updateTechnician(Technician tecObj)
	{
		try
		{
			SqlConnection myConn = new SqlConnection(connString);
			myConn.Open();
			string updateString = "UPDATE Technicians SET name = @name, technicianType = @technicianType WHERE technicianID = @technicianID";
			SqlCommand updateComm = new SqlCommand(updateString, myConn);
			updateComm.Parameters.AddWithValue("@technicianID", tecObj.technicianID);
			updateComm.Parameters.AddWithValue("@name", tecObj.technicianName);
			updateComm.Parameters.AddWithValue("@technicianType", tecObj.technicianType);
			int rows = updateComm.ExecuteNonQuery();
			myConn.Close();
			if (rows != 1) throw new Exception("Unexpected Result for Update");
		}
		catch (SqlException ex)
		{
			Console.Write("Error : " + ex.ToString());
		}
	}

	public void deleteTechnician(string techID)
	{
		try
		{
			SqlConnection myConn = new SqlConnection(connString);
			myConn.Open();
			string deleteString = "Delete from Technicians where technicianID = '" + techID + "'";
			SqlCommand deleteComm = new SqlCommand(deleteString, myConn);
			int rows = deleteComm.ExecuteNonQuery();
			myConn.Close();
			if (rows != 1) throw new Exception("Unexpected Result for Update");
		}
		catch (SqlException ex)
		{
			Console.Write("Error : " + ex.ToString());
		}
	}
}