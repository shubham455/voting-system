<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SgnUp.aspx.cs" Inherits="Voating_System.SgnUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Sign IN Page</title>



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
           
            <asp:Button ID ="button1" runat="server" Text="Login" CssClass="button" OnClick="button1_Click" style="left: 22%; top: 0px; width: 40%"  />

        </div>
    </form>
</body>
</html>
