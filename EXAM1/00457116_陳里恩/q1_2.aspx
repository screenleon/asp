<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim Coin As Integer = CInt(TextBox1.Text)
        Dim WinePrice As Integer = 2
        Dim Wine As Integer = 0
        Dim WineCap As Integer = 0
        Dim WineBottle As Integer = 0
        Dim Counter As Integer = 0
        Wine = Coin / WinePrice
        WineCap = Coin / WinePrice
        WineBottle = Coin / WinePrice
        While WineCap >= 2 Or WineBottle >= 4
            If WineCap >= 2 Then
                Wine += 1
                Counter = 1
                WineCap = WineCap - 2
                WineCap += 1
                WineBottle += 1
            End If
            If WineBottle >= 4 Then
                Wine += 1
                Counter = 1
                WineBottle = WineBottle - 4
                WineCap += 1
                WineBottle += 1
            End If
        End While
        Label2.Text = Wine & "&nbsp" & "瓶啤酒"
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="金額"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="計算" OnClick="Button1_Click" />
        <br />
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    
        <br />
    
    </div>
    </form>
</body>
</html>
