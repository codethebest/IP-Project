<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobsEdit.aspx.cs" Inherits="Staff_Jobs_JobsEdit" %>

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
            width: 406px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Re - assign Jobs</td>
            </tr>
            <tr>
                <td class="style2">
                    Select Job ID</td>
                <td>
                    <asp:DropDownList ID="dropDownJobID" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="jobID" DataValueField="jobID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [jobID] FROM [Jobs]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                        Text="Search" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
