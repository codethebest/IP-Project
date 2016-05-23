<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItemsEdit.aspx.cs" Inherits="Staff_Items_ItemsEdit" %>

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
            height: 23px;
        }
        .style3
        {
            height: 23px;
            width: 495px;
        }
        .style4
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Edit item details</td>
            </tr>
            <tr>
                <td class="style3">
                    Please select an item ID:</td>
                <td class="style2">
                    <asp:DropDownList ID="dropDownIDs" runat="server" DataSourceID="SqlDataSource1" 
                        DataTextField="itemID" DataValueField="itemID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style4" colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [itemID] FROM [Items]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style4">
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
