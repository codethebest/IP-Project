using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Jobs_JobsIssue2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getSessionData();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        JobsDTO dto = (JobsDTO)Session["JobsDTO"];
        ModelFacade facade = new ModelFacade();
        Jobs job = facade.createJob(dto);
        JobsDAO dao = new JobsDAO();
        dao.issueJob(job);
        Session.Abandon();
        Response.Redirect("~/Staff/AdminHome.aspx");
    }

    private void getSessionData()
    {
        JobsDTO dto = (JobsDTO)Session["JobsDTO"];
        ModelFacade facade = new ModelFacade();
        Jobs job = facade.createJob(dto);
        lblJobID.Text = job.jobID;
        lblItemID.Text = job.itemID;
        lblTechID.Text = job.techID;
        lblDateAssigned.Text = job.dateAssigned;
    }
}