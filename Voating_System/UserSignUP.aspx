<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSignUP.aspx.cs" Inherits="Voating_System.UserData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Party Candidate  Form</title>
    <link rel="stylesheet" href="css/normalize.css" />
    <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/main.css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Sign Up</h1>
        <fieldset>
            <legend><span class="number">1</span>Your basic info</legend>
            <label for="name">Name:</label>
            <asp:RequiredFieldValidator ID ="required1" runat="server" Text="**" ErrorMessage="Please Give Name" ControlToValidate="textbox1" ></asp:RequiredFieldValidator>            
            <asp:TextBox ID="textbox1" runat="server"></asp:TextBox>

            <label for="mail">Password:</label>
            <asp:TextBox ID="textbox2" runat="server"></asp:TextBox>

            <label for="password">Email:</label>
            <asp:RequiredFieldValidator ID ="RequiredFieldValidator1" runat="server" Text="**" ErrorMessage="Please Give Name" ControlToValidate="textbox3" ></asp:RequiredFieldValidator>
            <asp:TextBox ID="textbox3" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID ="regular1" runat ="server" ControlToValidate ="textbox3" ErrorMessage ="Please Enter Valid Mail" ValidationExpression ="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            
            <label>ContactNo.:</label>
            <asp:RequiredFieldValidator ID ="RequiredFieldValidator2" runat="server" Text="**" ErrorMessage="Please Give Name" ControlToValidate="textbox4" ></asp:RequiredFieldValidator>
            <asp:TextBox ID="textbox4" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID ="regular2" runat="server" ControlToValidate="textbox4" ErrorMessage="Please Enter Valid No." ValidationExpression="^([+][9][1]|[9][1]|[0]){0,1}([7-9]{1})([0-9]{9})$"></asp:RegularExpressionValidator>
            

            <label>City:</label>
            <asp:TextBox ID="textbox5" runat="server"></asp:TextBox>

            <label>Adhar Card:</label>
            <asp:RequiredFieldValidator ID ="RequiredFieldValidator3" runat="server" Text="**" ErrorMessage="Please Give Name" ControlToValidate="fileupload1" ></asp:RequiredFieldValidator>
            <asp:FileUpload ID="fileupload1" runat="server" />
            <br />
            <br />

            <label>PanCard:</label>
            <asp:RequiredFieldValidator ID ="RequiredFieldValidator4" runat="server" Text="**" ErrorMessage="Please Give Name" ControlToValidate="fileupload2" ></asp:RequiredFieldValidator>
            <asp:FileUpload ID="fileupload2" runat="server" />
            <br />
            <br />

            <label>VoterID:</label>
            <asp:RequiredFieldValidator ID ="RequiredFieldValidator5" runat="server" Text="**" ErrorMessage="Please Give Name" ControlToValidate="fileupload3" ></asp:RequiredFieldValidator>
            <asp:FileUpload ID="fileupload3" runat="server" />

        </fieldset>
                    <asp:Button ID ="button1" runat="server" Text="Submit" Height="51px" Width="441px" OnClick="button1_Click" />

        
    </div>
    </form>
</body>
</html>
