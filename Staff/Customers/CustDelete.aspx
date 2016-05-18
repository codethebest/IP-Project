<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustDelete.aspx.cs" Inherits="Customers_CustDelete" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
        }
        .style3
        {
            width: 467px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Delete Customer Record</td>
            </tr>
            <tr>
                <td class="style3">
                    Select Customer ID:</td>
                <td>
                    <asp:DropDownList ID="dropDownCustID" runat="server" 
                        DataSourceID="SqlDataCustID" DataTextField="customerID" 
                        DataValueField="customerID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Button ID="btnDeleteCust" runat="server" onclick="btnDeleteCust_Click" 
                        Text="Delete Customer" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <asp:SqlDataSource ID="SqlDataCustID" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [customerID] FROM [Customers]"></asp:SqlDataSource>
    </form>
</body>
</html>
