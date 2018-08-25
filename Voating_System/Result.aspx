<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="Voating_System.Result" %>

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
                                   <%-- <asp:BoundField DataField="ID" HeaderText="ID" />--%>
                                   <%-- <asp:BoundField DataField="UserName" HeaderText="USerName" />
                                    <asp:BoundField DataField="CandidateID" HeaderText="CandidateID" />                                  
                                    <asp:BoundField DataField="CandidateName" HeaderText="CandidateName" />--%>
                                    <asp:BoundField DataField="PartyName" HeaderText="PartyName" />
                                    <asp:BoundField DataField="NumberofVotes" HeaderText="NumberofVotes" />
                                     <asp:ImageField DataImageUrlField="PartyLogo" HeaderText="PartyLogo" ControlStyle-Height="50px" ControlStyle-Width="50px"></asp:ImageField>
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
</html>
