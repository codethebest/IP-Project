<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobsHome.aspx.cs" Inherits="Staff_Jobs_JobsHome" %>

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
                    Jobs
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:RadioButton ID="rbIssueJob" runat="server" GroupName="jobs" 
                        Text="Issue new job" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbEditJobs" runat="server" GroupName="jobs" 
                        Text="Edit Jobs" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Submit" Width="88px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
