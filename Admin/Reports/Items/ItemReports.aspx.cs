using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Reports_Items_ItemReports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (rbAllItems.Checked == true)
        {
            Response.Redirect("ItemReportsAll.aspx");
        }
        else if (rbItemsStillBookedIn.Checked == true)
        {
            Response.Redirect("ItemReportsNotBookedOut.aspx");
        }
        else if (rbItemsCustID.Checked == true)
        {
            Response.Redirect("ItemReportByCustID.aspx");
        }
    }
}