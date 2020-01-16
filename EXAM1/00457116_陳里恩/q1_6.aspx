<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim Counter As Integer = 1
        Dim Number As Integer = CInt(TextBox1.Text)
        Dim Sum As Integer = 0
        While Counter <= Number
            Sum += Counter
            Counter += 2
        End While
        Label2.Text = Sum
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        Dim Counter As Integer = 0
        Dim Number As Integer = CInt(TextBox1.Text)
        Dim Sum As Integer = 0
        While Counter <= Number
            Sum += Counter
            Counter += 2
        End While
        Label2.Text = Sum
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
    
        <asp:Label ID="Label1" runat="server" Text="請輸入一最大值"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="計算奇數和" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="計算偶數和" OnClick="Button2_Click" />
        <br />
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    
    </div>
    </form>
</body>
</html>
