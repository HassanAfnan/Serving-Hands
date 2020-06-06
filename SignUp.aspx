  <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Serving_Hands.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <link rel="icon" href="img/favicon.png" type="image/png"/>
        <title>User Signup Form</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.css"/>
        <link rel="stylesheet" href="vendors/linericon/style.css"/>
        <link rel="stylesheet" href="css/font-awesome.min.css"/>
        <link rel="stylesheet" href="vendors/lightbox/simpleLightbox.css"/>
        <link rel="stylesheet" href="vendors/nice-select/css/nice-select.css"/>
        <!-- main css -->
        <link rel="stylesheet" href="css/style.css"/>
        <link rel="stylesheet" href="css/responsive.css"/>
        <link rel="stylesheet" type="text/css" href="css/custom.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <!--<div>
            Name :<br />
            Email:<br />
         Password:<br />
           Gender:<br />
          Contact:<br />
          Address:<br />
             date:<br />
            <!--<asp:Button ID="Button2" runat="server" Text="SignupUser" onclick="Button2_Click"/>
            
        </div>-->
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
                                <li class="nav-item "><a class="nav-link" href="about-us.aspx">About</a></li> 
                                <li class="nav-item"><a class="nav-link" href="causes.aspx">Causes</a>
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
                               <!-- <li class="nav-item"><a class="nav-link" href="login.html">Login</a></li>
                                <li class="nav-item active submenu dropdown">
                                    <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Sign Up</a>
                                    <ul class="dropdown-menu">
                                        <li class="nav-item"><a class="nav-link" href="adminSignup.html">Signup as admin</a>
                                        <li class="nav-item"><a class="nav-link" href="userSignup.html">Signup as user</a>
                                    </ul>
                                </li>--> 

                            </ul>
                        </div> 
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <!--================ End Header Menu Area =================-->
        
    <!--================ Home Banner Area =================-->

        <div class="container-fluid bg">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs=12"></div>
                <div class="col-md-4 col-sm-4 col-xs-12">
                    <!-- form start  -->
                    <form class="form-container">
                        
                           <h2 style="color: rgb(96,188,15); padding-top: 100px">Signup as User</h2>
                           <div class="form-group">
                               <label class="exampleInputText">Username</label>
                               <!--<input type="text" name="adminUserName" class="form-control">-->
                               <asp:TextBox ID="TextBox1" runat="server" name="adminUserName" class="form-control"></asp:TextBox>
                           </div>
                      <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <!--<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">-->
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control" aria-describedby="emailHelp"></asp:TextBox>
                      </div>
                      <div class="form-group">
                        <label for="exampleInputPassword1">Password</label>
                        <!--<input type="password" class="form-control" id="exampleInputPassword1">-->
                         <asp:TextBox ID="TextBox3" runat="server" class="form-control"></asp:TextBox>
                      </div>
                         <div class="form-group">
                           <label>Gender </label> 
                          <!-- <input type="text" name="gender" class="form-control">-->
                           <asp:TextBox ID="TextBox4" runat="server" name="gender" class="form-control"></asp:TextBox>        
                      </div> 

                      <div class="form-group">
                          <label>Date of Birth</label>
                          <!--<input type="date" name="dob" class="form-control text">-->
                          <asp:TextBox ID="TextBox7" runat="server" name="dob" class="form-control text"></asp:TextBox>
                      </div>
                      <div class="form-group">
                          <label>Contact Number</label>
                      <!--    <input type="text" name="mobileNo" class="form-control text">-->
                      <asp:TextBox ID="TextBox5" runat="server" name="mobileNo" class="form-control text"></asp:TextBox>
                      </div>
                      <div class="form-group">
                          <label>Home Address</label>
                          <!--<textarea class="form-control" rows="4" ></textarea>-->
                           <asp:TextBox ID="TextBox6" runat="server" class="form-control"></asp:TextBox>
                      </div>
                        <asp:Button ID="Button3" runat="server" Text="SignupUser" class="btn btn-success btn-block btn-css" onclick="Button3_Click"/>
                      <!--<button type="submit" class="btn btn-success btn-block btn-css">SUBMIT</button>-->
                    </form>
                                        
                </div>
            
        </div>
    </div>


    <!--================ End Home Banner Area =================-->

    <!--================ Start About Us Area =================-->
    <section class="about_area section_gap">
        <div class="container">
            <div class="row">   
                <div class="single_about row">
                    <div class="col-lg-6 col-md-12 text-center about_left">
                        <div class="about_thumb">
                            <img src="img/about-img.jpg" class="img-fluid" alt="">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-12 about_right">
                        <div class="about_content">
                            <h2>
                                We are nonprofit team <br>
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
                            <img class="img-fluid" src="img/voluteer/v1.jpg" alt="">
                        </div>
                        <div class="team_name">
                            <h4>Alea Mirslava</h4>
                            <p>Party Manager</p>
                            <p class="mt-20">
                                So seed seed green that winged cattle in kath  moved us land years living.
                            </p>
                            <div class="social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="active"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-envelope-o"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="team_item">
                        <div class="team_img">
                            <img class="img-fluid" src="img/voluteer/v2.jpg" alt="">
                        </div>
                        <div class="team_name">
                            <h4>Adam Virland</h4>
                            <p>Party Manager</p>
                            <p class="mt-20">
                                So seed seed green that winged cattle in kath  moved us land years living.
                            </p>
                            <div class="social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="active"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-envelope-o"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="team_item">
                        <div class="team_img">
                            <img class="img-fluid" src="img/voluteer/v3.jpg" alt="">
                        </div>
                        <div class="team_name">
                            <h4>Adam Virland</h4>
                            <p>Party Manager</p>
                            <p class="mt-20">
                                So seed seed green that winged cattle in kath  moved us land years living.
                            </p>
                            <div class="social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="active"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-instagram"></i></a>
                                <a href="#"><i class="fa fa-envelope-o"></i></a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="team_item">
                        <div class="team_img">
                            <img class="img-fluid" src="img/voluteer/v4.jpg" alt="">
                        </div>
                        <div class="team_name">
                            <h4>Adam Virland</h4>
                            <p>Party Manager</p>
                            <p class="mt-20">
                                So seed seed green that winged cattle in kath  moved us land years living.
                            </p>
                            <div class="social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#" class="active"><i class="fa fa-twitter"></i></a>
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
                    <a href="#" class="primary_btn yellow_btn rounded">join with us</a>
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
                                <li><a href="#">Home</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Causes</a></li>
                                <li><a href="#">Event</a></li>
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
        <!-- contact js -->
        <script src="js/jquery.form.js"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="js/contact.js"></script>
        <!--gmaps Js-->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCjCGmQ0Uq4exrzdcL6rvxywDDOvfAu6eE"></script>
        <script src="js/gmaps.min.js"></script>
        <script src="js/theme.js"></script>
    </form>
</body>
</html>
