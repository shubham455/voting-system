<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewUserDetail.aspx.cs" Inherits="Voating_System.UserDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>E-Voting System </title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Excavate Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- Custom Theme files -->
    <link href="css12/bootstrap.css" type="text/css" rel="stylesheet" media="all" />
    <link href="css12/style.css" type="text/css" rel="stylesheet" media="all" />
    <link href="css12/" rel="stylesheet" />
    <!-- font-awesome icons -->
    <link rel="stylesheet" href="css12/flexslider.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css12/percircle.css" />
    <link rel="stylesheet" href="css12/lightbox.css" />
    <!-- lightbox css -->
    <!-- //Custom Theme files -->
    <!-- web-fonts -->
    <link href='//fonts.googleapis.com/css?family=Cinzel+Decorative:400,700,900' rel='stylesheet' type='text/css' />
    <link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css' />
    <!-- //web-fonts -->
    <style>
        <style type="text/css">
body
{
    margin: 0;
    padding: 0;
    height: 100%;
}
.modal
{
    display: none;
    position: absolute;
    top: 0px;
    left: 0px;
    background-color: black;
    z-index: 100;
    opacity: 0.8;
    filter: alpha(opacity=60);
    -moz-opacity: 0.8;
    min-height: 100%;
}
#divImage
{
    display: none;
    z-index: 1000;
    position: fixed;
    top: 0;
    left: 0;
    background-color: White;
    height: 550px;
    width: 600px;
    padding: 3px;
    border: solid 1px black;
}
</style>
   
</head>
<body>
    <!-- header -->
    <div class="headerw3-agile">
        <div class="header-w3top">
            <!-- header-top -->
            <ul>
                <li><i class="fa fa-phone"></i>+918319058205 </li>
                <li><a href="mailto:example@mail.com"><i class="fa fa-envelope-o"></i>agrawalshubham4556@gmail.com</a></li>
                <li><i class="fa fa-map-marker"></i>Navi Mumai City, India.</li>
            </ul>
            <div class="clearfix"></div>
        </div>
        <div class="header-w3mdl">
            <!-- header-two -->
            <div class="container">
                <div class="agileits-logo navbar-left">
                    <h1><a href="#">E-VOTING SYSTEM</a></h1>
                </div>
                <div class="agileits-hdright nav navbar-nav navbar-right">
                    <div class="social-icon">
                        <a href="#" class="si-agileits twitter"><i class="fa fa-twitter"></i></a>
                        <a href="#" class="si-agileits facebook"><i class="fa fa-facebook"></i></a>
                        <a href="#" class="si-agileits google"><i class="fa fa-google-plus"></i></a>
                        <a href="#" class="si-agileits dribbble"><i class="fa fa-dribbble"></i></a>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- //header -->
    <!-- banner -->


    <form id="form1" runat="server">

        <div id="news" class="news">
            <div class="container">
                <h4 class="w3title">View Party Candidate List</h4>
                <div class="news-agileinfo">
                    <div class="col-md-4 col-xs-6 news-grid">
                        <div class="col-xs-5 news-grid-left">

                            <br />
                            <asp:GridView ID="gridview1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Height="157px" Width="1134px">
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" />
                                    <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" />
                                    <asp:BoundField DataField="City" HeaderText="City" />
                                   <asp:TemplateField HeaderText="Adhar Card">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Bind("AdharCard")%>'
                                                Width="100px" Height="100px" Style="cursor: pointer" OnClientClick="return LoadDiv(this.src);" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Pan Card">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Bind("PanCard")%>'
                                                Width="100px" Height="100px" Style="cursor: pointer" OnClientClick="return LoadDiv(this.src);" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                   <asp:TemplateField HeaderText="Voter ID">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl='<%# Bind("VoterID")%>'
                                                Width="100px" Height="100px" Style="cursor: pointer" OnClientClick="return LoadDiv(this.src);" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                            </asp:GridView>
                            <div id="divBackground" class="modal">
                            </div>
                            <div id="divImage">
                                <table style="height: 100%; width: 100%">
                                    <tr>
                                        <td valign="middle" align="center">
                                            <img id="imgLoader" alt="" src="images/loader.gif" />
                                            <img id="imgFull" alt="" src="" style="display: none; height: 500px; width: 590px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" valign="bottom">
                                            <input id="btnClose" type="button" value="close" onclick="HideDiv()" />
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="col-xs-7 news-grid-right">
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
    <script type="text/javascript">
    function LoadDiv(url) {
    var img = new Image();
    var bcgDiv = document.getElementById("divBackground");
    var imgDiv = document.getElementById("divImage");
    var imgFull = document.getElementById("imgFull");
    var imgLoader = document.getElementById("imgLoader");
    imgLoader.style.display = "block";
    img.onload = function () {
        imgFull.src = img.src;
        imgFull.style.display = "block";
        imgLoader.style.display = "none";
   };
    img.src = url;
    var width = document.body.clientWidth;
    if (document.body.clientHeight > document.body.scrollHeight) {
        bcgDiv.style.height = document.body.clientHeight + "px";
    }
    else {
        bcgDiv.style.height = document.body.scrollHeight + "px";
    }
    imgDiv.style.left = (width - 650) / 2 + "px";
    imgDiv.style.top = "20px";
    bcgDiv.style.width = "100%";
 
    bcgDiv.style.display = "block";
    imgDiv.style.display = "block";
    return false;
}
function HideDiv() {
    var bcgDiv = document.getElementById("divBackground");
    var imgDiv = document.getElementById("divImage");
    var imgFull = document.getElementById("imgFull");
    if (bcgDiv != null) {
        bcgDiv.style.display = "none";
        imgDiv.style.display = "none";
        imgFull.style.display = "none";
    }
}
</script>
</html>
