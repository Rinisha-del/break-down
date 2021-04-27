<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="utility.*"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>New Failure</title>
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
    	<!-- Meta tag Keywords -->
	<!-- css files -->
	<link rel="stylesheet" href="css/css1/style.css" type="text/css" media="all" />
	<!-- Style-CSS -->
	<!-- //css files -->
	<!-- web-fonts -->
	<link href="//fonts.googleapis.com/css?family=Londrina+Outline" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
	<!-- //web-fonts -->
    <style type="text/css">
    .hei{
	 height:auto;
	 background-image: url("images/back1.jpeg");
	 background-repeat: no-repeat; 
	 background-attachment: fixed;
	 background-position: center; 
	 background-size: 100% ;
	}
	.hei2{
	height:100px;
	}
    </style>
</head>

<body>
    <!-- banner -->
    <div id="home">
        <!-- header -->
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-gradient-secondary">
                <h1>
                    <a class="navbar-brand text-white" href="index.jsp">
                        LEARNING
                    </a>
                </h1>
                <button class="navbar-toggler ml-md-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-lg-auto text-center">
                       <jsp:include page="WEB-INF/include/Menu.jsp"></jsp:include>	
                     </ul>
                </div>

            </nav>
        </header>
        <!-- //header -->
        <div class="hei"><div class="hei2"></div>
        
        <!-- header -->
	<h1>
		<span>U</span>pload
		<span>N</span>ew status</h1>
	<!-- //header -->
	<!-- content -->
	<div class="main-content-agile">
		<div class="sub-main-w3">
			<form action="NewDataUpload" method="post">
				
				<div class="form-style-agile">
					<label>Operator Name</label>
					<input placeholder="Operator Name" name="oname" type="text" required="">
				</div>
			
				<div class="w3layouts-grids">
					<div class="form-style-agile form-grids-w3l">
						<label>Report Number</label>
						<input placeholder="" name="rnum" type="text" required="" value=<%= (int) (Math.random() * 100000) %>>
					</div>
					<div class="form-style-agile form-grids-w3l">
						<label>Supplementary Number</label>
						<input placeholder="" name="snum" type="text" required="" value=<%= (int) (Math.random() * 6534640) %>>
					</div>
				</div>
			
				<div class="w3layouts-grids">
					<div class="form-style-agile form-grids-w3l">
						<label>Fault Occured Date</label>
						<input placeholder="" name="fadate" type="date" required="">
					</div>
					<div class="form-style-agile form-grids-w3l">
						<label>Report Filing Date</label>
						<input placeholder="" name="redate" type="date" required="">
					</div>
				</div>
			
				<div class="w3layouts-grids">
					<div class="form-style-agile form-grids-w3l">
						<label>Leak Location A</label>
						<select class="category" required="" name="leak1">
							<option value="">Select Location</option>	
							<option value="BELOWGROUND">BELOW</option>
							<option value="ABOVEGROUND">ABOVE</option>
						</select>
					</div>
					<div class="form-style-agile form-grids-w3l">
						<label>Leak Location B</label>
						<select class="category" required="" name="leak2">
							<option value="">Select Location</option>
							<option value="OUTSIDE">OUTSIDE</option>
							<option value="INSIDE">INSIDE</option>
						</select>
					</div>
				</div>
			
			
			<div class="w3layouts-grids">
					<div class="form-style-agile form-grids-w3l">
						<label>Leak Location C</label>
						<select class="category" required="" name="leak3">
							<option value="">Select Location</option>
							<option value="MAIN-TO-MAIN">MAIN-TO-MAIN</option>
							<option value="MAIN-TO-SERVICE">MAIN-TO-SERVICE</option>
							<option value="SERVICE-TO-MAIN">SERVICE-TO-MAIN</option>
							<option value="SERVICE-TO-SERVICE">SERVICE-TO-SERVICE</option>
							<option value="METERSET">METERSET</option>
						</select>
					</div>
					<div class="form-style-agile form-grids-w3l">
						<label>FITTING MATERIAL</label>
						<select class="category" required="" name="fitting">
							<option value="">Select Material type</option>
							<option value="BRASS">BRASS</option>
							<option value="PLASTIC">PLASTIC</option>
							<option value="STEEL">STEEL</option>
							<option value="COMBINATION OF PLASTIC AND STEEL">COMBINATION OF PLASTIC AND STEEL</option>
							<option value="OTHER">OTHER</option>
						</select>
					</div>
				</div>
			
							
			 	<div class="form-style-agile">
					<label>FITTING TYPE</label>
					<select class="category" required="" name="mf">
						<option value="">Select Location</option>
						<option value="ADAPTER">ADAPTER</option>
						<option value="COUPLING">COUPLING</option>
						<option value="VALVE">VALVE</option>
					</select>
				</div>
				
				<div class="form-style-agile">
					<label>Leak Cause</label>
					<input placeholder="Leak Cause" name="cause" type="text" required="">
				</div>
				
				<div class="w3layouts-grids">
					<div class="form-style-agile form-grids-w3l">
						<label>Temperature</label>
						<input placeholder="" name="temp" type="text" required="">
					</div>
					<div class="form-style-agile form-grids-w3l">
						<label>Humidity</label>
						<input placeholder="" name="humi" type="text" required="">
					</div>
				</div>
				 
				<div class="form-style-agile">
					<label>MFF Number</label>
					<input placeholder="MFF Number" name="mff" type="text" required="" value=<%= (int) (Math.random() * 800000) %>>
				</div>
				<!-- <div class="form-style-agile">
					<label>Any other important Info</label>
					<textarea name="Message" placeholder="Your Statement of failure" required=""></textarea>
				</div> -->
				<input type="submit" value="Submit">
			</form>
		</div>
	</div>
	<!-- content -->
        
        
        </div>
      	    <div class="cpy-right">
        <p>                             
    	     <jsp:include page="WEB-INF/include/Footer.jsp"></jsp:include>	
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
    	<!-- js -->
	<script src="js/js1/jquery-2.1.4.min.js"></script>

	<!-- date-->
	<link rel="stylesheet" href="css/jquery-ui.css" />
	<script src="js/js1/jquery-ui.js"></script>
	<script>
		$(function () {
			$("#datepicker,#datepicker1").datepicker();
		});
	</script>
	<!-- //date --> 

	<!-- time -->
	<script src="js/js1/wickedpicker.js"></script>
	<script>
		$('.timepicker').wickedpicker({
			twentyFour: false
		});
	</script>
	<link href="css/css1/wickedpicker.css" rel="stylesheet" type='text/css' media="all" />
	<!-- //time -->
</body>

</html>