<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PartsHome.aspx.cs" Inherits="Parts_PartsHome" %>

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
                    Stock Maintenance</td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbInsert" runat="server" GroupName="rbStock" 
                        Text="Add new part" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbEdit" runat="server" GroupName="rbStock" 
                        Text="Edit part " />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:RadioButton ID="rbRemove" runat="server" GroupName="rbStock" 
                        Text="Remove Part" />
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                        onclick="btnSubmit_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
