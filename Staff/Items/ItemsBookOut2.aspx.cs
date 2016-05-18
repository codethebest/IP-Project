using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Items_ItemsBookOut2 : System.Web.UI.Page
{
    Items item = new Items();
    protected void Page_Load(object sender, EventArgs e)
    {
        getSessionData();
    }
    protected void calBookOut_SelectionChanged(object sender, EventArgs e)
    {
        item.dateOut = calBookOut.SelectedDate.ToShortDateString();
    }
    protected void btnBookOut_Click(object sender, EventArgs e)
    {
        item.itemID = lblItemID.Text;
        item.custID = lblCustID.Text;
        item.barcode = lblBarcode.Text;
        item.itemType = lblItemType.Text;
        item.description = lblDescription.Text;
        item.model = lblModel.Text;
        item.issue = lblIssue.Text;
        item.dateIn = lblDateIn.Text;
        item.dateOut = calBookOut.SelectedDate.ToShortDateString();
        ItemsDAO dao = new ItemsDAO();
        dao.bookOutItem(item);
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
        lblItemType.Text = item.itemType;
        lblDescription.Text = item.description;
        lblModel.Text = item.model;
        lblIssue.Text = item.issue;
        lblDateIn.Text = item.dateIn;
        Session.Abandon();
    }
}