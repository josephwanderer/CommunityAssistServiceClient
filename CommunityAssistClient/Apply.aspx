<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Apply.aspx.cs" Inherits="Apply" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grant Application</title>
</head>
<body>
    <form id="grantapplicationform" runat="server">
    <div>
        <h1>Apply for a Grant</h1>
        <table>

            <tr>
                <td>Grant Type</td>
                <td><asp:DropDownList ID="GrantTypesDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="GrantTypesDropDownList_SelectedIndexChanged"></asp:DropDownList></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Select a Grant Type"  ControlToValidate="GrantTypesDropDownList" InitialValue="Select Grant Type"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Grant Request Explanation</td>
                <td>
                    <asp:TextBox ID="RequestExplanationTextBox" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Request Explanation is Required" ControlToValidate="RequestExplanationTextBox"></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td>Grant Request Amount</td>
                <td>
                    <asp:TextBox ID="RequestAmountTextBox" runat="server" ></asp:TextBox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Request Amount Required" ControlToValidate="RequestAmountTextBox"></asp:RequiredFieldValidator></td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Only enter a dollar amount without commas or a dollar sign" ControlToValidate="RequestAmountTextBox" ValidationExpression="^[0-9]+(\.[0-9]{1,2})?$" ></asp:RegularExpressionValidator></td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ApplyButton" runat="server" Text="Apply" OnClick="ApplyButton_Click" /></td>
                <td>
                    <asp:Label ID="ApplicationResultLabel" runat="server" Text=""></asp:Label></td>
            </tr>
           
        </table>
        <asp:LinkButton ID="HomeButton" runat="server" PostBackUrl="~/Default.aspx">Return</asp:LinkButton>

        



    </div>
    </form>
</body>
</html>
