using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Parts_PartsInsert2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getSessionData();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        PartsDTO dto = (PartsDTO)Session["PartsDTO"];
        ModelFacade facade = new ModelFacade();
        Parts parts = facade.createPart(dto);
        PartsDAO dao = new PartsDAO();
        dao.savePart(parts);
        Session.Abandon();
        Response.Redirect("~/Staff/AdminHome.aspx");
    }

    private void getSessionData()
    {
        PartsDTO dto = (PartsDTO)Session["PartsDTO"];
        ModelFacade facade = new ModelFacade();
        Parts parts = facade.createPart(dto);
        lblID.Text = parts.partID;
        lblName.Text = parts.partName;
        lblType.Text = parts.partType;
        lblManufacturer.Text = parts.manufacturer;
        lblDate.Text = parts.datePurchased;
        lblPrice.Text = parts.price;
        lblSupplier.Text = parts.supplier;
        lblInstock.Text = parts.inStock;
    }
}