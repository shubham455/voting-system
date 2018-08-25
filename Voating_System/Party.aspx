<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="Party.aspx.cs" Inherits="Voating_System.Party" %>

<asp:Content ID="Conten1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Party Form</title>
    <link rel="stylesheet" href="css/normalize.css" />
    <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="css/main.css" />
    <h1>Sign Up</h1>

    <div>
    <fieldset>
        <legend><span class="number">1</span>Your basic info</legend>
        <label for="name">PartyName:</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" Text="**" runat="server" ErrorMessage="Please Give Name" ControlToValidate="textbox1"></asp:RequiredFieldValidator>

        <asp:TextBox ID="textbox1" runat="server"></asp:TextBox>

        <label for="mail">PartyLogo:</label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" Text="**" runat="server" ErrorMessage="Please Give Name" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
        <asp:FileUpload ID="FileUpload1" runat="server" />

    </fieldset>
    <asp:Button Text="submit" OnClick="button1_Click" CssClass="light" ID="button2" runat="server" BackColor="#4bc970" Height="55px" Width="440px" />

        </div>

</asp:Content>


