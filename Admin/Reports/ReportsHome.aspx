<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReportsHome.aspx.cs" Inherits="Admin_Reports_ReportsHome" %>

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
                    Select Report Type</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RadioButton ID="rbCustReports" runat="server" GroupName="rbReports" 
                        Text="Customer Reports" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RadioButton ID="rbInvoice" runat="server" GroupName="rbReports" 
                        Text="Invoice Reports" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RadioButton ID="rbItems" runat="server" GroupName="rbReports" 
                        Text="Item Reports" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RadioButton ID="rbJobReports" runat="server" GroupName="rbReports" 
                        Text="Job Reports" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RadioButton ID="rbPartsReports" runat="server" GroupName="rbReports" 
                        Text="Parts Reports" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RadioButton ID="rbTechReports" runat="server" GroupName="rbReports" 
                        Text="Technician Reports" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Submit" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
