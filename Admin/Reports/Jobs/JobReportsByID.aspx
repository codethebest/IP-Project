<%@ Page Language="C#" AutoEventWireup="true" CodeFile="JobReportsByID.aspx.cs" Inherits="Admin_Reports_Jobs_JobReportsByID" %>

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
            width: 403px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Report of Jobs by Job ID</td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    Select a Job ID:</td>
                <td>
                    <asp:DropDownList ID="dropDwonJobID" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="jobID" DataValueField="jobID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [jobID] FROM [Jobs]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Jobs] WHERE ([jobID] = @jobID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dropDwonJobID" Name="jobID" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="jobID" 
                        DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="jobID" HeaderText="jobID" ReadOnly="True" 
                                SortExpression="jobID" />
                            <asp:BoundField DataField="itemID" HeaderText="itemID" 
                                SortExpression="itemID" />
                            <asp:BoundField DataField="technicianID" HeaderText="technicianID" 
                                SortExpression="technicianID" />
                            <asp:BoundField DataField="dateAssigned" HeaderText="dateAssigned" 
                                SortExpression="dateAssigned" />
                            <asp:BoundField DataField="partID" HeaderText="partID" 
                                SortExpression="partID" />
                            <asp:BoundField DataField="hoursWorked" HeaderText="hoursWorked" 
                                SortExpression="hoursWorked" />
                            <asp:BoundField DataField="dateCompleted" HeaderText="dateCompleted" 
                                SortExpression="dateCompleted" />
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
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
