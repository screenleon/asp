<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        '        Dim Grade As Integer
        '       Grade = CInt(TextBox1.Text)
        '      If Grade >= 70 Then
        '     lblOutPut.Text = "及格"
        '    Else
        '   lblOutPut.Text = "不及格"
        '  End If
        Dim objname As New ArrayList
        Dim name As String
        objname.Add("rokyobu")
        objname.Add("pop")
        For i = 1 To 9 Step 1
            For j = 1 To 9 Step 1
                lblOutPut.Text &= i & "*" & j & "=" & i * j & "&nbsp" & "&nbsp" & "&nbsp" & "&nbsp" & "&nbsp"
            Next j
            lblOutPut.Text &= "<br/>"
        Next i
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
    
    </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <br />
        <asp:Label ID="lblOutPut" runat="server" Text=""></asp:Label>
        <br />
        <asp:Label ID="Day" runat="server" Text="What day is today?"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Week" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Button" />
         <asp:Label ID="Label1" runat="server" Text=""></asp:Label>

    </form>
</body>
</html>
