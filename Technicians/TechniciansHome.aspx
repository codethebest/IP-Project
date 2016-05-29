<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TechniciansHome.aspx.cs" Inherits="Technicians_TechniciansHome" %>

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
            width: 495px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Select a mode</td>
            </tr>
            <tr>
                <td class="style2">
                    View My Jobs</td>
                <td>
                    <asp:RadioButton ID="rbViewJobs" runat="server" GroupName="rbTech" 
                        Text="View Jobs" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Fill out job card</td>
                <td>
                    <asp:RadioButton ID="rbJobCard" runat="server" GroupName="rbTech" 
                        Text="Fill out job card" />
                </td>
            </tr>
            <tr>
                <td class="style2">
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
