using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Technicians_TechniciansEdit2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getSessionData();
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtNewName.Text = "";
        dropDownNewType.SelectedIndex = 0;
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Technician tech = new Technician();
        tech.technicianID = lblIDNew.Text;
        tech.technicianName = txtNewName.Text;
        tech.technicianType = dropDownNewType.SelectedValue.ToString();
        TechnicianDAO dao = new TechnicianDAO();
        dao.updateTechnician(tech);
        Session.Abandon();
        Response.Redirect("~/Staff/AdminHome.aspx");
        
    }

    private void getSessionData()
    {
        TechnicianDTO dto = (TechnicianDTO)Session["TechnicianDTO"];
        ModelFacade facade = new ModelFacade();
        Technician tech = facade.createTechnician(dto);
        lblIDOld.Text = tech.technicianID;
        lblIDNew.Text = tech.technicianID;
        lblNameOld.Text = tech.technicianName;
        lblTypeOld.Text = tech.technicianType;

    }
}