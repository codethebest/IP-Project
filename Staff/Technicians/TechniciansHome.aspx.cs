using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Technicians_TechniciansHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (rbAddTechnicians.Checked == true)
        {
            Response.Redirect("TechniciansInsert.aspx");
        }
        else if (rbEditTechnicians.Checked == true)
        {
            Response.Redirect("TechniciansEdit.aspx");
        }
        else if (rbDeleteTechnicians.Checked == true)
        {
            Response.Redirect("TechniciansDelete.aspx");
        }
    }
}