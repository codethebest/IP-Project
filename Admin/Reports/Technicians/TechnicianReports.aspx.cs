using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Reports_TechnicianReports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (rbAllTechReport.Checked == true)
        {
            Response.Redirect("TechnicianReportsAll.aspx");
        }
        else if (rbSearchByIDTechReports.Checked == true)
        {
            Response.Redirect("TechnicianReportsByID.aspx");
        }
        else if (rbByType.Checked == true)
        {
            Response.Redirect("TechnicianReportsByType.aspx");
        }
    }
}