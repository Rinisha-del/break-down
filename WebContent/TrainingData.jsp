<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="utility.*"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>LOADED DATA</title>
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
   <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/ProgressBar1.css">
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
	height:120px;
	}
	
	#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width:100%;
  margin-top:0px;
  font-color:white;
}
#customers td, #customers th {
  border: 1px solid #282828 ;
  padding: 5px;
}

#customers tr:nth-child(even){background-color:  #f2f2f2 ;}
#customers tr:nth-child(odd){background-color:  #f2f2f2 ;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 10px;
  padding-bottom: 10px;
  text-align: left;
  background-color: /* #045766 */ #0093d0;
}
/* #customers thead tr {
   display: block;
} */

    </style>
    
    <script>
	  
    function move() {
    	  var elem = document.getElementById("myBar");   
    	  var width = 0;
    	  var id = setInterval(frame, 100);
    	  var count = document.getElementById("cou"); 
    	  function frame() {
    	    if (width >= 100) {
    	      clearInterval(id);
    	      document.getElementById("myP").className = "w3-text-white w3-animate-opacity";
    	      document.getElementById("myP").innerHTML = "Successfully Pre-Processed!";
    	      window.location.href="TrainingData2.jsp"; 
    	    } else {
    	      width++; 
    	      elem.style.width = width + '%'; 
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
			<c:if test="${param.st eq 'lod'}">
			<p class="info">&nbsp;&nbsp;<img src="images/info.png" width="30" height="30">&nbsp;&nbsp;Dataset Loaded Successfully !</p>						
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
	
	
	
	<div class="w3-container">
<center> <button class="w3-button w3-light-blue" onclick="move();this.disabled='true'">Pre-Process Data</button> </center>
<br>
  <div class="w3-light-grey w3-round-xlarge">
    <div id="myBar" class="w3-container w3-blue w3-round-xlarge" style="height:24px;width:0%">
    </div>
  </div>
<%
Statement st1 = null;
	ResultSet rs1 = null;
try {
		Connection con = DB.getconnection();
		st1 = con.createStatement();
		String qry ="SELECT COUNT(*) FROM trained"; 
		rs1 = st1.executeQuery(qry);
		int k=1;
		while (rs1.next()) {
			int c = rs1.getInt(1);
%>
	<input type="hidden" value="<%=rs1.getInt(1)%>" id="cou">
  <p id="myP" style="color:white;">Processing <span id="demo">0</span> of <%out.print(c); %> Records</p>

 <%
}

}
catch(Exception ex){out.println(ex);}
 
 %>
  
</div>

     <!-- <a href="TrainingData2.jsp">Pre-Process data</a> -->        

		<center> 
		<!-- <div style="overflow-x:auto;"> -->
		
		<div style="height:400px;overflow:auto;">
			<table id="customers">
       <thead>  
          <tr> 
             <th>S.NO</th>
            <th>REPORT YEAR</th>
            <th>REPORT NUMBER</th>
            <th>SUPPLEMENTAL NUMBER</th>
            <th>FILING_DATE</th>
            <th>OPERATOR_NAME</th>
          	<th>FAILURE DATE</th>
          	<th>HOURS SINCE PRE FAIL</th>
          	<th>MF_TYPE_TEXT</th>
          	<th>LEAK_LOCATION_A_TEXT</th>
          	<th>LEAK_LOCATION_B_TEXT</th>
          	<th>LEAK_LOCATION_C_TEXT</th>
          	<th>YEAR INSTALLED</th>
          	<th>YEAR MANUFACTURED</th>
          	<th>MANUFACTURER</th>
          	<th>FITTING MATERIAL</th>
          	<th>LEAK CAUSE</th>
          	<th>MFF</th>
          	<th>TEMPERATURE</th>
          	<th>HUMIDITY</th>
          	
          </tr>
          </thead>
        
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
             		String qry ="SELECT * FROM trained"; 
             		rs = st.executeQuery(qry);
             		int k=1;
             		while (rs.next()) {
             			
             %>
	  <tbody>
	     <tr> 
	        <td><% out.print(k); %></td>
            <td> <%=rs.getString("reportyear")%> </td>
            <td> <%=rs.getString("report_number")%></td>
         	<td><%=rs.getString("sup_number") %></td>
         	<td><%=rs.getString("filing_date") %></td>
         	<td><%=rs.getString("operator") %></td>
         	<td><%=rs.getString("fail_date") %></td>
         	<td><%=rs.getString("hours") %></td>
         	<td><%=rs.getString("mf_type") %></td>
         	<td><%=rs.getString("leak_a") %></td>
         	<td><%=rs.getString("leak_b") %></td>
         	<td><%=rs.getString("leak_c") %></td>
         	<td><%=rs.getString("year_i") %></td>
         	<td><%=rs.getString("year_m") %></td>
         	<td><%=rs.getString("manufacturer") %></td>
         	<td><%=rs.getString("fitting_material") %></td>
         	<td><%=rs.getString("leak_cause") %></td>
         	<td><%=rs.getString("mff") %></td>
         	<td><%=rs.getString("temp") %></td>
         	<td><%=rs.getString("humidity") %></td>
          </tr>
	  
		
	<%	
	k++;
	}
	
}
catch(Exception ex){out.println(ex);}


%>
       </tbody>
          </table>     

        </center></div>
   
       
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