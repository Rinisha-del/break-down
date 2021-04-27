<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="utility.*"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Template</title>
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
    	<link rel="stylesheet" href="css/css1/style.css" type="text/css" media="all" />
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- //online-fonts -->
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
	height:200px;
	}
    </style>
</head>

<body>
		<c:if test="${param.st eq 'suc'}">
			<p class="info">&nbsp;&nbsp;<img src="images/info.png" width="30" height="30">&nbsp;&nbsp;Solutions data Updated</p>
		</c:if>

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
		<span>T</span>rain 
		<span>V</span>ideo Data</h1>
	<!-- //header -->
	<!-- content -->
	<div class="main-content-agile">
		<div class="sub-main-w3">
			<form action="Videotrain" method="post" enctype="multipart/form-data">
			 	<div class="form-style-agile form-grids-w3l">
					<label>ID</label>
					<input placeholder="" name="vid" type="text" required="" value=<%= (int) (Math.random() * 1000000) %>>
				</div>
				
				<div class="form-style-agile">				
						<label>CAUSES TYPES</label>
						<input type="text" list="cars" name="cause"/>
						<datalist class="category" required="" id="cars">
							<option value="">Select Cause</option>
							<option value="CORROSION">CORROSION</option>
							<option value="EQUIPMENT">EQUIPMENT</option>
							<option value="INCORRECT OPERATION">INCORRECT OPERATION</option>
							<option value="MATERIAL/WELD/EQUIP FAILURE">MATERIAL/WELD/EQUIP FAILURE</option>
							<option value="NATURAL FORCE DAMAGE">NATURAL FORCE DAMAGE</option>
							<option value="OTHER OUTSIDE FORCE DAMAGE">OTHER OUTSIDE FORCE DAMAGE</option>
							<option value="EXCAVATION DAMAGE">EXCAVATION DAMAGE</option>
						</datalist>
					</div>
			 
				<div class="w3layouts-grids">
					<div class="form-style-agile form-grids-w3l">
						<label>Video</label>
						<input placeholder="Your Email" name="video" type="file" required="">
					</div>
					<div class="form-style-agile form-grids-w3l">
						<label>Text File</label>
						<input placeholder="Contact Number" name="textdata" type="file" required="">
					</div>
				</div>    
				
				<div class="form-style-agile">
				<br>
					<label>Any other important Info</label>
					<textarea name="msg" placeholder="Your Additional Details..." ></textarea>
				</div>
				
				
				 
				<input type="submit" value="UPLOAD">
			</form>
		</div>
	</div>
	<!-- content -->
        
      
        
        
        
        </div>
      	    <div class="cpy-right">
        <p>                              <jsp:include page="WEB-INF/include/Footer.jsp"></jsp:include>	

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