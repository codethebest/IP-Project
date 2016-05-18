using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Admin_Customers_CustInsert2 : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        getSessionData();
    }

    protected void btnSubmitData_Click(object sender, EventArgs e)
    {
        CustomerFormDTO dto = (CustomerFormDTO)Session["CustomerFormDTO"];
        ModelFacade facade = new ModelFacade();
        Customer customer = facade.createCustomer(dto);
        CustomerDAO doa = new CustomerDAO();
        doa.saveCustomer(customer);
        Session.Abandon();
        Response.Redirect("~/Staff/AdminHome.aspx");
    }

    private void getSessionData()
    {
        CustomerFormDTO dto = (CustomerFormDTO)Session["CustomerFormDTO"];
        ModelFacade facade = new ModelFacade();
        Customer customer = facade.createCustomer(dto);
        lblID.Text = customer.customerID.ToString();
        lblName.Text = customer.customerName;
        lblSurname.Text = customer.customerSurname;
        lblAddress.Text = customer.customerAdress;
        lblPhoneNumber.Text = customer.cutomerPhoneNumber;
        lblAltPhoneNumber.Text = customer.customerAltPhoneNuber;
        lblTotalItems.Text = customer.totalItems.ToString();
    }
}