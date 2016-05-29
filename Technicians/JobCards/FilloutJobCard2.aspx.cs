using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Technicians_JobCards_FilloutJobCard2 : System.Web.UI.Page
{
    JobsDTO job = new JobsDTO();
    protected void Page_Load(object sender, EventArgs e)
    {
        getSessionData();
    }

    protected void btnNext_Click(object sender, EventArgs e)
    {
        job.jobID = lblJobID.Text;
        job.itemID = lblItemID.Text;
        job.techID = lblTechnicianID.Text;
        job.dateAssigned = lblDate.Text;
        job.partID = dropDownPartID.SelectedValue;
        job.hoursWorked = dropDownHoursWorked.SelectedValue;
        job.dateCompleted = calDateCompleted.SelectedDate.ToShortDateString();
        Session["JobsDTO"] = job;
        Server.Transfer("FilloutJobCard3.aspx");
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        job.dateCompleted = calDateCompleted.SelectedDate.ToShortDateString();
    }

    private void getSessionData()
    {
        JobsDTO dto = (JobsDTO)Session["JobsDTO"];
        ModelFacade facade = new ModelFacade();
        Jobs job = facade.createJob(dto);
        lblJobID.Text = job.jobID;
        lblItemID.Text = job.itemID;
        lblTechnicianID.Text = job.techID;
        lblDate.Text = job.dateAssigned;
    }
}