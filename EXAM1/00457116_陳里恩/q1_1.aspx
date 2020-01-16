<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim Grade As Integer = CInt(TextBox1.Text)
        If Grade >= 101 Then
            Label2.Text = "分數輸入錯誤！"
        ElseIf Grade >= 60 Then
            Label2.Text = "及格"
        ElseIf Grade >= 50 Then
            Label2.Text = "再考慮"
        ElseIf Grade >= 0 Then
            Label2.Text = "不及格"
        Else
            Label2.Text = "分數輸入錯誤！"
        End If
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="分數"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" Width="188px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="評分" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
