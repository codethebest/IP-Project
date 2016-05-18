<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TechniciansDelete.aspx.cs" Inherits="Technicians_TechniciansDelete" %>

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
            width: 439px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Delete Technician Details</td>
            </tr>
            <tr>
                <td class="style2">
                    Enter Technician ID</td>
                <td>
                    <asp:DropDownList ID="dropDownTechID" runat="server" 
                        DataSourceID="SqlDataTechID" DataTextField="technicianID" 
                        DataValueField="technicianID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnDelete" runat="server" Text="Delete Technician" 
                        onclick="btnDelete_Click" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    <asp:SqlDataSource ID="SqlDataTechID" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [technicianID] FROM [Technicians]">
    </asp:SqlDataSource>
    </form>
</body>
</html>
