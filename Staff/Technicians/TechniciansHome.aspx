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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Technician Admin Area</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbAddTechnicians" runat="server" GroupName="rbTechnicians" 
                        Text="Add Technician Details" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbEditTechnicians" runat="server" 
                        GroupName="rbTechnicians" Text="Edit Technician Details" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbDeleteTechnicians" runat="server" 
                        GroupName="rbTechnicians" Text="Delete Technicians" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Submit Choice" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
