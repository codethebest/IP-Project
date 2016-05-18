<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

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
            height: 25px;
        }
        .style3
        {
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <table class="style1">
            <tr>
                <td>
                    Choose a option</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbCustomers" runat="server" GroupName="rbAdmin" 
                        Text="Customers" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:RadioButton ID="rbInvoice" runat="server" GroupName="rbAdmin" 
                        Text="Invoice" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:RadioButton ID="rbItems" runat="server" GroupName="rbAdmin" Text="Items" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:RadioButton ID="rbJobs" runat="server" GroupName="rbAdmin" Text="Jobs" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbParts" runat="server" GroupName="rbAdmin" Text="Parts" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbTechnicians" runat="server" GroupName="rbAdmin" 
                        Text="Technicians" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnChooseOption" runat="server" onclick="btnChooseOption_Click" 
                        Text="Choose Option" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>

    </div>
    </form>
</body>
</html>
