<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobReports.aspx.cs" Inherits="Admin_Reports_Jobs_JobReports" %>

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
            width: 528px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Job Reports</td>
            </tr>
            <tr>
                <td class="style3">
                    All Jobs</td>
                <td>
                    <asp:RadioButton ID="rbAllJobs" runat="server" GroupName="rbJobs" 
                        Text="All Jobs" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Search for job by ID</td>
                <td>
                    <asp:RadioButton ID="rbJobsByID" runat="server" GroupName="rbJobs" 
                        Text="Jobs  by ID" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Search for Jobs by technician</td>
                <td>
                    <asp:RadioButton ID="rbJobsByTechnician" runat="server" GroupName="rbJobs" 
                        Text="Jobs by a Technician" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Search for completed jobs</td>
                <td>
                    <asp:RadioButton ID="rbCompletedJobs" runat="server" GroupName="rbJobs" 
                        Text="Completed Jobs" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    search for uncompleted jobs</td>
                <td>
                    <asp:RadioButton ID="rbUncompletedJobs" runat="server" GroupName="rbJobs" 
                        Text="Un-finished jobs" />
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
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
