using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Technicians_TechniciansHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (rbJobCard.Checked == true)
        {
            Response.Redirect("JobCards/FilloutJobCard.aspx");
        }
        else if (rbViewJobs.Checked == true)
        {
            Response.Redirect("MyJobs/MyJobsView.aspx");
        }
    }
}