<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InvoiceReports.aspx.cs" Inherits="Admin_Reports_Invoices_InvoiceReports" %>

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
                    Invoice Reports</td>
            </tr>
            <tr>
                <td>
                    All Invoices</td>
                <td>
                    <asp:RadioButton ID="rbInvAll" runat="server" GroupName="rbinv" 
                        Text="All invoices" />
                </td>
            </tr>
            <tr>
                <td>
                    Invoices by Job ID</td>
                <td>
                    <asp:RadioButton ID="rbInvJobs" runat="server" GroupName="rbinv" 
                        Text="Invoices by Job" />
                </td>
            </tr>
            <tr>
                <td>
                    Invoices by Customer ID:</td>
                <td>
                    <asp:RadioButton ID="rbInvByCust" runat="server" GroupName="rbinv" 
                        Text="Invoices By Customer" />
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
