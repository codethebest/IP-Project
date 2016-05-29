using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Jobs_JobsEdit2 : System.Web.UI.Page
{
    Jobs job = new Jobs();
    protected void Page_Load(object sender, EventArgs e)
    {
        getSessionData();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        String newID = lblID.Text;
        String newItem = dropDownItemID.SelectedValue;
        String newTechnician = dropDownTechID.SelectedValue;
        job.jobID = newID;
        job.itemID = newItem;
        job.techID = newTechnician;
        job.dateAssigned = calNewDate.SelectedDate.ToShortDateString();
        JobsDAO dao = new JobsDAO();
        dao.reIssueJob(job);
        Session.Abandon();
        Response.Redirect("~/Staff/AdminHome.aspx");
    }
    protected void calNewDate_SelectionChanged(object sender, EventArgs e)
    {
        job.dateAssigned = calNewDate.SelectedDate.ToShortDateString();
    }

    private void getSessionData()
    {
        JobsDTO dto = (JobsDTO)Session["JobsDTO"];
        ModelFacade facade = new ModelFacade();
        Jobs job = facade.createJob(dto);
        lblID.Text = job.jobID;
        lblJobID.Text = job.jobID;
        lblItemID.Text = job.itemID;
        lblTechnicianID.Text = job.techID;
        lblDate.Text = job.dateAssigned;
    }
}