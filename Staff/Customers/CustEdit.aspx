<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustEdit.aspx.cs" Inherits="Customers_CustEdit" %>

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
            width: 336px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Please Select the Customer&#39;s ID</td>
            </tr>
            <tr>
                <td class="style2">
                    Customer ID:</td>
                <td>
                    <asp:DropDownList ID="dropDownCustID" runat="server" 
                        DataSourceID="SqlDataCustID" DataTextField="customerID" 
                        DataValueField="customerID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                        Text="Search" style="height: 26px" />
                </td>
                <td>
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
