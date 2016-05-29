using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Technicians_JobCards_FilloutJobCard3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getSessionData();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Jobs job = new Jobs();
        job.jobID = lblJobID.Text;
        job.partID = lblPartID.Text;
        job.hoursWorked = lblHoursWorked.Text;
        job.dateCompleted = lblDateCompleted.Text;
        JobsDAO dao = new JobsDAO();
        dao.completeJob(job);
        Session.Abandon();
        Response.Redirect("~/Technicians/TechniciansHome.aspx");
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
        lblPartID.Text = job.partID;
        lblHoursWorked.Text = job.hoursWorked;
        lblDateCompleted.Text = job.dateCompleted;
    }
}