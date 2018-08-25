<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="Voating_System.AdminPage" %>

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
    
    <div class="w3ls-banner">
        <div class="header-nav">
            <!-- header-three -->
            <nav class="navbar navbar-default">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        Menu 
                    </button>
                </div>
                <!-- top-nav -->
                <form id ="form1" runat="server">
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <asp:Label ID ="label1" runat="server"></asp:Label>
                       <li><a href="#" class="scroll">Home</a></li>
                        <li><a href="Party.aspx" class="Alert">Add Party</a></li>
                        <li><a href="Party_Candidate.aspx" class="scroll">Add Candidate</a></li>
                        <li><a href="UserSignUP.aspx" class="scroll">Add User</a></li>
                        <li><a href="ViewRecord.aspx" class="scroll">View Record</a></li>
                        <li><a href="ViewUserDetail.aspx" class="scroll">Users Details</a></li>
                        <li><a href="Result.aspx" class="scroll">Result</a></li>
                        <asp:Button ID="button1" runat="server" Text="Logout" OnClick="button1_Click" />
                        
                        
                    </ul>
                    <div class="clearfix"></div>
                </div>
                    </form>
                    
                
            </nav>
        </div>
        
        <!-- banner-text -->
        <div class="banner-text">
            <div class="flexslider">

                <p>Welcome To</p>
                <h2>E-VOTING SYSTEM</h2>
                <span><i class="fa fa-square-o" aria-hidden="true"></i><i class="fa fa-square-o" aria-hidden="true"></i><i class="fa fa-square-o" aria-hidden="true"></i></span>
                <h5>Digital India</h5>



            </div>
        </div>
        <!-- //banner-text -->
    </div>
</body>
</html>
