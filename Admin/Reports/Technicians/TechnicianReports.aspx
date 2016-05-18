<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TechnicianReports.aspx.cs" Inherits="Admin_Reports_TechnicianReports" %>

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
                    Please choose a report type</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbAllTechReport" runat="server" GroupName="rbTech" 
                        Text="All Technicians" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbSearchByIDTechReports" runat="server" GroupName="rbTech" 
                        Text="Search by ID" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbByType" runat="server" GroupName="rbTech" 
                        Text="Search by type" />
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
