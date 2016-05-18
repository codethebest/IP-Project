using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Items_ItemsBookIn2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getSessionData();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        ItemsDTO dto = (ItemsDTO)Session["ItemsDTO"];
        ModelFacade facade = new ModelFacade();
        Items item = facade.createItem(dto);
        ItemsDAO dao = new ItemsDAO();
        dao.bookInItem(item);
        Session.Abandon();
        Response.Redirect("~/Staff/AdminHome.aspx");
    }

    private void getSessionData()
    {
        ItemsDTO dto = (ItemsDTO)Session["ItemsDTO"];
        ModelFacade facade = new ModelFacade();
        Items item = facade.createItem(dto);
        lblItemID.Text = item.itemID;
        lblCustID.Text = item.custID;
        lblBarcode.Text = item.barcode;
        lblType.Text = item.itemType;
        lblDescription.Text = item.description;
        lblModel.Text = item.model;
        lblIssue.Text = item.issue;
        lblDateIn.Text = item.dateIn;
    }
}