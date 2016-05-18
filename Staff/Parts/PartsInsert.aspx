<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PartsInsert.aspx.cs" Inherits="Parts_PartsInsert" %>

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
            width: 341px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Add new part to database</td>
            </tr>
            <tr>
                <td class="style2">
                    Part ID:</td>
                <td>
                    <asp:TextBox ID="txtID" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Part Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Part Type:</td>
                <td>
                    <asp:DropDownList ID="dropDownType" runat="server">
                        <asp:ListItem>Hardware</asp:ListItem>
                        <asp:ListItem>Software</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Manufacturer:</td>
                <td>
                    <asp:TextBox ID="txtManufacturer" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Purchase Date:</td>
                <td>
                    <asp:Calendar ID="calDatePurchased" runat="server" BackColor="White" 
                        BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" 
                        ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" 
                        onselectionchanged="calDatePurchased_SelectionChanged" Width="350px">
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" 
                            VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" 
                            Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                        <TodayDayStyle BackColor="#CCCCCC" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Price:</td>
                <td>
                    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Supplier:</td>
                <td>
                    <asp:TextBox ID="txtSupplier" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    In Stock:</td>
                <td>
                    <asp:DropDownList ID="dropDownInstock" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btnClear" runat="server" onclick="btnClear_Click" 
                        Text="Clear All" />
                </td>
                <td>
                    <asp:Button ID="btnNext" runat="server" Text="Next" onclick="btnNext_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
