<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ItemsHome.aspx.cs" Inherits="Staff_Items_ItemsHome" %>

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
                    Items</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbBookIn" runat="server" GroupName="rbItems" 
                        Text="Book in Item" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbEdit" runat="server" GroupName="rbItems" 
                        Text="Edit item" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbBookOut" runat="server" GroupName="rbItems" 
                        Text="Book out Item" />
                </td>
            </tr>
            <tr>
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
