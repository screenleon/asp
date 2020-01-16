<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        Dim Number As Integer = 10
        Dim Row As Integer = 0
        Dim Count As Integer = 0
        Label1.Text = ""
        While Row < Number
            Count = 0
            While Count < Row
                Count += 1
                Label1.Text &= "&nbsp"
            End While
            Count = 0
            While Count < Number
                Count += 1
                Label1.Text &= "*"
            End While
            Label1.Text &= "<br/>"
            Row += 1
        End While
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        Dim Number As Integer = 10
        Dim Row As Integer = 0
        Dim Count As Integer = 0
        Label1.Text = ""
        While Row < Number
            Count = 0
            While Count < Row
                Count += 1
                Label1.Text &= "&nbsp"
            End While
            Count = Row
            While Count < Number
                Count += 1
                Label1.Text &= "*"
            End While
            Label1.Text &= "<br/>"
            Row += 1
        End While
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs)
        Dim Number As Integer = 20
        Dim Row As Integer = 0
        Dim Count As Integer = 0
        Label1.Text = ""
        While Row < 10
            Count = 0
            While Count < Row
                Count += 1
                Label1.Text &= "&nbsp"
            End While
            Count = Row
            While Count < Number
                Count += 1
                Label1.Text &= "*"
            End While
            Label1.Text &= "<br/>"
            Row += 1
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
    
        <asp:Button ID="Button1" runat="server" Text="產生平行四邊形" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="產生倒三角形" OnClick="Button2_Click" />
        <asp:Button ID="Button3" runat="server" Text="產生梯形" OnClick="Button3_Click" />
        <br />
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    
    </div>
    </form>
</body>
</html>
