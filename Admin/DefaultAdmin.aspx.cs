using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DefaultAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (rbCust.Checked == true)
        {
            Response.Redirect("~/Staff/Customers/CustHome.aspx");
        }
        else if (rbInvoice.Checked == true)
        {
            Response.Redirect("~/Staff/Customers/CustHome.aspx");
        }
        else if (rbItems.Checked == true)
        {
            Response.Redirect("~/Staff/Customers/CustHome.aspx");
        }
        else if (rbJobs.Checked == true)
        {
            Response.Redirect("~/Staff/Customers/CustHome.aspx");
        }
        else if (rbParts.Checked== true)
        {
            Response.Redirect("~/Staff/Parts/PartsHome.aspx");
        }
        else if (rbTechnicians.Checked == true)
        {
            Response.Redirect("~/Staff/Technicians/TechniciansHome.aspx");
        }
        else if (rbReports.Checked == true)
        {
            Response.Redirect("~/Admin/Reports/ReportsHome.aspx");
        }
        else
        {
            Response.Write("Please select a choice");
        }
    }
}