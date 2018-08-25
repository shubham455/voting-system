<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSignIN.aspx.cs" Inherits="Voating_System.UserSignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>User Sign In </title>
    <link rel="stylesheet" href="css/style.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header>Login</header>
            <label>Username <span></span></label>
            <asp:TextBox ID="textbox1" runat="server" placeholder="Username"></asp:TextBox>

            <label>Password <span></span></label>
            <asp:TextBox ID="textbox2" runat="server" placeholder="Password"></asp:TextBox>

            <asp:Button ID="button1" runat="server" Text="Sign In " CssClass="button"  Style="left: 22%; top: 0px; width: 40%" OnClick="button1_Click" />
            <asp:Button ID="button2" runat="server" Text="Sign Up" CssClass="button"  Style="left: 22%; top: 0px; width: 40%" OnClick="button2_Click" />

        </div>
    </form>
</body>
</html>
