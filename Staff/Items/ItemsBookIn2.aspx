<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItemsBookIn2.aspx.cs" Inherits="Staff_Items_ItemsBookIn2" %>

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
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Item Details</td>
            </tr>
            <tr>
                <td>
                    Item ID:</td>
                <td>
                    <asp:Label ID="lblItemID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Customer ID:</td>
                <td>
                    <asp:Label ID="lblCustID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Barcode:</td>
                <td>
                    <asp:Label ID="lblBarcode" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Item Type:</td>
                <td>
                    <asp:Label ID="lblType" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Description:</td>
                <td>
                    <asp:Label ID="lblDescription" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Model:</td>
                <td>
                    <asp:Label ID="lblModel" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Issue:</td>
                <td>
                    <asp:Label ID="lblIssue" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Date Booked In:</td>
                <td>
                    <asp:Label ID="lblDateIn" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Submit" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
