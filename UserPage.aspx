﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="Serving_Hands.UserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <link rel="icon" href="img/favicon.png" type="image/png"/>
        <title>Seelife Charity</title>
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
						<a class="navbar-brand logo_h" href="index.aspx"><img src="img/logo.png" alt=""/></a>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse offset" id="navbarSupportedContent">
							<ul class="nav navbar-nav menu_nav ml-auto">
								<li class="nav-item active"><a class="nav-link" href="index.aspx">Home</a></li> 
								<li class="nav-item"><a class="nav-link" href="about-us.aspx">About</a></li> 
								<li class="nav-item"><a class="nav-link" href="causes.aspx">Causes</a></li>
								<li class="nav-item submenu dropdown">
									<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Pages</a>
									<ul class="dropdown-menu">
										<li class="nav-item"><a class="nav-link" href="events.aspx">Events</a></li>
										<li class="nav-item"><a class="nav-link" href="event-details.aspx">Event Details</a></li>
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
                                <li class="nav-item submenu dropdown">
									<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Donate</a>
									<ul class="dropdown-menu">
										<li class="nav-item"><a class="nav-link" href="DonateMoney.aspx">Money</a></li>
										<li class="nav-item"><a class="nav-link" href="DonateDowery.aspx">Dowery</a></li>
										<li class="nav-item"><a class="nav-link" href="DonateClothes.aspx">Clothes</a></li>
                                        <li class="nav-item"><a class="nav-link" href="DonateBlood.aspx">Blood</a></li>
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
	<section class="home_banner_area">
		<div class="banner_inner">
			<div class="container">
				<div class="banner_content">
					<p class="upper_text">Give a hand</p>
					<h2>to make the better world</h2>
					<p>
						That don't lights. Blessed land spirit creature divide our made two 
						itself upon you'll dominion waters man second good you they're divided upon winged were replenish night
					</p>
					<!--<a class="primary_btn mr-20" href="Login.aspx">Login</a>
					<a class="primary_btn yellow_btn text-white" href="SignUp.aspx">Sign Up</a>-->
				</div>
			</div>
		</div>
	</section>
	<!--================ End Home Banner Area =================-->
	Welcome User <b><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></b>
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
						<img src="img/causes/c1.png" alt=""/>
						<p>
							It you're. Was called you're fowl grass lesser land together waters beast darkness earth land whose male all moveth fruitful.
						</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single_causes">
						<h4>Give Inspiration</h4>
						<img src="img/causes/c2.png" alt=""/>
						<p>
							It you're. Was called you're fowl grass lesser land together waters beast darkness earth land whose male all moveth fruitful.
						</p>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single_causes">
						<h4>Become Bolunteer</h4>
						<img src="img/causes/c3.png" alt=""/>
						<p>
							It you're. Was called you're fowl grass lesser land together waters beast darkness earth land whose male all moveth fruitful.
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Causes Area =================-->

	<!--================ Start About Us Area =================-->
	<section class="about_area section_gap_bottom">
		<div class="container">
			<div class="row">	
				<div class="single_about row">
					<div class="col-lg-6 col-md-12 text-center about_left">
						<div class="about_thumb">
							<img src="img/about-img.jpg" class="img-fluid" alt=""/>
						</div>
					</div>
					<div class="col-lg-6 col-md-12 about_right">
						<div class="about_content">
							<h2>
								We are nonprofit team <br/>
									and work worldwide
							</h2>
							<p>
									Their multiply doesn't behold shall appear living heaven second 
									roo lights. Itself hath thing for won't herb forth gathered good 
									bear fowl kind give fly form winged for reason
							</p>
							<p>
									Land their given the seasons herb lights fowl beast whales it 
									after multiply fifth under to it waters waters created heaven 
									very fill agenc to. Dry creepeth subdue them kind night behold 
									rule stars him grass waters our without 
							</p>
							<a href="#" class="primary_btn">Learn more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End About Us Area =================-->

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
								<img class="card-img-top img-fluid" src="img/features/fc1.jpg" alt="Card image cap"/>
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
								<img class="card-img-top img-fluid" src="img/features/fc2.jpg" alt="Card image cap"/>
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
								<img class="card-img-top img-fluid" src="img/features/fc3.jpg" alt="Card image cap"/>
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

	<!--================ Start Recent Event Area =================-->
	<section class="event_area section_gap_custom">
		<div class="container">
			<div class="main_title">
				<h2>Upcoming events</h2>
				<p>Creepeth called face upon face yielding midst is after moveth </p>
			</div>
		
			<div class="row">
				<div class="col-lg-6">
					<div class="single_event">
						<div class="row align-items-center">
							<div class="col-lg-6 col-md-6">
								<figure>
									<img class="img-fluid w-100" src="img/event/e1.jpg" alt=""/>
									<div class="img-overlay"></div>
								</figure>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="content_wrapper">
									<h3 class="title">
										<a href="event-details.html">Working syrian childreen</a>
									</h3>
									<p>
										Be tree their face won't appear day to waters moved fourth in they're divide don't a you're were man.
									</p>
									<div class="d-flex count_time" id="clockdiv1">
										<div class="mr-25">
											<h4 class="days">552</h4>
											<p>Days</p>
										</div>
										<div class="mr-25">
											<h4 class="hours">08</h4>
											<p>Hours</p>
										</div>
										<div class="mr-25">
											<h4 class="minutes">45</h4>
											<p>Minutes</p>
										</div>
										<div>
											<h4 class="seconds">30</h4>
											<p>Seconds</p>
										</div>
									</div>
									<a href="#" class="primary_btn">Learn More</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="single_event">
						<div class="row align-items-center">
							<div class="col-lg-6 col-md-6">
								<figure>
									<img class="img-fluid w-100" src="img/event/e2.jpg" alt=""/>
									<div class="img-overlay"></div>
								</figure>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="content_wrapper">
									<h3 class="title">
										<a href="event-details.html">Help and homelesness</a>
									</h3>
									<p>
										Be tree their face won't appear day to waters moved fourth in they're divide don't a you're were man.
									</p>
									<div class="d-flex count_time" id="clockdiv2">
										<div class="mr-25">
											<h4 class="days">552</h4>
											<p>Days</p>
										</div>
										<div class="mr-25">
											<h4 class="hours">08</h4>
											<p>Hours</p>
										</div>
										<div class="mr-25">
											<h4 class="minutes">45</h4>
											<p>Minutes</p>
										</div>
										<div>
											<h4 class="seconds">30</h4>
											<p>Seconds</p>
										</div>
									</div>
									<a href="#" class="primary_btn">Learn More</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="single_event">
						<div class="row align-items-center">
							<div class="col-lg-6 col-md-6">
								<figure>
									<img class="img-fluid w-100" src="img/event/e3.jpg" alt=""/>
									<div class="img-overlay"></div>
								</figure>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="content_wrapper">
									<h3 class="title">
										<a href="event-details.html">Save the clean water</a>
									</h3>
									<p>
										Be tree their face won't appear day to waters moved fourth in they're divide don't a you're were man.
									</p>
									<div class="d-flex count_time" id="clockdiv3">
										<div class="mr-25">
											<h4 class="days">552</h4>
											<p>Days</p>
										</div>
										<div class="mr-25">
											<h4 class="hours">08</h4>
											<p>Hours</p>
										</div>
										<div class="mr-25">
											<h4 class="minutes">45</h4>
											<p>Minutes</p>
										</div>
										<div>
											<h4 class="seconds">30</h4>
											<p>Seconds</p>
										</div>
									</div>
									<a href="#" class="primary_btn">Learn More</a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="single_event">
						<div class="row align-items-center">
							<div class="col-lg-6 col-md-6">
								<figure>
									<img class="img-fluid w-100" src="img/event/e4.jpg" alt=""/>
									<div class="img-overlay"></div>
								</figure>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="content_wrapper">
									<h3 class="title">
										<a href="event-details.html">Foods for poor childreen</a>
									</h3>
									<p>
										Be tree their face won't appear day to waters moved fourth in they're divide don't a you're were man.
									</p>
									<div class="d-flex count_time" id="clockdiv4">
										<div class="mr-25">
											<h4 class="days">552</h4>
											<p>Days</p>
										</div>
										<div class="mr-25">
											<h4 class="hours">08</h4>
											<p>Hours</p>
										</div>
										<div class="mr-25">
											<h4 class="minutes">45</h4>
											<p>Minutes</p>
										</div>
										<div>
											<h4 class="seconds">30</h4>
											<p>Seconds</p>
										</div>
									</div>
									<a href="#" class="primary_btn">Learn More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Recent Event Area =================-->

	<!--================Team Area =================-->
	<section class="team_area section_gap">
		<div class="container">
			<div class="main_title">
				<h2>Meet our voluteer</h2>
				<p>Creepeth called face upon face yielding midst is after moveth </p>
			</div>
			<div class="row team_inner">
				<div class="col-lg-3 col-md-6">
					<div class="team_item">
						<div class="team_img">
							<img class="img-fluid" src="img/voluteer/v1.jpg" alt=""/>
						</div>
						<div class="team_name">
							<h4>Alea Mirslava</h4>
							<p>Party Manager</p>
							<p class="mt-20">
								So seed seed green that winged cattle in kath  moved us land years living.
							</p>
							<div class="social">
								<a href="www.Facebook.com"><i class="fa fa-facebook"></i></a>
								<a href="www.twitter.com" class="active"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-instagram"></i></a>
								<a href="#"><i class="fa fa-envelope-o"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="team_item">
						<div class="team_img">
							<img class="img-fluid" src="img/voluteer/v2.jpg" alt=""/>
						</div>
						<div class="team_name">
							<h4>Adam Virland</h4>
							<p>Party Manager</p>
							<p class="mt-20">
								So seed seed green that winged cattle in kath  moved us land years living.
							</p>
							<div class="social">
								<a href="www.facebook.com"><i class="fa fa-facebook"></i></a>
								<a href="www.twitter.com" class="active"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-instagram"></i></a>
								<a href="#"><i class="fa fa-envelope-o"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="team_item">
						<div class="team_img">
							<img class="img-fluid" src="img/voluteer/v3.jpg" alt=""/>
						</div>
						<div class="team_name">
							<h4>Adam Virland</h4>
							<p>Party Manager</p>
							<p class="mt-20">
								So seed seed green that winged cattle in kath  moved us land years living.
							</p>
							<div class="social">
								<a href="www.facebook.com"><i class="fa fa-facebook"></i></a>
								<a href="www.twitter.com" class="active"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-instagram"></i></a>
								<a href="#"><i class="fa fa-envelope-o"></i></a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="team_item">
						<div class="team_img">
							<img class="img-fluid" src="img/voluteer/v4.jpg" alt=""/>
						</div>
						<div class="team_name">
							<h4>Adam Virland</h4>
							<p>Party Manager</p>
							<p class="mt-20">
								So seed seed green that winged cattle in kath  moved us land years living.
							</p>
							<div class="social">
								<a href="www.facebook.com"><i class="fa fa-facebook"></i></a>
								<a href="www.twitter.com" class="active"><i class="fa fa-twitter"></i></a>
								<a href="#"><i class="fa fa-instagram"></i></a>
								<a href="#"><i class="fa fa-envelope-o"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================End Team Area =================-->

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

	<!--================ Start Story Area =================-->
	<section class="section_gap story_area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-7">
					<div class="main_title">
						<h2>Our latest Story</h2>
						<p>
							Open lesser winged midst wherein may morning
						</p>
					</div>
				</div>
			</div>
			<div class="row">
				<!-- single-story -->
				<div class="col-lg-4 col-md-6">
					<div class="single-story">
						<div class="story-thumb">
							<img class="img-fluid" src="img/story/s1.jpg" alt=""/>
						</div>
						<div class="story-details">
							<div class="story-meta">
								<a href="#">
									<span class="lnr lnr-calendar-full"></span>
									20th Sep, 2018
								</a>
								<a href="#">
									<span class="lnr lnr-book"></span>
									Company
								</a>
							</div>
							<h5>
								<a href="#">
									Lime recalls electric scooters over 
									battery fire.
								</a>
							</h5>
						</div>
					</div>
				</div>

				<!-- single-story -->
				<div class="col-lg-4 col-md-6">
					<div class="single-story">
						<div class="story-thumb">
							<img class="img-fluid" src="img/story/s2.jpg" alt=""/>
						</div>
						<div class="story-details">
							<div class="story-meta">
								<a href="#">
									<span class="lnr lnr-calendar-full"></span>
									20th Sep, 2018
								</a>
								<a href="#">
									<span class="lnr lnr-book"></span>
									Company
								</a>
							</div>
							<h5>
								<a href="#">
									Apple resorts to promo deals 
									trade to boost 
								</a>
							</h5>
						</div>
					</div>
				</div>

				<!-- single-story -->
				<div class="col-lg-4 col-md-6">
					<div class="single-story">
						<div class="story-thumb">
							<img class="img-fluid" src="img/story/s3.jpg" alt=""/>
						</div>
						<div class="story-details">
							<div class="story-meta">
								<a href="#">
									<span class="lnr lnr-calendar-full"></span>
									20th Sep, 2018
								</a>
								<a href="#">
									<span class="lnr lnr-book"></span>
									Company
								</a>
							</div>
							<h5>
								<a href="#">
									Lime recalls electric scooters over 
									battery fire.
								</a>
							</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--================ End Story Area =================-->

	<!--================ Start Subscribe Area =================-->
	<div class="container">
		<div class="subscribe_area">
			<div class="row">
				<div class="col-lg-12">
					<div class="d-flex align-items-center">
						<h1 class="text-white">Do you have a question?</h1>
						<div id="mc_embed_signup">
							<form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get" class="subscribe_form relative">
								<div class="input-group d-flex flex-row">
									<input name="EMAIL" placeholder="Your email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Email Address '" required="" type="email"/>
									<button class="ml-10 primary_btn yellow_btn btn sub-btn rounded">SUBSCRIBE</button>		
								</div>									
								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--================ End Subscribe Area =================-->
        
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
							<h4 class="footer_title">Gallery</h4>
							<ul class="list instafeed d-flex flex-wrap">
								<li><img src="img/gallery/g1.jpg" alt=""/></li>
								<li><img src="img/gallery/g2.jpg" alt=""/></li>
								<li><img src="img/gallery/g3.jpg" alt=""/></li>
								<li><img src="img/gallery/g4.jpg" alt=""/></li>
								<li><img src="img/gallery/g5.jpg" alt=""/></li>
								<li><img src="img/gallery/g6.jpg" alt=""/></li>
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
									+123 456 7890 <br/>
									+123 456 7890
								</p>
	
								<p class="sm-head">
									<span class="fa fa-envelope"></span>
									Email
								</p>
								<p>
									free@infoexample.com <br/>
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
	<script src="js/countdown.js"></script>
	<!--gmaps Js-->
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
	<script src="js/gmaps.min.js"></script>
	<script src="js/theme.js"></script>
</body>
</html>
