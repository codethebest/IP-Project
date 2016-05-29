
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobsIssue2.aspx.cs" Inherits="Staff_Jobs_JobsIssue2" %>

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
            width: 370px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Confrim Job details</td>
            </tr>
            <tr>
                <td class="style2">
                    Job ID:</td>
                <td>
                    <asp:Label ID="lblJobID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Item ID:</td>
                <td>
                    <asp:Label ID="lblItemID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Technician ID:</td>
                <td>
                    <asp:Label ID="lblTechID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Date Assigned:</td>
                <td>
                    <asp:Label ID="lblDateAssigned" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                        onclick="btnSubmit_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
