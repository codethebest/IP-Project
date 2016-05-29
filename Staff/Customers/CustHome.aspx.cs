using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customers_CustHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCustSubmit_Click(object sender, EventArgs e)
    {
        if (rbCustInsert.Checked == true)
        {
            Response.Redirect("CustInsert.aspx");
        }
        else if (rbCustEdit.Checked == true)
        {
            Response.Redirect("CustEdit.aspx");
        }
        else if (rbCustDelete.Checked == true)
        {
            Response.Redirect("CustDelete.aspx");
        }
        else
        {
            Response.Write("Please select a choice");
        }
    }
}