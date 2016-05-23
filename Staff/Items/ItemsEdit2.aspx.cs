using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Items_ItemsEdit2 : System.Web.UI.Page
{
    Items item = new Items();
    protected void Page_Load(object sender, EventArgs e)
    {
        getSessionData();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        item.itemID = lblNewID.Text;
        item.custID = dropDownCustID.SelectedValue;
        item.barcode = dropDownCustID.SelectedValue + " " + lblNewID.Text;
        item.itemType = dropDrownType.SelectedValue;
        item.description = txtDescription.Text;
        item.model = txtModel.Text;
        item.issue = txtIssue.Text;
        item.dateIn = calDateIn.SelectedDate.ToShortDateString();
        ItemsDAO dao = new ItemsDAO();
        dao.updateItem(item);
        Session.Abandon();
        Response.Redirect("~/Staff/AdminHome.aspx");
    }

    private void getSessionData()
    {
        ItemsDTO dto = (ItemsDTO)Session["ItemDTO"];
        ModelFacade facade = new ModelFacade();
        Items item = facade.createItem(dto);
        lblNewID.Text = item.itemID;
        lblOldID.Text = item.itemID;
        lblOldCust.Text = item.custID;
        lblOldBarcode.Text = item.barcode;
        lblOldType.Text = item.itemType;
        lblOldDescription.Text = item.description;
        lblOldModel.Text = item.model;
        lblOldIssue.Text = item.issue;
        lblOldDate.Text = item.dateIn;
    }
    protected void calDateIn_SelectionChanged(object sender, EventArgs e)
    {
        item.dateIn = calDateIn.SelectedDate.ToShortDateString();
    }
}