<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InvoiceIssue.aspx.cs" Inherits="Staff_Invoices_InvoiceIssue" %>

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
            width: 443px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Issue Invoice</td>
            </tr>
            <tr>
                <td class="style2">
                    Invoice ID:</td>
                <td>
                    <asp:Label ID="lblInvoiceID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Select Job ID:</td>
                <td>
                    <asp:DropDownList ID="dropDownJobID" runat="server" 
                        DataSourceID="SqlDataSource2" DataTextField="jobID" DataValueField="jobID" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Select Customer ID:</td>
                <td>
                    <asp:DropDownList ID="dropDownCustID" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="customerID" 
                        DataValueField="customerID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [customerID] FROM [Customers]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [jobID] FROM [Jobs]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [itemID] FROM [Jobs] WHERE ([jobID] = @jobID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dropDownJobID" Name="jobID" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Date issued</td>
                <td>
                    <asp:Label ID="lblDateIssued" runat="server"></asp:Label>
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
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnNext" runat="server" Text="Next" onclick="btnNext_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
