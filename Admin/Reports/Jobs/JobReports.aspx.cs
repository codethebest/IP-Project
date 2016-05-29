using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Reports_Jobs_JobReports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (rbAllJobs.Checked == true)
        {
            Response.Redirect("JobReportsAll.aspx");
        }
        else if (rbJobsByID.Checked == true)
        {
            Response.Redirect("JobReportsByID.aspx");
        }
        else if (rbJobsByTechnician.Checked == true)
        {
            Response.Redirect("JobReportsTechID.aspx");
        }
        else if (rbCompletedJobs.Checked == true)
        {
            Response.Redirect("JobReportsCompleted.aspx");
        }
        else if (rbUncompletedJobs.Checked == true)
        {
            Response.Redirect("JobReportsNotCompleted.aspx");
        }
    }
}