<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItemsBookOut.aspx.cs" Inherits="Staff_Items_ItemsBookOut" %>

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
            width: 345px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Bookout Items</td>
            </tr>
            <tr>
                <td class="style2">
                    Select Item ID</td>
                <td>
                    <asp:DropDownList ID="dropDownItemID" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="itemID" 
                        DataValueField="itemID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnNext" runat="server" onclick="btnNext_Click" Text="Next" />
                </td>
            </tr>
        </table>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [itemID] FROM [Items]"></asp:SqlDataSource>
    </form>
</body>
</html>
