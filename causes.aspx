<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="causes.aspx.cs" Inherits="Serving_Hands.causes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <!-- Required meta tags -->
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <link rel="icon" href="img/favicon.png" type="image/png"/>
        <title>About Us</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <link rel="stylesheet" href="vendors/linericon/style.css"/>
        <link rel="stylesheet" href="css/font-awesome.min.css"/>
        <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css"/>
        <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css"/>
        <!-- main css -->
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="css/responsive.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <!--================ Start Header Menu Area =================-->
    <header class="header_area">
        <div class="main_menu">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <div class="container">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <a class="navbar-brand logo_h" href="index.aspx"><img src="img/logo.png" alt=""></a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <!-- Collect the nav links, forms, and other content for toggling -->
                        <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                            <ul class="nav navbar-nav menu_nav ml-auto">
                                <li class="nav-item"><a class="nav-link" href="index.aspx">Home</a></li> 
                                <li class="nav-item"><a class="nav-link" href="about-us.aspx">About</a></li> 
                                <li class="nav-item active"><a class="nav-link" href="causes.aspx">Causes</a>
                                <li class="nav-item submenu dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item"><a class="nav-link" href="events.aspx">Events</a>
                                        <li class="nav-item"><a class="nav-link" href="event-details.aspx">Event Details</a> 
                                        <li class="nav-item"><a class="nav-link" href="elements.aspx">Elements</a></li>
                                    </ul>
                                </li> 
                                <li class="nav-item submenu dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Blog</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item"><a class="nav-link" href="blog.aspx">Blog</a></li>
                                        <li class="nav-item"><a class="nav-link" href="single-blog.aspx">Blog Details</a></li>
                                    </ul>
                                </li> 
                                <li class="nav-item"><a class="nav-link" href="contact.html">Contact</a></li>
                            </ul>
                        </div> 
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <!--================ End Header Menu Area =================-->
        
    <!--================ Home Banner Area =================-->
    <section class="banner_area">
        <div class="banner_inner d-flex align-items-center">
            <div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background=""></div>
            <div class="container">
                <div class="banner_content text-center">
                    <h2>Causes</h2>
                    <p>Platea nullam nostra laoreet potenti hendrerit laoreet enim nisl</p>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Home Banner Area =================-->
	
	<!--================ Start Causes Area =================-->
	<section class="causes_area">
        <div class="container">
            <div class="main_title">
                <h2>Our major causes</h2>
                <p>Creepeth called face upon face yielding midst is after moveth </p>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single_causes">
                        <h4>Give Donation</h4>
                        <img src="img/causes/c1.png" alt="">
                        <p>
                            It you're. Was called you're fowl grass lesser land together waters beast darkness earth land whose male all moveth fruitful.
                        </p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_causes">
                        <h4>Give Inspiration</h4>
                        <img src="img/causes/c2.png" alt="">
                        <p>
                            It you're. Was called you're fowl grass lesser land together waters beast darkness earth land whose male all moveth fruitful.
                        </p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single_causes">
                        <h4>Become Bolunteer</h4>
                        <img src="img/causes/c3.png" alt="">
                        <p>
                            It you're. Was called you're fowl grass lesser land together waters beast darkness earth land whose male all moveth fruitful.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Causes Area =================-->

	<!--================ Start Features Cause section =================-->
	<section class="features_causes">
        <div class="container">
            <div class="main_title">
                <h2>Featured causes</h2>
                <p>Creepeth called face upon face yielding midst is after moveth </p>
            </div>

            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <figure>
                                <img class="card-img-top img-fluid" src="img/features/fc1.jpg" alt="Card image cap">
                            </figure>
                            <div class="card_inner_body">
                                <h4 class="card-title">Education for every child</h4>
                                <p class="card-text">
                                    Be tree their face won't appear day waters moved fourth in they're divide don't a you were man face god.
                                </p>
                                <div class="d-flex justify-content-between raised_goal">
                                    <p>Raised: $1533</p>
                                    <p><span>Goal: $2500</span></p>
                                </div>
                              <!--  <div class="d-flex justify-content-between donation align-items-center">
                                    <a href="#" class="primary_btn">donate</a>
                                    <p><span class="lnr lnr-heart"></span> 90 Donors</p>
                                </div>-->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <figure>
                                <img class="card-img-top img-fluid" src="img/features/fc2.jpg" alt="Card image cap">
                            </figure>
                            <div class="card_inner_body">
                                <h4 class="card-title">Feeding the hungry people</h4>
                                <p class="card-text">
                                    Be tree their face won't appear day waters moved fourth in they're divide don't a you were man face god.
                                </p>
                                <div class="d-flex justify-content-between raised_goal">
                                    <p>Raised: $1533</p>
                                    <p><span>Goal: $2500</span></p>
                                </div>
                                <!--<div class="d-flex justify-content-between donation align-items-center">
                                    <a href="#" class="primary_btn">donate</a>
                                    <p><span class="lnr lnr-heart"></span> 90 Donors</p>
                                </div>-->
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <figure>
                                <img class="card-img-top img-fluid" src="img/features/fc3.jpg" alt="Card image cap">
                            </figure>
                            <div class="card_inner_body">
                                <h4 class="card-title">Providing cloth people</h4>
                                <p class="card-text">
                                    Be tree their face won't appear day waters moved fourth in they're divide don't a you were man face god.
                                </p>
                                <div class="d-flex justify-content-between raised_goal">
                                    <p>Raised: $1533</p>
                                    <p><span>Goal: $2500</span></p>
                                </div>
                                <!--<div class="d-flex justify-content-between donation align-items-center">
                                    <a href="#" class="primary_btn">donate</a>
                                    <p><span class="lnr lnr-heart"></span> 90 Donors</p>
                                </div>-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--================ End Features Cause section =================-->

	<!--================ Start CTA Area =================-->
	<div class="cta-area section_gap overlay">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-7">
                    <h1>Become a volunteer</h1>
                    <p>
                        So seed seed green that winged cattle in. Gathering thing made fly you're 
                        divided deep leave on the medicene moved us land years living.
                    </p>
                    <!--<a href="#" class="primary_btn yellow_btn rounded">join with us</a>-->
                </div>
            </div>
        </div>
    </div>
    <!--================ End CTA Area =================-->
        
    <!--================ Start footer Area  =================-->	
    <footer>
        <div class="footer-area">
            <div class="container">
                <div class="row section_gap">
                    <div class="col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget tp_widgets">
                            <h4 class="footer_title large_title">Our Mission</h4>
                            <p>
                                So seed seed green that winged cattle in. Gathering thing made fly you're no 
                                divided deep moved us lan Gathering thing us land years living.
                            </p>
                            <p>
                                So seed seed green that winged cattle in. Gathering thing made fly you're no divided deep moved 
                            </p>
                        </div>
                    </div>
                    <div class="offset-lg-1 col-lg-2 col-md-6 col-sm-6">
                        <div class="single-footer-widget tp_widgets">
                            <h4 class="footer_title">Quick Links</h4>
                            <ul class="list">
                                <li><a href="index.aspx">Home</a></li>
                                <li><a href="about-us.aspx">About</a></li>
                                <li><a href="causes.aspx">Causes</a></li>
                                <li><a href="events.aspx">Event</a></li>
                                <li><a href="#">News</a></li>
                                <li><a href="#">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="single-footer-widget instafeed">
                            <h4 class="footer_title">Gallery</h6>
                            <ul class="list instafeed d-flex flex-wrap">
                                <li><img src="img/gallery/g1.jpg" alt=""></li>
                                <li><img src="img/gallery/g2.jpg" alt=""></li>
                                <li><img src="img/gallery/g3.jpg" alt=""></li>
                                <li><img src="img/gallery/g4.jpg" alt=""></li>
                                <li><img src="img/gallery/g5.jpg" alt=""></li>
                                <li><img src="img/gallery/g6.jpg" alt=""></li>
                            </ul>
                        </div>
                    </div>
                    <div class="offset-lg-1 col-lg-3 col-md-6 col-sm-6">
                        <div class="single-footer-widget tp_widgets">
                            <h4 class="footer_title">Contact Us</h4>
                            <div class="ml-40">
                                <p class="sm-head">
                                    <span class="fa fa-location-arrow"></span>
                                    Head Office
                                </p>
                                <p>123, Main Street, Your City</p>
    
                                <p class="sm-head">
                                    <span class="fa fa-phone"></span>
                                    Phone Number
                                </p>
                                <p>
                                    +123 456 7890 <br>
                                    +123 456 7890
                                </p>
    
                                <p class="sm-head">
                                    <span class="fa fa-envelope"></span>
                                    Email
                                </p>
                                <p>
                                    free@infoexample.com <br>
                                    www.infoexample.com
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="footer-bottom">
            <div class="container">
                <div class="row d-flex">
                    <p class="col-lg-12 footer-text text-center">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                </div>
            </div>
        </div>
    </footer>
        </form>
    <!--================ End footer Area  =================-->  
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/popper.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/stellar.js"></script>
        <script src="vendors/lightbox/simpleLightbox.min.js"></script>
        <script src="vendors/nice-select/js/jquery.nice-select.min.js"></script>
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/mail-script.js"></script>
        <!--gmaps Js-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="js/gmaps.min.js"></script>
        <script src="js/theme.js"></script>

</body>
</html>
