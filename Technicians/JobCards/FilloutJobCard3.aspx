<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FilloutJobCard3.aspx.cs" Inherits="Technicians_JobCards_FilloutJobCard3" %>

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
            width: 513px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Fill out job card</td>
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
                    Part ID:</td>
                <td>
                    <asp:Label ID="lblPartID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Hours Worked:</td>
                <td>
                    <asp:Label ID="lblHoursWorked" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Date Completed:</td>
                <td>
                    <asp:Label ID="lblDateCompleted" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Submit Data" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
