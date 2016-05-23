<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItemsEdit2.aspx.cs" Inherits="Staff_Items_ItemsEdit2" %>

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
            width: 285px;
        }
        .style3
        {
            width: 165px;
        }
        .style4
        {
            width: 218px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="4">
                    Book in items</td>
            </tr>
            <tr>
                <td class="style2">
                    Item ID:</td>
                <td class="style3">
                    <asp:Label ID="lblOldID" runat="server"></asp:Label>
                </td>
                <td class="style4">
                    New Item ID:</td>
                <td>
                    <asp:Label ID="lblNewID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Customer ID:</td>
                <td class="style3">
                    <asp:Label ID="lblOldCust" runat="server"></asp:Label>
                </td>
                <td class="style4">
                    New Customer ID:</td>
                <td>
                    <asp:DropDownList ID="dropDownCustID" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="customerID" 
                        DataValueField="customerID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Barcode:</td>
                <td class="style3">
                    <asp:Label ID="lblOldBarcode" runat="server"></asp:Label>
                </td>
                <td class="style4">
                    New Barcode:</td>
                <td>
                    <asp:TextBox ID="txtBarcode" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    item Type:</td>
                <td class="style3">
                    <asp:Label ID="lblOldType" runat="server"></asp:Label>
                </td>
                <td class="style4">
                    New Item: type:</td>
                <td>
                    <asp:DropDownList ID="dropDrownType" runat="server">
                        <asp:ListItem>Laptop</asp:ListItem>
                        <asp:ListItem>Desktop</asp:ListItem>
                        <asp:ListItem>Tablet</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Description:</td>
                <td class="style3">
                    <asp:Label ID="lblOldDescription" runat="server"></asp:Label>
                </td>
                <td class="style4">
                    New Item Description:</td>
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" Height="89px" 
                        TextMode="MultiLine" Width="303px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Model:</td>
                <td class="style3">
                    <asp:Label ID="lblOldModel" runat="server"></asp:Label>
                </td>
                <td class="style4">
                    New Item Model:</td>
                <td>
                    <asp:TextBox ID="txtModel" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Issue with Item</td>
                <td class="style3">
                    <asp:Label ID="lblOldIssue" runat="server"></asp:Label>
                </td>
                <td class="style4">
                    New Item Issue:</td>
                <td>
                    <asp:TextBox ID="txtIssue" runat="server" Height="90px" TextMode="MultiLine" 
                        Width="303px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Date Booked in:</td>
                <td class="style3">
                    <asp:Label ID="lblOldDate" runat="server"></asp:Label>
                </td>
                <td class="style4">
                    New Date Booked In:</td>
                <td>
                    <asp:Calendar ID="calDateIn" runat="server" 
                        onselectionchanged="calDateIn_SelectionChanged" style="margin-left: 0px"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [customerID] FROM [Customers]"></asp:SqlDataSource>
                </td>
                <td class="style3">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
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
