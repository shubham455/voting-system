<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master" CodeBehind="ViewRecord.aspx.cs" Inherits="Voating_System.ViewRecord" %>

<asp:Content ID="Conten1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
    <style type="text/css">
        .auto-style1 {
            margin-right: 46px;
        }
        .auto-style2 {
            left: 0px;
            top: 0px;
            height: 482px;
        }
    </style>

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

                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li>
                                <h3>View Party Record</h3>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </div>


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


        <!-- //banner -->
        <div id="about" class="about">
            <div class="container">
                <div class="about-agileinfo">
                </div>
                <div class="auto-style2">
                    <h5>View Party Record </h5>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p>


                    <asp:GridView ID="gridview1" RowStyle-Height="30px"  runat="server" CellPadding="4" GridLines="Horizontal" DataKeyNames="PartyID" OnSelectedIndexChanged="gridview1_SelectedIndexChanged" AutoGenerateColumns="False" CssClass="auto-style1" ForeColor="Black" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" Height="16px" Width="1051px">

                        <Columns>
                            <asp:ButtonField CommandName="Select" HeaderText="Select" ShowHeader="True" Text="Select" />
                            <asp:BoundField HeaderText="Party ID" DataField="PartyID" />
                            <asp:BoundField HeaderText="Party Name" DataField="PartyName" />
                            <asp:ImageField DataImageUrlField="PartyLogo" DataImageUrlFormatString="" HeaderText="Image" ItemStyle-Width="50px" ItemStyle-Height="50px" 
                              ControlStyle-Width="100" ControlStyle-Height="100" HeaderStyle-CssClass="about">
<ControlStyle Height="100px" Width="200px"></ControlStyle>

<HeaderStyle CssClass="about" BackColor="#660033" Width="200px"></HeaderStyle>

<ItemStyle Height="50px" Width="200px"></ItemStyle>
                            </asp:ImageField>
                        </Columns>

                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" Height="20px" />
                        <PagerStyle ForeColor="Black" HorizontalAlign="Right" BackColor="White" />

<RowStyle Height="30px"></RowStyle>

                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>



        <div id="news" class="news">
            <div class="container">
                <h4 class="w3title">View Party Candidate List</h4>
                <div class="news-agileinfo">
                    <div class="col-md-4 col-xs-6 news-grid">
                        <div class="col-xs-5 news-grid-left">

                            <br />
                             <asp:GridView ID="gridview2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Horizontal" Height="153px" Width="1050px" ForeColor="Black" >
                        
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


</asp:Content>
