<%@ Page Language="C#" AutoEventWireup="true" CodeFile="InvoiceReportsByCust.aspx.cs" Inherits="Admin_Reports_Invoices_InvoiceReportsByCust" %>

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
                <td colspan="2">
                    Invoices By customer ID</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [customerID] FROM [Customers]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [Invoice] WHERE ([customerID] = @customerID)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dropDownCustID" Name="customerID" 
                                PropertyName="SelectedValue" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Select Customer ID:</td>
                <td>
                    <asp:DropDownList ID="dropDownCustID" runat="server" AutoPostBack="True" 
                        DataSourceID="SqlDataSource1" DataTextField="customerID" 
                        DataValueField="customerID">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" 
                        DataKeyNames="invoiceID" DataSourceID="SqlDataSource2" ForeColor="#333333">
                        <EditItemTemplate>
                            invoiceID:
                            <asp:DynamicControl ID="invoiceIDDynamicControl" runat="server" 
                                DataField="invoiceID" Mode="ReadOnly" />
                            <br />
                            jobID:
                            <asp:DynamicControl ID="jobIDDynamicControl" runat="server" DataField="jobID" 
                                Mode="Edit" />
                            <br />
                            customerID:
                            <asp:DynamicControl ID="customerIDDynamicControl" runat="server" 
                                DataField="customerID" Mode="Edit" />
                            <br />
                            customerName:
                            <asp:DynamicControl ID="customerNameDynamicControl" runat="server" 
                                DataField="customerName" Mode="Edit" />
                            <br />
                            customerSurname:
                            <asp:DynamicControl ID="customerSurnameDynamicControl" runat="server" 
                                DataField="customerSurname" Mode="Edit" />
                            <br />
                            itemID:
                            <asp:DynamicControl ID="itemIDDynamicControl" runat="server" DataField="itemID" 
                                Mode="Edit" />
                            <br />
                            technicianID:
                            <asp:DynamicControl ID="technicianIDDynamicControl" runat="server" 
                                DataField="technicianID" Mode="Edit" />
                            <br />
                            technicianName:
                            <asp:DynamicControl ID="technicianNameDynamicControl" runat="server" 
                                DataField="technicianName" Mode="Edit" />
                            <br />
                            hoursWorked:
                            <asp:DynamicControl ID="hoursWorkedDynamicControl" runat="server" 
                                DataField="hoursWorked" Mode="Edit" />
                            <br />
                            billAmount:
                            <asp:DynamicControl ID="billAmountDynamicControl" runat="server" 
                                DataField="billAmount" Mode="Edit" />
                            <br />
                            dateIssued:
                            <asp:DynamicControl ID="dateIssuedDynamicControl" runat="server" 
                                DataField="dateIssued" Mode="Edit" />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                                CommandName="Update" Text="Update" ValidationGroup="Insert" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <InsertItemTemplate>
                            invoiceID:
                            <asp:DynamicControl ID="invoiceIDDynamicControl" runat="server" 
                                DataField="invoiceID" Mode="Insert" ValidationGroup="Insert" />
                            <br />
                            jobID:
                            <asp:DynamicControl ID="jobIDDynamicControl" runat="server" DataField="jobID" 
                                Mode="Insert" ValidationGroup="Insert" />
                            <br />
                            customerID:
                            <asp:DynamicControl ID="customerIDDynamicControl" runat="server" 
                                DataField="customerID" Mode="Insert" ValidationGroup="Insert" />
                            <br />
                            customerName:
                            <asp:DynamicControl ID="customerNameDynamicControl" runat="server" 
                                DataField="customerName" Mode="Insert" ValidationGroup="Insert" />
                            <br />
                            customerSurname:
                            <asp:DynamicControl ID="customerSurnameDynamicControl" runat="server" 
                                DataField="customerSurname" Mode="Insert" ValidationGroup="Insert" />
                            <br />
                            itemID:
                            <asp:DynamicControl ID="itemIDDynamicControl" runat="server" DataField="itemID" 
                                Mode="Insert" ValidationGroup="Insert" />
                            <br />
                            technicianID:
                            <asp:DynamicControl ID="technicianIDDynamicControl" runat="server" 
                                DataField="technicianID" Mode="Insert" ValidationGroup="Insert" />
                            <br />
                            technicianName:
                            <asp:DynamicControl ID="technicianNameDynamicControl" runat="server" 
                                DataField="technicianName" Mode="Insert" ValidationGroup="Insert" />
                            <br />
                            hoursWorked:
                            <asp:DynamicControl ID="hoursWorkedDynamicControl" runat="server" 
                                DataField="hoursWorked" Mode="Insert" ValidationGroup="Insert" />
                            <br />
                            billAmount:
                            <asp:DynamicControl ID="billAmountDynamicControl" runat="server" 
                                DataField="billAmount" Mode="Insert" ValidationGroup="Insert" />
                            <br />
                            dateIssued:
                            <asp:DynamicControl ID="dateIssuedDynamicControl" runat="server" 
                                DataField="dateIssued" Mode="Insert" ValidationGroup="Insert" />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                                CommandName="Insert" Text="Insert" ValidationGroup="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                                CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            invoiceID:
                            <asp:DynamicControl ID="invoiceIDDynamicControl" runat="server" 
                                DataField="invoiceID" Mode="ReadOnly" />
                            <br />
                            jobID:
                            <asp:DynamicControl ID="jobIDDynamicControl" runat="server" DataField="jobID" 
                                Mode="ReadOnly" />
                            <br />
                            customerID:
                            <asp:DynamicControl ID="customerIDDynamicControl" runat="server" 
                                DataField="customerID" Mode="ReadOnly" />
                            <br />
                            customerName:
                            <asp:DynamicControl ID="customerNameDynamicControl" runat="server" 
                                DataField="customerName" Mode="ReadOnly" />
                            <br />
                            customerSurname:
                            <asp:DynamicControl ID="customerSurnameDynamicControl" runat="server" 
                                DataField="customerSurname" Mode="ReadOnly" />
                            <br />
                            itemID:
                            <asp:DynamicControl ID="itemIDDynamicControl" runat="server" DataField="itemID" 
                                Mode="ReadOnly" />
                            <br />
                            technicianID:
                            <asp:DynamicControl ID="technicianIDDynamicControl" runat="server" 
                                DataField="technicianID" Mode="ReadOnly" />
                            <br />
                            technicianName:
                            <asp:DynamicControl ID="technicianNameDynamicControl" runat="server" 
                                DataField="technicianName" Mode="ReadOnly" />
                            <br />
                            hoursWorked:
                            <asp:DynamicControl ID="hoursWorkedDynamicControl" runat="server" 
                                DataField="hoursWorked" Mode="ReadOnly" />
                            <br />
                            billAmount:
                            <asp:DynamicControl ID="billAmountDynamicControl" runat="server" 
                                DataField="billAmount" Mode="ReadOnly" />
                            <br />
                            dateIssued:
                            <asp:DynamicControl ID="dateIssuedDynamicControl" runat="server" 
                                DataField="dateIssued" Mode="ReadOnly" />
                            <br />

                        </ItemTemplate>
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                    </asp:FormView>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnHome" runat="server" onclick="btnHome_Click" Text="Home" 
                        Width="56px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
