<%@ Page Language="VB" %>

<!DOCTYPE html>

<script runat="server">

    'when click button , hide or appear the textbox1
    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        If TextBox1.TextMode = 0 Then
            TextBox1.TextMode = 2
            Button1.Text = "apperance"
        ElseIf TextBox1.TextMode = 2 Then
            TextBox1.TextMode = 0
            Button1.Text = "hide"
        End If
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs)
        TextBox1.ReadOnly = True
        Dim temp As String = Label3.Text
        Label3.Text = TextBox1.Text
        TextBox1.Text = temp
    End Sub

    Protected Sub password_TextChanged(sender As Object, e As EventArgs)

    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Text1 {
            height: 69px;
            width: 253px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:TextBox ID="TextBox1" runat="server" ForeColor="#00CC66">8591</asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="hide" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="account     "></asp:Label>
            <asp:TextBox ID="account" runat="server" ForeColor="#00CC66" ></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="password  "></asp:Label>
            <asp:TextBox ID="password" runat="server" ForeColor="#00CC66" TextMode="Password" OnTextChanged="password_TextChanged"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="6666" ForeColor="#CC00CC"></asp:Label>
            <asp:Button ID="Button2" runat="server" Text="swap" OnClick="Button2_Click"  />

    </div>
    </form>
    </body>
</html>
