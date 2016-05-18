<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PartsReports.aspx.cs" Inherits="Admin_Reports_Parts_PartsReports" %>

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
            width: 483px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Please select type of parts report</td>
            </tr>
            <tr>
                <td class="style2">
                    All Parts</td>
                <td>
                    <asp:RadioButton ID="rbAllParts" runat="server" GroupName="partsReport" 
                        Text="All Parts Report" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Parts in Stock</td>
                <td>
                    <asp:RadioButton ID="rbInStock" runat="server" GroupName="partsReport" 
                        Text="Parts in Stock" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Parts out of stock</td>
                <td>
                    <asp:RadioButton ID="rbNoStock" runat="server" GroupName="partsReport" 
                        Text="Parts out of stock" />
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
