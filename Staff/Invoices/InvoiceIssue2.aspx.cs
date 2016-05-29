using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Staff_Invoices_InvoiceIssue2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getSessionData();
    }
    protected void btnPrint_Click(object sender, EventArgs e)
    {
        InvoicesDTO dto = (InvoicesDTO)Session["invoiceDTO"];
        ModelFacade facade = new ModelFacade();
        Invoices invoice = facade.createInvoice(dto);
        InvoicesDAO dao = new InvoicesDAO();
        dao.saveInvoice(invoice);
        Session.Abandon();
        Response.Redirect("~/Staff/AdminHome.aspx");
    }

    private void getSessionData()
    {
        InvoicesDTO dto = (InvoicesDTO)Session["invoiceDTO"];
        ModelFacade facade = new ModelFacade();
        Invoices invoice = facade.createInvoice(dto);
        lblDateIssued.Text = invoice.dateIssued;
        lblinvoiceID.Text = invoice.invoiceID;
        lblJobID.Text = invoice.jobID;
        lblCustID.Text = invoice.custID;
        lblCustName.Text = invoice.custName + " " + invoice.custSurname;
        lblItemID.Text = invoice.itemID;
        lblTechID.Text = invoice.techID;
        lblTechName.Text = invoice.techName;
        lblHoursWorked.Text = invoice.hoursWorked;
        lblTotalDue.Text = "R " + invoice.billAmount;
    }
}