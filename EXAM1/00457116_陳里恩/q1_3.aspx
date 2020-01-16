<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim Num As Integer = 1
        Dim Number As Double = TextBox1.Text
        Dim Qunity As Integer = 0
        Dim Counter = 0
        Label2.Text = ""
        While Num < Number
            Num *= 2
            Counter += 1
        End While
        Counter -= 1
        While Number
            If Number > 2 ^ Counter Then
                Number = Number - 2 ^ Counter
                Label2.Text &= 1
            Else
                Label2.Text &= 0
            End If
            Counter -= 1
        End While
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        Dim Num As Integer = 1
        Dim Number As Integer = TextBox1.Text
        Dim Qunity As Integer = 0
        Dim Counter = 0
        Label2.Text = ""
        While Num < Number
            Num *= 8
            Counter += 1
        End While
        Counter -= 1
        While Number
            If Number > 8 ^ Counter Then
                Qunity = Number \ (8 ^ Counter)
                Number -= 8 ^ Counter * Qunity
                Label2.Text &= Qunity
            Else
                Label2.Text &= 0
            End If
            Counter -= 1
        End While
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs)
        Dim Num As Integer = 1
        Dim Number As Integer = TextBox1.Text
        Dim Qunity As Integer = 0
        Dim Counter = 0
        Label2.Text = ""
        While Num < Number
            Num *= 16
            Counter += 1
        End While
        Counter -= 1
        While Number
            If Number > 16 ^ Counter Then
                Qunity = Number \ (16 ^ Counter)
                Number -= 16 ^ Counter * Qunity
                If Qunity < 10 Then
                    Label2.Text &= Qunity
                ElseIf Qunity = 10 Then
                    Label2.Text &= "A"
                ElseIf Qunity = 11 Then
                    Label2.Text &= "B"
                ElseIf Qunity = 12 Then
                    Label2.Text &= "C"
                ElseIf Qunity = 13 Then
                    Label2.Text &= "D"
                ElseIf Qunity = 14 Then
                    Label2.Text &= "E"
                ElseIf Qunity = 15 Then
                    Label2.Text &= "F"
                End If
            Else
                Label2.Text &= 0
            End If
            Counter -= 1
        End While
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs)
        Dim Counter As Integer = 2
        Dim Goal As Integer = CInt(TextBox1.Text)
        While
        
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
    
        <asp:Label ID="Label1" runat="server" Text="請輸入數字"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="轉二進位" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="轉八進位" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="轉十六進位" OnClick="Button3_Click" />
        <asp:Button ID="Button4" runat="server" Text="列出所有質因數" OnClick="Button4_Click" />
        <br />
        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
    
    </div>
    </form>
</body>
</html>
