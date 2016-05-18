using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Parts_PartsDelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        String partID = dropDownPartID.SelectedValue;
        PartsDAO dao = new PartsDAO();
        dao.deletePart(partID);
        Response.Redirect("~/Staff/AdminHome.aspx");
    }
}