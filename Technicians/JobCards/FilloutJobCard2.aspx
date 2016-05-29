<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FilloutJobCard2.aspx.cs" Inherits="Technicians_JobCards_FilloutJobCard2" %>

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
                    Fill out job card</td>
            </tr>
            <tr>
                <td>
                    Job ID:</td>
                <td>
                    <asp:Label ID="lblJobID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Item ID:</td>
                <td>
                    <asp:Label ID="lblItemID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Technician ID:</td>
                <td>
                    <asp:Label ID="lblTechnicianID" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Date Assigned:</td>
                <td>
                    <asp:Label ID="lblDate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    Part used ID</td>
                <td>
                    <asp:DropDownList ID="dropDownPartID" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="partID" DataValueField="partID" 
                        style="height: 22px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Hours Worked:</td>
                <td>
                    <asp:DropDownList ID="dropDownHoursWorked" runat="server">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem Value="0">2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    Date Completed</td>
                <td>
                    <asp:Calendar ID="calDateCompleted" runat="server" 
                        onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [partID] FROM [Parts]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnNext" runat="server" onclick="btnNext_Click" Text="Next" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
