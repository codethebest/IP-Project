<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItemReports.aspx.cs" Inherits="Admin_Reports_Items_ItemReports" %>

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
            width: 245px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Item Reports</td>
            </tr>
            <tr>
                <td class="style2">
                    All Items</td>
                <td>
                    <asp:RadioButton ID="rbAllItems" runat="server" GroupName="rbItems" 
                        Text="Report of all items" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Items not booked out</td>
                <td>
                    <asp:RadioButton ID="rbItemsStillBookedIn" runat="server" GroupName="rbItems" 
                        Text="Items not booked out" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Items by customer</td>
                <td>
                    <asp:RadioButton ID="rbItemsCustID" runat="server" GroupName="rbItems" 
                        Text="items By Customer" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                        Text="Search" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
