using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Customers_CustEdit2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        getSessionData();
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Customer customer = new Customer();
        customer.customerID = lblNewID.Text;
        customer.customerName = txtNewName.Text;
        customer.customerSurname = txtNewSurname.Text;
        customer.customerAdress = txtNewAddress.Text;
        customer.cutomerPhoneNumber = txtNewPrimNumber.Text;
        customer.customerAltPhoneNuber = txtNewAltNumber.Text;
        customer.totalItems = dropDownItems.SelectedItem.Text;
        CustomerDAO dao = new CustomerDAO();
        dao.updateCustomer(customer);
        Session.Abandon();
        Response.Redirect("~/Staff/AdminHome.aspx");
    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtNewName.Text = "";
        txtNewSurname.Text = "";
        txtNewAddress.Text = "";
        txtNewPrimNumber.Text = "";
        txtNewAltNumber.Text = "";
    }

    private void getSessionData()
    {
        CustomerFormDTO dto = (CustomerFormDTO)Session["CustomerDTO"];
        ModelFacade facade = new ModelFacade();
        Customer customer = facade.createCustomer(dto);
        lblID.Text = customer.customerID.ToString();
        lblNewID.Text = lblID.Text;
        lblName.Text = customer.customerName;
        lblSurname.Text = customer.customerSurname;
        lblAddress.Text = customer.customerAdress;
        lblPhoneNumber.Text = customer.cutomerPhoneNumber;
        lblAltPhoneNumber.Text = customer.customerAltPhoneNuber;
        lblTotalItems.Text = customer.totalItems.ToString();
    }
}