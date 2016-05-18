<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TechniciansInsert.aspx.cs" Inherits="Technicians_TechniciansInsert" %>

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
            width: 317px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Insert New Technician Details</td>
            </tr>
            <tr>
                <td class="style2">
                    Technician ID:</td>
                <td>
                    <asp:TextBox ID="txtTechID" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Name:</td>
                <td>
                    <asp:TextBox ID="txtTechName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Type:</td>
                <td>
                    <asp:DropDownList ID="dropDownType" runat="server">
                        <asp:ListItem>Hardware Technician</asp:ListItem>
                        <asp:ListItem>Software Technician</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btnNext" runat="server" onclick="btnNext_Click" Text="Next" />
                </td>
                <td>
                    <asp:Button ID="btnClear" runat="server" Text="Clear All" 
                        onclick="btnClear_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
