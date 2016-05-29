using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Jobs_JobsHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (rbIssueJob.Checked == true)
        {
            Response.Redirect("JobsIssue.aspx");
        }
        else if (rbEditJobs.Checked == true)
        {
            Response.Redirect("JobsEdit.aspx");
        }
        else
        {
            Response.Write("Please select a choice");
        }
    }
}