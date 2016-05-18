<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItemReportByCustID.aspx.cs" Inherits="Admin_Reports_Items_ItemReportByCustID" %>

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
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Report of items by customer ID</td>
            </tr>
            <tr>
                <td class="style2">
                    Select Customer ID</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="customerID" 
                        DataValueField="customerID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Items] WHERE ([customerID] = @customerID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="DropDownList1" Name="customerID" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [customerID] FROM [Items]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="itemID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                        GridLines="None" Width="970px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="itemID" HeaderText="itemID" ReadOnly="True" 
                                SortExpression="itemID" />
                            <asp:BoundField DataField="customerID" HeaderText="customerID" 
                                SortExpression="customerID" />
                            <asp:BoundField DataField="barcode" HeaderText="barcode" 
                                SortExpression="barcode" />
                            <asp:BoundField DataField="itemType" HeaderText="itemType" 
                                SortExpression="itemType" />
                            <asp:BoundField DataField="description" HeaderText="description" 
                                SortExpression="description" />
                            <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
                            <asp:BoundField DataField="issue" HeaderText="issue" SortExpression="issue" />
                            <asp:BoundField DataField="dateBookedIn" HeaderText="dateBookedIn" 
                                SortExpression="dateBookedIn" />
                            <asp:BoundField DataField="dateBookedOut" HeaderText="dateBookedOut" 
                                SortExpression="dateBookedOut" />
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
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btnHome" runat="server" onclick="btnHome_Click" Text="Home" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
