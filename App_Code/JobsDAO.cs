using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

/// <summary>
/// Summary description for JobsDAO
/// </summary>
public class JobsDAO
{
	public String connString { get; set; }
	public JobsDAO()
	{
		connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
	}

	public void issueJob(Jobs job)
	{
		try
		{
			SqlConnection myConn = new SqlConnection(connString);
			myConn.Open();
			string insertString = "Insert into jobs (jobID, itemID, technicianID, dateAssigned) Values (@jobID, @itemID, @technicianID, @dateAssigned)";
			SqlCommand insertComm = new SqlCommand(insertString, myConn);
			insertComm.Parameters.Add("@jobID", SqlDbType.VarChar).Value = job.jobID;
			insertComm.Parameters.Add("@itemID", SqlDbType.VarChar).Value = job.itemID;
			insertComm.Parameters.Add("@technicianID", SqlDbType.VarChar).Value = job.techID;
			insertComm.Parameters.Add("@dateAssigned", SqlDbType.VarChar).Value = job.dateAssigned;
			int rows = insertComm.ExecuteNonQuery();
			myConn.Close();
			if (rows != 1) throw new Exception("unexpected result");
		}
		catch (SqlException ex)
		{
			Console.Write("Error: " + ex.ToString());
		}
	}

	public void reIssueJob(Jobs job)
	{
		try
		{
			SqlConnection myConn = new SqlConnection(connString);
			myConn.Open();
			string updateString = "Update Jobs set itemID = @itemID, technicianID = @technicianID, dateAssigned = @dateAssigned WHERE jobID = @jobID";
			SqlCommand updateComm = new SqlCommand(updateString, myConn);
			updateComm.Parameters.AddWithValue("@jobID", job.jobID);
			updateComm.Parameters.AddWithValue("@itemID", job.itemID);
			updateComm.Parameters.AddWithValue("@technicianID",job.techID);
			updateComm.Parameters.AddWithValue("@dateAssigned", job.dateAssigned);
			int rows = updateComm.ExecuteNonQuery();
			myConn.Close();
			if (rows != 1) throw new Exception("Unexpected Result for Update");
		}
		catch (SqlException ex)
		{
			Console.Write("Error: " + ex.ToString());
		}
	}

	public void completeJob(Jobs job)
	{
		try
		{
			SqlConnection myConn = new SqlConnection(connString);
			myConn.Open();
			string updateString = "UPDATE jobs set partID= @partID, hoursWorked = @hoursWorked, dateCompleted = @dateCompleted where jobID = @jobID";
			SqlCommand updateComm = new SqlCommand(updateString, myConn);
			updateComm.Parameters.AddWithValue("@jobID", job.jobID);
			updateComm.Parameters.Add("@partID", SqlDbType.VarChar).Value = job.partID;
			updateComm.Parameters.Add("@hoursWorked", SqlDbType.VarChar).Value = job.hoursWorked;
			updateComm.Parameters.Add("@dateCompleted", SqlDbType.VarChar).Value = job.dateCompleted;
			int rows = updateComm.ExecuteNonQuery();
			myConn.Close();
			if (rows != 1) throw new Exception("Unexpected Result for Update");
		}
		catch (SqlException ex)
		{
			Console.Write("Error: " + ex.ToString());
		}
	}
}