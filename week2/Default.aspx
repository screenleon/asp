<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)

    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" visible="False">
        <asp:Button ID="Button1" runat="server" style="top: 141px; left: 800px; position: absolute; height: 31px; width: 131px" Text="hate" OnClick="Button1_Click" Visible="False" />
        <asp:Label ID="Label1" runat="server" style="position: relative" Text="account"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Table ID="Table1" runat="server">
        </asp:Table>
    </form>
</body>
</html>
