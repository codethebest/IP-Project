<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DefaultAdmin.aspx.cs" Inherits="Admin_DefaultAdmin" %>

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
            height: 24px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    Admin Home</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbCust" runat="server" GroupName="rbAdmin" 
                        Text="Customers" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbInvoice" runat="server" GroupName="rbAdmin" 
                        Text="Invoice" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbItems" runat="server" GroupName="rbAdmin" Text="Items" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbJobs" runat="server" GroupName="rbAdmin" Text="Jobs" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbParts" runat="server" GroupName="rbAdmin" Text="Parts" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbTechnicians" runat="server" GroupName="rbAdmin" 
                        Text="Technicians" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:RadioButton ID="rbReports" runat="server" GroupName="rbAdmin" 
                        Text="Reports" />
                </td>
            </tr>
            <tr>
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
