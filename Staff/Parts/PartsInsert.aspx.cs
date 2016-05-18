using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Parts_PartsInsert : System.Web.UI.Page
{
    private string connString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
    private int totalRecords = 0;
    private int partID = 5001;
    PartsDTO dto = new PartsDTO();

    protected void Page_Load(object sender, EventArgs e)
    {
        setPartID();
    }
    protected void btnNext_Click(object sender, EventArgs e)
    {
        String name = txtName.Text;
        String type = dropDownType.SelectedValue;
        String manufacturer = txtManufacturer.Text;
        String price = txtPrice.Text;
        String supplier = txtSupplier.Text;
        String inStock = dropDownInstock.SelectedValue;
        dto.id = partID.ToString();
        dto.name = name;
        dto.type = type;
        dto.manufacturer = manufacturer;
        dto.datePurchased = calDatePurchased.SelectedDate.ToShortDateString();
        dto.price = price;
        dto.supplier = supplier;
        dto.inStock = inStock;
        Session["PartsDTO"] = dto;
        Server.Transfer("PartsInsert2.aspx", true);
    }
    protected void calDatePurchased_SelectionChanged(object sender, EventArgs e)
    {
        dto.datePurchased = calDatePurchased.SelectedDate.ToShortDateString();
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        dropDownType.SelectedIndex = 0;
        txtManufacturer.Text = "";
        txtPrice.Text = "";
        txtSupplier.Text = "";
        dropDownInstock.SelectedIndex = 0;
    }

    private void setPartID()
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        SqlCommand select = new SqlCommand("Select * from Parts", conn);
        SqlDataReader reader = select.ExecuteReader();
        while (reader.Read())
        {
            totalRecords++;
        }
        conn.Close();
        partID += totalRecords;
        txtID.Text = partID.ToString();
    }

}