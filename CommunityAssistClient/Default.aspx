<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="loginform" runat="server">
    <div>
        <h1>Login</h1>
            <table>
        <tr>
            <td>Email</td>
            <td>
                <asp:TextBox ID="EmailTextBox" runat="server" TextMode="Email"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Password</td>
            <td>
                <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
                <tr>
                    <td>
                        <asp:Button ID="LoginButton" runat="server" Text="Log in" OnClick="LoginButton_Click" />
                    </td>  
                    <td><asp:Label ID="ResultLabel" runat="server" Text=""></asp:Label></td>
                </tr>
    </table>
        <asp:LinkButton ID="RegistrationLinkButton" runat="server" PostBackUrl="~/Registration.aspx">Register</asp:LinkButton>
        &nbsp;
        <asp:LinkButton ID="ApplyLinkButton" runat="server" PostBackUrl="~/Apply.aspx">Apply for Grant</asp:LinkButton>
        &nbsp;
        <asp:LinkButton ID="GrantHistoryButton" runat="server" PostBackUrl="~/GrantHistory.aspx">View Your Grant History</asp:LinkButton>
    </div>
    </form>
</body>
</html>
