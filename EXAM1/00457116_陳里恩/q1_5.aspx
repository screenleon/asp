<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim NumberArray() As Boolean = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
        Dim Number As Integer = -1
        Dim Counter As Integer = 0
        Randomize(0)
        Label2.Text &= Number & "<br/>"
        While Counter < 13
            Number = Int(Rnd(10) * 13)
            Label2.Text &= Number & "<br/>"
            If Number > 0 And Number <= 13 And NumberArray(Number) = 0 Then
                TextBox1.Text &= "(" & Number & ")"
                NumberArray(Number) = 1
                Counter += 1
            End If
        End While
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
    
        <asp:Label ID="Label1" runat="server" Text="請產生1至13的所有隨機亂數"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="執行" OnClick="Button1_Click" />
    
        <br />
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    
    </div>
    </form>
</body>
</html>
