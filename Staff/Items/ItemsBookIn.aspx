<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItemsBookIn.aspx.cs" Inherits="Staff_Items_ItemsBookIn" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Book in items</td>
            </tr>
            <tr>
                <td class="style2">
                    Item ID:</td>
                <td>
                    <asp:TextBox ID="txtItemID" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Customer ID:</td>
                <td>
                    <asp:DropDownList ID="dropDownCustID" runat="server" 
                        DataSourceID="sqlCustIDSource" DataTextField="customerID" 
                        DataValueField="customerID" AutoPostBack="True" 
                        onselectedindexchanged="dropDownCustID_SelectedIndexChanged" >
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Barcode:</td>
                <td>
                    <asp:TextBox ID="txtBarcode" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    item Type:</td>
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
                <td>
                    <asp:TextBox ID="txtDescription" runat="server" Height="90px" 
                        TextMode="MultiLine" Width="303px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtDescription" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Model:</td>
                <td>
                    <asp:TextBox ID="txtModel" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtModel" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Issue with Item</td>
                <td>
                    <asp:TextBox ID="txtIssue" runat="server" Height="90px" TextMode="MultiLine" 
                        Width="303px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtIssue" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Date Booked in:</td>
                <td>
                    <asp:Calendar ID="calDateIn" runat="server" 
                        onselectionchanged="calDateIn_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnNext" runat="server" onclick="btnNext_Click" Text="Next" />
                </td>
            </tr>
        </table>
    
    </div>
    <asp:SqlDataSource ID="sqlCustIDSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [customerID] FROM [Customers]"></asp:SqlDataSource>
    </form>
</body>
</html>
