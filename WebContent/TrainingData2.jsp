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
    <link href="css/fontawesome-all.min.css" rel="stylesheet">
    <!-- //Custom Theme files -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/ProgressBar1.css">
    <!-- online-fonts -->
    <link href="//fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- //online-fonts -->
    <style type="text/css">
    .hei{
	 height:auto;
	 background-image: url("images/back2.jpeg");
	 background-repeat: no-repeat; 
	 background-attachment: fixed;
	 background-position: center; 
	 background-size: 100% ;
	}
	.hei2{
	height:200px;
	}
	
	input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 3px solid blue;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
}

input[type=text]:focus {
  border: 3px solid #555;
}
    </style>
    <script>
	  
    function move() {
    	  var elem = document.getElementById("myBar");   
    	  var width = 0;
    	  var id = setInterval(frame, 1200);
    	  var count = document.getElementById("cou"); 
    	  function frame() {
    	    if (width >= 7) {
    	      clearInterval(id);
    	      document.getElementById("myP").className = "w3-text-white w3-animate-opacity";
    	      document.getElementById("myP").innerHTML = "Successfully Applied Sampling!";
    	      document.getElementById("mf").submit(); 
    	    } else {
    	      width++; 
    	      elem.style.width = width + '9%'; 
    	      var num = width;
    	      num = num.toFixed(0)
    	      document.getElementById("demo").innerHTML = num;
    	      return false;
    	    }
    	  }
    	}
</script>
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
       
       
         <form action="OverSampling" method="post" id="mf">
         <%
            // Integer oid = (Integer)session.getAttribute("uid");
             	Statement st = null;
             	ResultSet rs = null;
             	int part = 0;
             	String part1 = null;
             	String id1 = null;
             	try {
             		Connection con = DB.getconnection();
             		st = con.createStatement();
             		String qry ="SELECT leak_cause, COUNT(*) FROM trained GROUP BY leak_cause HAVING COUNT(*) > 1;"; 
             		rs = st.executeQuery(qry);
             		int k=1;
             		%>
             		
             		<center>
             		<table>
             			<tr>
             			<td><h3 style="color:white;">FAILURE CATEGORY</h3></td>
             			&nbsp;&nbsp;&nbsp;<td><h3 style="color:white;">NO OF RECORDS</h3></td>
             			</tr>
             	
             		<%
             	
             		while (rs.next()) {
               			String cause = rs.getString(1);
             			int cause_count = rs.getInt(2);
             			
             			%>
             			<tr>
             			<td><input type="text" value="<%=cause%>"></td>
             			&nbsp;&nbsp;&nbsp;<td><input type="text" value="<%=cause_count%>"></td>
             			</tr>
             			<%
                      		
					}
	
             		%>
             		</table></center>
             		<%
}
catch(Exception ex){out.println(ex);}


%>
        </form>
        	<div class="w3-container">
<center> <button class="w3-button w3-light-blue" onclick="move();this.disabled='true'">Apply OverSampling</button> 
			<button class="w3-button w3-light-blue" onclick="location.href = 'TrainVideo.jsp';">Load Solutions Data</button>
</center>
		
<br>
  <div class="w3-light-grey w3-round-xlarge">
    <div id="myBar" class="w3-container w3-blue w3-round-xlarge" style="height:24px;width:0%">
    </div>
  </div>
  <p id="myP" style="color:white;">Applying OverSampling to <span id="demo">0</span> of 7 Causes</p>
  
</div>
        	
      
       		<%-- 	<center><input type="submit" value="APPLY SAMPLING"></center> 	
        	</form> --%>
        
        
        
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