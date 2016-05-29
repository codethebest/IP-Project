using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Reports_ReportsHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (rbCustReports.Checked == true)
        {
            Response.Redirect("Customers/CustomerReports.aspx");
        }
        else if(rbTechReports.Checked == true)
        {
            Response.Redirect("Technicians/TechnicianReports.aspx");
        }
        else if (rbPartsReports.Checked == true)
        {
            Response.Redirect("Parts/PartsReports.aspx");
        }
        else if (rbItems.Checked == true)
        {
            Response.Redirect("Items/ItemReports.aspx");
        }
        else if (rbJobReports.Checked == true)
        {
            Response.Redirect("Jobs/JobReports.aspx");
        }
        else if (rbInvoice.Checked == true)
        {
            Response.Redirect("");
        }
        else
        {
            Response.Write("Please select a choice");
        }
    }
}