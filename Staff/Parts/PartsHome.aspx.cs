﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Parts_PartsHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (rbInsert.Checked == true)
        {
            Response.Redirect("PartsInsert.aspx");
        }
        else if (rbEdit.Checked == true)
        {
            Response.Redirect("PartsEdit.aspx");
        }
        else if(rbRemove.Checked == true)
        {
            Response.Redirect("PartsDelete.aspx");
        }
    }
}