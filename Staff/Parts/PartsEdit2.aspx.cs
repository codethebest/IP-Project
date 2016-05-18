using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Parts_PartsEdit2 : System.Web.UI.Page
{
    Parts partObj = new Parts();
    protected void Page_Load(object sender, EventArgs e)
    {
        getSessionData();
    }
    protected void calNewDate_SelectionChanged(object sender, EventArgs e)
    {
        partObj.datePurchased = calNewDate.SelectedDate.ToShortDateString();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        partObj.partID = lblID.Text;
        partObj.partName = txtNewName.Text;
        partObj.partType = dropDownNewType.SelectedValue;
        partObj.manufacturer = txtNewManu.Text;
        partObj.datePurchased = calNewDate.SelectedDate.ToShortDateString();
        partObj.price = txtNewPrice.Text;
        partObj.supplier = txtNewSupplier.Text;
        partObj.inStock = dropDownInStock.SelectedValue;
        PartsDAO dao = new PartsDAO();
        dao.updatePart(partObj);
        Session.Abandon();
        Response.Redirect("~/Staff/AdminHome.aspx");
    }

    private void getSessionData()
    {
        PartsDTO dto = (PartsDTO)Session["PartsDTO"];
        ModelFacade facade = new ModelFacade();
        Parts partObj = facade.createPart(dto);
        lblOldID.Text = partObj.partID;
        lblOldName.Text = partObj.partName;
        lblOldType.Text = partObj.partType;
        lblOldDate.Text = partObj.datePurchased;
        lblOldPrice.Text = partObj.price;
        lblOldSupplier.Text = partObj.supplier;
        lblInstock.Text = partObj.inStock;
        lblID.Text = partObj.partID;
    }
}