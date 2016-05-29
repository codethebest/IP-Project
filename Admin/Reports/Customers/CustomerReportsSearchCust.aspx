<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerReportsSearchCust.aspx.cs" Inherits="Admin_Reports_CustomerReportsSearchCust" %>

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
            width: 488px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:SqlDataSource ID="SqlDataSourceSearchForCust" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Customers] WHERE ([customerID] = @customerID)">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtCustID" Name="customerID" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <table class="style1">
        <tr>
            <td class="style2">
                Enter Customer ID to search for:</td>
            <td>
                <asp:TextBox ID="txtCustID" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtCustID" ErrorMessage="* Required" ForeColor="#FF3300"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
    <div>
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="customerID" DataSourceID="SqlDataSourceSearchForCust" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="customerID" HeaderText="customerID" ReadOnly="True" 
                SortExpression="customerID" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="surname" HeaderText="surname" 
                SortExpression="surname" />
            <asp:BoundField DataField="address" HeaderText="address" 
                SortExpression="address" />
            <asp:BoundField DataField="primaryPhone" HeaderText="primaryPhone" 
                SortExpression="primaryPhone" />
            <asp:BoundField DataField="secondaryPhone" HeaderText="secondaryPhone" 
                SortExpression="secondaryPhone" />
            <asp:BoundField DataField="totalItems" HeaderText="totalItems" 
                SortExpression="totalItems" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <table class="style1">
        <tr>
            <td>
                <asp:Button ID="btnHome" runat="server" onclick="btnHome_Click" Text="Home" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
