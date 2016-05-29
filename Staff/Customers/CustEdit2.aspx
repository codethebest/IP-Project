<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustEdit2.aspx.cs" Inherits="Admin_Customers_CustEdit2" %>

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
            height: 7px;
        }
        .style3
        {
            width: 252px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2" colspan="4">
                    Update Customer Details</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    Old Details</td>
                <td>
                    &nbsp;</td>
                <td>
                    New Details</td>
            </tr>
            <tr>
                <td class="style3">
                    Customer ID:</td>
                <td>
                    <asp:Label ID="lblID" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblNewID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Name:</td>
                <td>
                    <asp:Label ID="lblName" runat="server" Text="lblName"></asp:Label>
                </td>
                <td>
                    New Name:</td>
                <td>
                    <asp:TextBox ID="txtNewName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtNewName" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Surname:</td>
                <td>
                    <asp:Label ID="lblSurname" runat="server" Text="lblSurname"></asp:Label>
                </td>
                <td>
                    New Surname:</td>
                <td>
                    <asp:TextBox ID="txtNewSurname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtNewSurname" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Address:</td>
                <td>
                    <asp:Label ID="lblAddress" runat="server" Text="lblAddress"></asp:Label>
                </td>
                <td>
                    New Address</td>
                <td>
                    <asp:TextBox ID="txtNewAddress" runat="server" Height="79px" 
                        TextMode="MultiLine" Width="228px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtNewAddress" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Primary Contact Number:</td>
                <td>
                    <asp:Label ID="lblPhoneNumber" runat="server" Text="lblPhoneNumber"></asp:Label>
                </td>
                <td>
                    New primary contact:</td>
                <td>
                    <asp:TextBox ID="txtNewPrimNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtNewPrimNumber" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Secondary Contact Number:</td>
                <td>
                    <asp:Label ID="lblAltPhoneNumber" runat="server"></asp:Label>
                </td>
                <td>
                    New Secondary Contact</td>
                <td>
                    <asp:TextBox ID="txtNewAltNumber" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtNewAltNumber" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Items</td>
                <td>
                    <asp:Label ID="lblTotalItems" runat="server"></asp:Label>
                </td>
                <td>
                    New amount of items</td>
                <td>
                    <asp:DropDownList ID="dropDownItems" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnClear" runat="server" onclick="btnClear_Click" 
                        Text="Clear All" Width="110px" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Save Changes" Width="110px" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
