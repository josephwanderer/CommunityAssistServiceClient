<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GrantHistory.aspx.cs" Inherits="GrantHistory" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Grant History</title>
</head>
<body>
    <form id="granthistoryform" runat="server">
    <div>
        <h1>Grant History</h1>

        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
        <asp:LinkButton ID="HomeButton" runat="server" PostBackUrl="~/Default.aspx">Return</asp:LinkButton>
    </div>

    </form>
</body>
</html>
