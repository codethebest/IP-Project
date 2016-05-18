<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PartsInsert2.aspx.cs" Inherits="Admin_Parts_PartsInsert2" %>

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
            width: 365px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Parts Details</td>
            </tr>
            <tr>
                <td class="style2">
                    Part ID:</td>
                <td>
                    <asp:Label ID="lblID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Part Name:</td>
                <td>
                    <asp:Label ID="lblName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Part Type:</td>
                <td>
                    <asp:Label ID="lblType" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Part Manufacturer:</td>
                <td>
                    <asp:Label ID="lblManufacturer" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Purchase Date:</td>
                <td>
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Price:</td>
                <td>
                    <asp:Label ID="lblPrice" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Supplier:</td>
                <td>
                    <asp:Label ID="lblSupplier" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    In Stock:</td>
                <td>
                    <asp:Label ID="lblInstock" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
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
