<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>HOME PAGE</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="keywords" content="Insurance Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- Custom Theme files -->
    <link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
    <link href="css/style.css" type="text/css" rel="stylesheet" media="all">
    <!-- how it works -->
    <link href="css/timeline.css" type="text/css" rel="stylesheet" media="all">
    <!-- grid hover -->
    <link href="css/hover.css" type="text/css" rel="stylesheet" media="all">
    <!-- font-awesome icons -->
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- //online-fonts -->
</head>

<body>
					<c:if test="${param.st eq 'reg'}">
						<p class="info">&nbsp;&nbsp;<img src="images/info.png" width="30" height="30">&nbsp;&nbsp;Operator Registered Successfully !</p>
						</c:if>
    <!-- banner -->
    <div class="banner" id="home">
        <!-- header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary">
                <h1>
                    <a class="navbar-brand text-white" href="index.html">
                        LEARNING
                    </a>
                </h1>
                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-lg-auto text-center">
                        <li class="nav-item active  mr-lg-3 mt-lg-0 mt-3">
                            <a class="nav-link" href="index.html">Home
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item  mr-lg-3 mt-lg-0 mt-3">
                            <a class="nav-link scroll" href="#about">about</a>
                        </li>
                        <li class="nav-item dropdown mr-lg-3 mt-lg-0 mt-3">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                                aria-haspopup="true" aria-expanded="false">
                                SignIn / SignUp
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                 <a class="dropdown-item" href="SignInA.jsp">Admin</a>
                               		 <div class="dropdown-divider"></div>
                                 <a class="dropdown-item" href="SignIn.jsp">Operator</a>
                               
                            </div>
                        </li>
                    
                        <li>
                            <button type="button" class="btn  ml-lg-2 w3ls-btn" data-toggle="modal" aria-pressed="false"
                                data-target="#exampleModal">
                                <i class="far fa-user-circle"></i>
                            </button>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
        <!-- //header -->
        <div class="container">
            <div class="banner-text">
                <div class="slider-info">
                    <h3>Industrial Pipelines Breakdown Prediction</h3>
                    <p class="text-white mt-sm-4 mt-2"><!-- Rutrum congue donec leo eget malesuada ras ultricies ligula sed magna
                        dictum porta. --></p>
                    <a class="btn btn-primary mt-4 agile-link-bnr scroll" href="#about" role="button">View More</a>
                </div>
            </div>
        </div>
    </div>
    <!-- //banner -->
    <!-- about -->
    <div class="about-w3sec py-sm-5" id="about">
        <div class="container py-5">
            <div class="title-section pb-4">
                <h3 class="main-title-agile">About the Project</h3>
                <span class="title-line">
                </span>
            </div>
             <div class="ins-sec1">
                <div class="row">
                        <p>We proposed a model which handles the imbalanced data and to predict the fault occurrences and their solution to rectify the fault as well as updating the new pipeline failure data in the model. In the industry fault rectification requires much amount of time and effort, finding the error is also a tedious process. This will reduce the cost and time efficiency in the oil and gas production industries.</p>
                    </div>
				</div>
            <!--        <div class="col-lg-4 mt-lg-0 mt-md-5">
                        <div class="abt-block mt-md-0 mt-5">
                            <div class="serv_abs serv_bottom">
                                <i class="fas fa-plane"></i>
                            </div>
                            <h3>travel insurance</h3>
                            <p>Cras ultricies congue rutrum congue leo eget malesuada. Ligula sed magna dictum porta.</p>
                        </div>
                    </div>
                </div>
                <div class="row mt-lg-5">
                    <div class="col-lg-8 mx-auto mt-5">
                        <div class="row">
                            <div class="col-lg-6 my-lg-0 my-md-5">
                                <div class="abt-block">
                                    <div class="serv_abs  serv_bottom">
                                        <i class="fas fa-hand-holding-heart"></i>
                                    </div>
                                    <h3>health insurance</h3>
                                    <p>Donec rutrum congue leo eget malesuada. Cras ultricies ligula sed magna dictum
                                        porta.
                                    </p>
                                </div>
                            </div>
                            <div class="col-lg-6 mt-lg-0 mt-5">
                                <div class="abt-block">
                                    <div class="serv_abs  serv_bottom">
                                        <i class="fas fa-hand-holding-usd"></i>
                                    </div>
                                    <h3>Property Insurance</h3>
                                    <p>Rutrum congue donec leo eget malesuada. Cras ultricies ligula sed magna dictum
                                        porta.
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
 -->
         </div>
    </div>
    <!-- //about -->
       	    <div class="cpy-right">
        <p>© 2020 All rights reserved <!-- | Design by
            <a href="http://w3layouts.com"> W3layouts.</a> -->
        </p>
    </div>
    <!-- js -->
    <script src="js/jquery-2.2.3.min.js"></script>
    <!-- //js -->
    <!-- script for password match -->
    <script>
        window.onload = function () {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!-- script for password match -->
    <!-- testimonials  Responsiveslides -->
    <script src="js/responsiveslides.min.js"></script>
    <script>
        // You can also use"$(window).load(function() {"
        $(function () {
            // Slideshow 4
            $("#slider3").responsiveSlides({
                auto: true,
                pager: true,
                nav: false,
                speed: 500,
                namespace: "callbacks",
                before: function () {
                    $('.events').append("<li>before event fired.</li>");
                },
                after: function () {
                    $('.events').append("<li>after event fired.</li>");
                }
            });

        });
    </script>
    <!-- //testimonials  Responsiveslides -->
    <!-- start-smooth-scrolling -->
    <script src="js/move-top.js"></script>
    <script src="js/easing.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();

                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
    <!-- smooth-scrolling-of-move-up -->
    <script>
        $(document).ready(function () {
            /*
            var defaults = {
                containerID: 'toTop', // fading element id
                containerHoverID: 'toTopHover', // fading element hover id
                scrollSpeed: 1200,
                easingType: 'linear' 
            };
            */
            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <script src="js/SmoothScroll.min.js"></script>
    <!-- //smooth-scrolling-of-move-up -->
    <script src="js/counter.js"></script>
    <!-- //stats -->
    <!-- Bootstrap core JavaScript
================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>

</html>