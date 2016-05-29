using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Reports_Invoices_InvoiceReports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (rbInvAll.Checked == true)
        {
            Response.Redirect("InvoiceReportsAll.aspx");
        }
        else if (rbInvByCust.Checked == true)
        {
            Response.Redirect("InvoiceReportsByCust.aspx");
        }
        else if (rbInvJobs.Checked == true)
        {
            Response.Redirect("InvoiceReportsByJob.aspx");
        }
    }
}