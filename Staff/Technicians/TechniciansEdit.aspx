<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TechniciansEdit.aspx.cs" Inherits="Technicians_TechniciansEdit" %>

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
            width: 401px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Select Technician ID</td>
            </tr>
            <tr>
                <td class="style2">
                    Technician ID:</td>
                <td>
                    <asp:DropDownList ID="dropDownTechID" runat="server" 
                        DataSourceID="SqlDataTechID" DataTextField="technicianID" 
                        DataValueField="technicianID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                        Text="Search" />
                </td>
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
