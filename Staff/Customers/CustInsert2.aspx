<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustInsert2.aspx.cs" Inherits="Admin_Customers_CustInsert2" %>

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
            width: 187px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Customer Details</td>
            </tr>
            <tr>
                <td class="style2">
                    Customer ID:</td>
                <td>
                    <asp:Label ID="lblID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Name:</td>
                <td>
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Surname:</td>
                <td>
                    <asp:Label ID="lblSurname" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Address:</td>
                <td>
                    <asp:Label ID="lblAddress" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Phone Number:</td>
                <td>
                    <asp:Label ID="lblPhoneNumber" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Alternative Phone Number:</td>
                <td>
                    <asp:Label ID="lblAltPhoneNumber" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Total Items:</td>
                <td>
                    <asp:Label ID="lblTotalItems" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btnSubmitData" runat="server" Text="Submit Data" 
                        Width="128px" onclick="btnSubmitData_Click" style="height: 26px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
