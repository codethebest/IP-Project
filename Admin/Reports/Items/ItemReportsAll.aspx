<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItemReportsAll.aspx.cs" Inherits="Admin_Reports_Items_ItemReportsAll" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    Report of all items</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Items]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
                        DataKeyNames="itemID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                        GridLines="None">
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
                <td>
                    <asp:Button ID="btnHome" runat="server" onclick="btnHome_Click" Text="Home" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
