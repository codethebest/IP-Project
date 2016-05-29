using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Staff_Items_ItemsBookIn : System.Web.UI.Page
{
    private string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    private int totalRecords = 0;
    private int itemID = 3001;
    ItemsDTO item = new ItemsDTO();

    protected void Page_Load(object sender, EventArgs e)
    {
        setItemID();
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        String barcode = dropDownCustID.SelectedValue + " " + itemID.ToString();
        String id = itemID.ToString();
        String custID = dropDownCustID.SelectedValue;
        String type = dropDrownType.SelectedValue;
        String description = txtDescription.Text;
        String model = txtModel.Text;
        String issue = txtIssue.Text;
        item.itemID = id;
        item.custID = custID;
        item.barcode = barcode;
        item.itemType = type;
        item.description = description;
        item.model = model;
        item.issue = issue;
        item.dateIn = calDateIn.SelectedDate.ToShortDateString();
        Session["ItemsDTO"] = item;
        Server.Transfer("ItemsBookIn2.aspx");
    }

    protected void calDateIn_SelectionChanged(object sender, EventArgs e)
    {
        item.dateIn = calDateIn.SelectedDate.ToShortDateString();
    }

    private void setItemID()
    {
        try
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand select = new SqlCommand("Select * from Items", conn);
            SqlDataReader reader = select.ExecuteReader();
            while (reader.Read())
            {
                totalRecords++;
            }
            conn.Close();
            itemID += totalRecords;
            txtItemID.Text = itemID.ToString();
        }
        catch (SqlException ex)
        {
            Console.Write("Error: " + ex.ToString());
        }
        
    }
    protected void dropDownCustID_SelectedIndexChanged(object sender, EventArgs e)
    {
        String barcode = dropDownCustID.SelectedValue + " " + itemID.ToString();
        txtBarcode.Text = barcode;
    }
}