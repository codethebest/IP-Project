using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Items_ItemsHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (rbBookIn.Checked == true)
        {
            Response.Redirect("ItemsBookIn.aspx");
        }
        else if (rbEdit.Checked == true)
        {
            Response.Redirect("ItemsEdit.aspx");
        }
        else if (rbBookOut.Checked == true)
        {
            Response.Redirect("ItemsBookOut.aspx");
        }
        else
        {
            Response.Write("Please select a choice");
        }
    }
}