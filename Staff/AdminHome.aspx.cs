using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnChooseOption_Click(object sender, EventArgs e)
    {
        if (rbCustomers.Checked == true)
        {
            Response.Redirect("Customers/CustHome.aspx");
        }
        else if (rbTechnicians.Checked == true)
        {
            Response.Redirect("Technicians/TechniciansHome.aspx");
        }
        else if (rbJobs.Checked == true)
        {
            Response.Redirect("");
        }
        else if (rbParts.Checked == true)
        {
            Response.Redirect("Parts/PartsHome.aspx");
        }
        else if(rbInvoice.Checked == true)
        {
            Response.Redirect("");
        }
        else if (rbItems.Checked == true)
        {
            Response.Redirect("Items/ItemsHome.aspx");
        }
    }
}