using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Reports_CustomerReports : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (rbAllCusts.Checked == true)
        {
            Response.Redirect("CustomerReportsAllCust.aspx");
        }
        else if (rbSearchCustReport.Checked == true)
        {
            Response.Redirect("CustomerReportsSearchCust.aspx");
        }
    }
}