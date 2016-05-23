using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Technicians_TechniciansInsert2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getSessionData();
    }
    protected void btnInsert_Click(object sender, EventArgs e)
    {
        TechnicianDTO dto = (TechnicianDTO)Session["TechnicianDTO"];
        ModelFacade facade = new ModelFacade();
        Technician technician = facade.createTechnician(dto);
        TechnicianDAO dao = new TechnicianDAO();
        dao.saveTechnician(technician);
        Session.Abandon();
        Response.Redirect("~/Staff/AdminHome.aspx");
    }

    private void getSessionData()
    {
        TechnicianDTO dto = (TechnicianDTO)Session["TechnicianDTO"];
        ModelFacade facade = new ModelFacade();
        Technician technician = facade.createTechnician(dto);
        lblID.Text = technician.technicianID;
        lblName.Text = technician.technicianName;
        lblType.Text = technician.technicianType;
        
    }
}