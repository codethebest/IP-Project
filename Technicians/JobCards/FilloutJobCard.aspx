<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FilloutJobCard.aspx.cs" Inherits="Technicians_JobCards_FilloutJobCard" %>

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
                <td colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Enter Technician ID:</td>
                <td>
                    <asp:TextBox ID="txtTechID" runat="server" AutoPostBack="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        
                        SelectCommand="SELECT [jobID] FROM [Jobs] WHERE (([technicianID] = @technicianID) AND ([dateCompleted] IS NULL))">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtTechID" Name="technicianID" 
                                PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    Select Job ID:</td>
                <td>
                    <asp:DropDownList ID="dropDownJobID" runat="server" 
                        DataSourceID="SqlDataSource1" DataTextField="jobID" DataValueField="jobID">
                    </asp:DropDownList>
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
                    <asp:Button ID="btnNext" runat="server" onclick="btnNext_Click" Text="Next" 
                        Width="72px" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
