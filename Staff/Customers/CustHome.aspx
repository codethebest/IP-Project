<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustHome.aspx.cs" Inherits="Customers_CustHome" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Customer Admin Area</h1>

    </div>
    <table class="style1">
        <tr>
            <td>
                <asp:RadioButton ID="rbCustInsert" runat="server" GroupName="rbCust" 
                    Text="Add New Customer Details" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:RadioButton ID="rbCustEdit" runat="server" GroupName="rbCust" 
                    Text="Edit Customer Details" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:RadioButton ID="rbCustDelete" runat="server" GroupName="rbCust" 
                    Text="Remove Customer Details" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnCustSubmit" runat="server" Text="Submit Choice" 
                    onclick="btnCustSubmit_Click" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
