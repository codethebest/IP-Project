<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PartsReportOutOfStock.aspx.cs" Inherits="Admin_Reports_Parts_PartsReportOutOfStock" %>

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
                    Parts not in stock</td>
            </tr>
        </table>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Parts] WHERE ([inStock] = @inStock)">
        <SelectParameters>
            <asp:QueryStringParameter DefaultValue="No" Name="inStock" 
                QueryStringField="No" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" 
        DataKeyNames="partID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
        GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="partID" HeaderText="partID" ReadOnly="True" 
                SortExpression="partID" />
            <asp:BoundField DataField="partName" HeaderText="partName" 
                SortExpression="partName" />
            <asp:BoundField DataField="partType" HeaderText="partType" 
                SortExpression="partType" />
            <asp:BoundField DataField="manufacturer" HeaderText="manufacturer" 
                SortExpression="manufacturer" />
            <asp:BoundField DataField="dateBought" HeaderText="dateBought" 
                SortExpression="dateBought" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="supplier" HeaderText="supplier" 
                SortExpression="supplier" />
            <asp:BoundField DataField="inStock" HeaderText="inStock" 
                SortExpression="inStock" />
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
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
