<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InvoiceIssue2.aspx.cs" Inherits="Staff_Invoices_InvoiceIssue2" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

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
            width: 163px;
        }
        .style4
        {
            width: 277px;
        }
        .style5
        {
            width: 360px;
        }
    </style>
    <script language="javascript" type="text/javascript">
        function callPrint(Strid) {
            var prtContent = document.getElementById(Strid);
            var winPrint = window.open(",", 'left=0, top =0,width =1,toolbar = 0, scrollbars =0,status =0');
            winPrint.document.write(prtContent.innerHTML);
            winPrint.focus();
            winPrint.print();
            winPrint.close();
            prtContent.innerHTML = strOldOne;
            //JavaScript Code credit to codeProject.com users
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id = "bill">
        <table class="style1">
            <tr>
                <td colspan="5">
                    <h2>Computer Specialists PC Repairs</h2></td>
            </tr>
            <tr>
                <td class="style4">
                    Date Issued:</td>
                <td class="style3">
                    <asp:Label ID="lblDateIssued" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    Invoice ID</td>
                <td>
                    <asp:Label ID="lblinvoiceID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    Customer Details</td>
                <td class="style2">
                    &nbsp;</td>
                <td colspan="2">
                    Technician Details</td>
            </tr>
            <tr>
                <td class="style4">
                    Customer ID:</td>
                <td class="style3">
                    <asp:Label ID="lblCustID" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    Technician ID: </td>
                <td>
                    <asp:Label ID="lblTechID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Customer Name:</td>
                <td class="style3">
                    <asp:Label ID="lblCustName" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    Job ID:</td>
                <td>
                    <asp:Label ID="lblJobID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Item ID:</td>
                <td class="style3">
                    <asp:Label ID="lblItemID" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    Technician Name:&nbsp; </td>
                <td>
                    <asp:Label ID="lblTechName" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style5">
                    Total Hours Worked:</td>
                <td>
                    <asp:Label ID="lblHoursWorked" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    Total Due: </td>
                <td class="style2">
                    &nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="lblTotalDue" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="5">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
                <td class="style2">
                    &nbsp;</td>
                <td colspan="2">
                </td>
            </tr>
            </table>
                </div>
                <asp:Button ID="btnPrint" runat="server" onclick="btnPrint_Click" onclientclick = "javascript:callPrint('bill');" xmlns:asp="#unknown"
                        Text="print" />
    </div>
    </form>
</body>
</html>
