<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobsEdit2.aspx.cs" Inherits="Staff_Jobs_JobsEdit2" %>

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
                <td class="style2" colspan="4">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" Caption="List of Technicians" CellPadding="4" 
                        DataKeyNames="technicianID" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                        GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="technicianID" HeaderText="technicianID" 
                                ReadOnly="True" SortExpression="technicianID" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="technicianType" HeaderText="technicianType" 
                                SortExpression="technicianType" />
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
                <td class="style2" colspan="4">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Technicians]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [itemID], [customerID], [barcode], [itemType], [description], [model], [dateBookedIn], [issue] FROM [Items]">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="4">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        Caption="List of items booked in" CellPadding="4" DataKeyNames="itemID" 
                        DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
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
                            <asp:BoundField DataField="dateBookedIn" HeaderText="dateBookedIn" 
                                SortExpression="dateBookedIn" />
                            <asp:BoundField DataField="issue" HeaderText="issue" SortExpression="issue" />
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
                <td class="style2" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2" colspan="4">
                    Re assign job</td>
            </tr>
            <tr>
                <td class="style2" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Job ID:</td>
                <td>
                    <asp:Label ID="lblJobID" runat="server"></asp:Label>
                </td>
                <td>
                    Job ID:</td>
                <td>
                    <asp:Label ID="lblID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Item ID:</td>
                <td>
                    <asp:Label ID="lblItemID" runat="server"></asp:Label>
                </td>
                <td>
                    Item ID:</td>
                <td>
                    <asp:DropDownList ID="dropDownItemID" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="itemID" 
                        DataValueField="itemID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Technician ID:</td>
                <td>
                    <asp:Label ID="lblTechnicianID" runat="server"></asp:Label>
                </td>
                <td>
                    Technician ID:</td>
                <td>
                    <asp:DropDownList ID="dropDownTechID" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="technicianID" 
                        DataValueField="technicianID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Date Assigned:</td>
                <td>
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
                <td>
                    Date Assigned:</td>
                <td>
                    <asp:Calendar ID="calNewDate" runat="server" 
                        onselectionchanged="calNewDate_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Submit" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
