<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerReports.aspx.cs" Inherits="Admin_Reports_CustomerReports" %>

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
                <td>
                    Select Report Type</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbAllCusts" runat="server" GroupName="rbCustReports" 
                        Text="All Customers" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbSearchCustReport" runat="server" 
                        GroupName="rbCustReports" Text="Search For a Customer" />
                </td>
            </tr>
            <tr>
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
