﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustInsert.aspx.cs" Inherits="Customers_CustInsert" %>

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
            width: 260px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td colspan="2">
                    Add new Customer Details</td>
            </tr>
            <tr>
                <td class="style2">
                    Customer ID:</td>
                <td>
                    <asp:TextBox ID="txtCustID" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Name:</td>
                <td>
                    <asp:TextBox ID="txtCustName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtCustName" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Surname:</td>
                <td>
                    <asp:TextBox ID="txtCustSurname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtCustSurname" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Address</td>
                <td>
                    <asp:TextBox ID="txtCustAddress" runat="server" Height="81px" 
                        TextMode="MultiLine" Width="256px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtCustAddress" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Primary Phone Number:</td>
                <td>
                    <asp:TextBox ID="txtCustPhoneNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtCustPhoneNumber" ErrorMessage="* Required" 
                        ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Secondary Phone Number:</td>
                <td>
                    <asp:TextBox ID="txtCustAltNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtCustAltNumber" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Total Items:</td>
                <td>
                    <asp:DropDownList ID="dropDownTotalItems" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem Value="3"></asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem Value="5"></asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Button ID="btnCustInsertNext" runat="server" Height="26px" 
                        onclick="btnCustInsertNext_Click" Text="Next" Width="106px" />
                </td>
                <td>
                    <asp:Button ID="btnCustInsertClear" runat="server" 
                        onclick="btnCustInsertClear_Click" Text=" Clear All" Width="105px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
