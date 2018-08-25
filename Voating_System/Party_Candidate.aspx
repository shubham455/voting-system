<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Party_Candidate.aspx.cs" Inherits="Voating_System.Party_Candidate" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Party Candidate  Form</title>
    <link rel="stylesheet" href="css/normalize.css" />
    <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/main.css" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>Sign Up</h1>
        <fieldset>
            <legend><span class="number">1</span>Your basic info</legend>
            <label for="name">CandidateName:</label>
            <asp:TextBox ID="textbox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="required1" runat="server" Text="Please Give Name" ErrorMessage="" ControlToValidate="textbox1"></asp:RequiredFieldValidator>

            <label for="mail">Education:</label>
            <asp:TextBox ID="textbox2" runat="server"></asp:TextBox>

            <label for="password">Age:</label>
            <asp:TextBox ID="textbox3" runat="server"></asp:TextBox>

            <label>ContactNo.:</label>
            <asp:TextBox ID="textbox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Text="**" runat="server" ErrorMessage="Please Give Name" ControlToValidate="textbox4"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regular2" runat="server" ControlToValidate="textbox4" ErrorMessage="Please Enter Valid No." ValidationExpression="^([+][9][1]|[9][1]|[0]){0,1}([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
            <label>City:</label>
            <asp:TextBox ID="textbox5" runat="server"></asp:TextBox>

            <label>Email:</label>
            <asp:TextBox ID="textbox6" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Text="**" ErrorMessage="Please Give Name" ControlToValidate="textbox6"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="regular1" runat="server" ControlToValidate="textbox6" ErrorMessage="Please Enter Valid Mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <label>PartyID:</label>
            <asp:DropDownList ID="dropdown1" runat="server" DataTextField="PartyName" DataSourceID="SqlDataSource1" DataValueField="PartyID" AppendDataBoundItems="True" ToolTip="Please Select Anyone">
                <asp:ListItem>Select AnyOne</asp:ListItem>

            </asp:DropDownList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:VOTE %>" SelectCommand="SELECT [PartyName], [PartyID] FROM [Party]"></asp:SqlDataSource>

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Text="**" ErrorMessage="Please Select Anyone " ControlToValidate="dropdown1"></asp:RequiredFieldValidator>
        </fieldset>



        <asp:Button ID="button1" runat="server" Text="Submit" Height="51px" Width="441px" OnClick="button1_Click" />


    </form>
</body>

</html>



