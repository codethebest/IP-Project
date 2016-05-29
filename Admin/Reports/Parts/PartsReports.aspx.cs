using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Reports_Parts_PartsReports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (rbAllParts.Checked == true)
        {
            Response.Redirect("PartReportsAll.aspx");
        }
        else if (rbInStock.Checked == true)
        {
            Response.Redirect("PartsReportInStock.aspx");
        }
        else if (rbNoStock.Checked == true)
        {
            Response.Redirect("PartsReportOutOfStock.aspx");
        }
        else
        {
            Response.Write("Please select a choice");
        }
    }
}