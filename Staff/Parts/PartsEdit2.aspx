<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PartsEdit2.aspx.cs" Inherits="Admin_Parts_PartsEdit2" %>

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
                <td colspan="4">
                    Edit Parts Details</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    Old Details</td>
                <td>
                    &nbsp;</td>
                <td>
                    New Details</td>
            </tr>
            <tr>
                <td>
                    Part ID:</td>
                <td>
                    <asp:Label ID="lblOldID" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="lblID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Part Name:</td>
                <td>
                    <asp:Label ID="lblOldName" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    New Name</td>
                <td>
                    <asp:TextBox ID="txtNewName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtNewName" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Part Type:</td>
                <td>
                    <asp:Label ID="lblOldType" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    New Type</td>
                <td>
                    <asp:DropDownList ID="dropDownNewType" runat="server">
                        <asp:ListItem>Hardware</asp:ListItem>
                        <asp:ListItem>Software</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Manufacturer:</td>
                <td>
                    <asp:Label ID="lblOldManu" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    New Manufacturer</td>
                <td>
                    <asp:TextBox ID="txtNewManu" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtNewManu" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Date Purchased</td>
                <td>
                    <asp:Label ID="lblOldDate" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    New Date Purchased</td>
                <td>
                    <asp:Calendar ID="calNewDate" runat="server" 
                        onselectionchanged="calNewDate_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>
                    Price:</td>
                <td>
                    <asp:Label ID="lblOldPrice" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    New Price</td>
                <td>
                    <asp:TextBox ID="txtNewPrice" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtNewPrice" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Supplier:</td>
                <td>
                    <asp:Label ID="lblOldSupplier" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    New Supplier</td>
                <td>
                    <asp:TextBox ID="txtNewSupplier" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtNewSupplier" ErrorMessage="* Required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    In Stock:</td>
                <td>
                    <asp:Label ID="lblInstock" runat="server" Text="Label"></asp:Label>
                </td>
                <td>
                    New in Stock</td>
                <td>
                    <asp:DropDownList ID="dropDownInStock" runat="server">
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
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
