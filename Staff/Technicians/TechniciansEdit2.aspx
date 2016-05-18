<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TechniciansEdit2.aspx.cs" Inherits="Admin_Technicians_TechniciansEdit2" %>

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
            width: 193px;
        }
        .style3
        {
            width: 247px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="4">
                    Edit Technician Details</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    Old Details</td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    New Details</td>
            </tr>
            <tr>
                <td class="style2">
                    Technician ID:</td>
                <td>
                    <asp:Label ID="lblIDOld" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblIDNew" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Name:</td>
                <td>
                    <asp:Label ID="lblNameOld" runat="server"></asp:Label>
                </td>
                <td class="style3">
                    New Name</td>
                <td>
                    <asp:TextBox ID="txtNewName" runat="server" Width="146px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Type</td>
                <td>
                    <asp:Label ID="lblTypeOld" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style3">
                    New Type</td>
                <td>
                    <asp:DropDownList ID="dropDownNewType" runat="server">
                        <asp:ListItem>Hardware Technician</asp:ListItem>
                        <asp:ListItem>Software Technician</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnClear" runat="server" onclick="btnClear_Click" 
                        Text="Clear All" Width="87px" />
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Submit " Width="96px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
